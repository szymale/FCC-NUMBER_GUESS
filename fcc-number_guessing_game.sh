#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

START() {
  #get username
  echo -e "Enter your username: "
  read USERNAME
  
  #get username from db
  USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'")  
  #if user present
  if [[ $USER_ID ]]; then
    #get games played
    GAMES_PLAYED=$($PSQL "select count(user_id) from game_history where user_id = '$USER_ID'")

    #get best game (guess)
    BEST_GUESS=$($PSQL "select min(guesses) from game_history where user_id = '$USER_ID'")

    echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses. "
  else
    #if u_name not present in db
    echo -e "Welcome, $USERNAME! It looks like this is your first time here."

    #insert to users table
    INSERTED_TO_USERS=$($PSQL "insert into users(username) values('$USERNAME')")
    #get user_id
    USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'")
  fi
  #Your script should randomly generate a number that users have to guess
  SECRET=$(( RANDOM % 1000 + 1 ))

#count guesses
  TRIES=0
  #guess number
  GUESSED=0
  echo -e "Guess the secret number between 1 and 1000:"

  while [[ $GUESSED = 0 ]]; do
    read GUESS

    #if not a number
    if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
      echo 'That is not an integer, guess again:'
    #if correct guess
    elif [[ $SECRET = $GUESS ]]; then
      TRIES=$(($TRIES + 1))
      echo -e "You guessed it in $TRIES tries. The secret number was $SECRET. Nice job! "
      #insert into db
      INSERTED_TO_GAMES=$($PSQL "insert into game_history(user_id, guesses) values($USER_ID, $TRIES)")
      GUESSED=1
    #if greater
    elif [[ $SECRET -gt $GUESS ]]; then
      TRIES=$(($TRIES + 1))
      echo -e "It's higher than that, guess again: "
    #if smaller
    else
      TRIES=$(($TRIES + 1))
      echo -e "It's lower than that, guess again: "
    fi
  done
}

START

