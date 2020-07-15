#!/bin/bash

function validFirstName()
{
	fname=$1
	fnamepattern="^([[:upper:]]){1}[[:lower:]]{2,}$"
	if [[ $fname =~ $fnamepattern  ]]
	then
	  echo "Valid first name";
	else
	  echo "Invalid first name";
	fi

}

function validLastName()
{
	lname=$1
	lnamepattern="^([[:upper:]]){1}[[:lower:]]{2,}$"
	if [[ $lname =~ $lnamepattern  ]]
	then
	  echo "Valid last name";
	else
	  echo "Invalid last name";
	fi

}

echo "Welcome to User Registration"
read -p "Enter first name " fname
validFirstName $fname

read -p "Enter first name " lname
validLastName $lname
