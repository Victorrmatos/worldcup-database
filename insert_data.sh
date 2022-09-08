#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    # get team_id
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    # if not found
    if [[ -z $TEAM_ID ]]
    then
      # insert winner team
      INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $WINNER
      fi

      # get new team_id
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi
   # get team_id
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # if not found
    if [[ -z $TEAM_ID ]]
    then
      # insert OPPONENT team
      INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $OPPONENT
      fi

      # get new team_id
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")  
    fi
  # get game_id
    GAME_ID=$($PSQL "SELECT game_id FROM games WHERE year='$YEAR' and round='$ROUND' and winner_id=$($PSQL "select team_id from teams where name = '$WINNER'") and opponent_id=$($PSQL "select team_id from teams where name = '$OPPONENT'") and winner_goals='$WINNER_GOALS' and opponent_goals='$OPPONENT_GOALS'")

    # if not found
    if [[ -z $GAME_ID ]]
    then
      # insert game_id
      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$YEAR', '$ROUND', $($PSQL "select team_id from teams where name = '$WINNER'"), $($PSQL "select team_id from teams where name = '$OPPONENT'"), '$WINNER_GOALS', '$OPPONENT_GOALS')")
      if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into games, $YEAR $ROUND
      fi

      # get new team_id
      GAME_ID=$($PSQL "SELECT game_id FROM games WHERE year='$YEAR' and round='$ROUND' and winner_goals='$WINNER_GOALS' and opponent_goals='$OPPONENT_GOALS'")
    fi
  fi
done
