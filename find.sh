#!/bin/bash
#echo "enter the movie name: "
read -p "Enter the movie name:" movie
#APIURL="http://www.omdbapi.com/?t=$movie&apikey=bc2a4edf"
APIURL="http://www.omdbapi.com/?apikey=bc2a4edf&t=$movie"
#echo $APIURL
data=`curl -s $APIURL`
name=`echo $data | jq .Title`
#year=`echo $data | jq .Year`
ratings=`echo $data | jq .Ratings[1].Value`
echo "Movie Name = $name"
#echo "Year = $year"
echo "Rotton tomatoes = $ratings"
