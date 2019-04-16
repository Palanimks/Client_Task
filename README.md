# Client_Task

Linux
-----
Have to keep below 3 files in the same work directory
1.Dockerfile
2.test.sh
3.palani.sh

Shell Script - palani.sh
--------------------------

->first passing the movie name and it will get read
->passing movie name assign to variable and it will search in the APIURL
->by using jq we will filterized the Title and Ratings value

Docker
-------

->install wget curl vim git jq 

test.sh
--------
->it will build the image in the name of palani
->by using the sed command will divide the image id and it will get print
->by using the image will create the container
->while launching the container automatically it will run the shell script of palani.sh
->enter the movie name
->now we will get the Movie Name & Rotton tomatoes
->finally container will get delete
