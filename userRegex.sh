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

function validEmail()
{
	email=$1
	emailpattern="^[a-zA-Z0-9]{1,}([.-+-][a-zA-Z0-9]{1,})?[@]{1}[a-zA-Z0-9]{1,}[.]{1}[a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$"
	if [[ $email =~ $emailpattern ]]
	then
	  echo "Valid email address"
	else
	  echo "Invalid email address"
	fi

}

function validMobile()
{
	mobile=$1
	mobpattern="^[0-9]{2}[[:space:]][0-9]{10}$";
	if [[ $mobile =~ $mobpattern ]]
	then
	  echo "Valid mobile number"
	else
	  echo "Invalid mobile number"
	fi

}

function validPassword()
{
	password=$1
	passpat1="^([a-zA-Z0-9@#!]){8,}$";
	passpat2="^([a-z0-9@#!]*)[[:upper:]]+([a-z0-9@#!]*)$";
	passpat3="^[a-zA-Z@#!]*[0-9]+[a-zA-Z@#!]*$";
	if [[ $password =~ $passpat1   ]]
	then
	  if [[ $password =~ $passpat2  ]]
	  then
	     if [[ $password =~ $passpat3  ]]
	     then
	        echo "Perfect password"
	     else
	       echo "Please enter at least one digit";
	     fi
	  else
	    echo "Please enter at least one caps letter";
	  fi
	else
	  echo "Your password should be of 8 length";
	fi


}

echo "Welcome to User Registration"
read -p "Enter first name " fname
validFirstName $fname

read -p "Enter first name " lname
validLastName $lname

read -p "Enter email address: " email
validEmail $email

read -p "Enter mobile number: " mobile
validMobile "$mobile"

read -p "Enter the password: " password
validPassword $password
