#!/bin/bash
#echo "enter the movie name: "
read -p "Enter the movie name:" movie
#APIURL="http://www.omdbapi.com/?t=$movie&apikey=9fc0e77e"
APIURL="http://www.omdbapi.com/?apikey=9fc0e77e&t=$movie"
#echo $APIURL
data=`curl -s $APIURL`
name=`echo $data | jq .Title`
#year=`echo $data | jq .Year`
ratings=`echo $data | jq .Ratings[1].Value`
echo "Movie Name = $name"
#echo "Year = $year"
echo "Rotton tomatoes = $ratings"
