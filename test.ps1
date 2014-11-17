<#
Script to publish home drive. 

In order to run this script please install the Active Directories powershell module installed.

Script written by Harinderpal Singh on 18 November 2014.

In case of any queries please send me an email on harinder[at]codezyn.com

#>

#import the active directory module
import-module ActiveDirectory 

#get the current user's username
$usr = $env:username

#get all the AD properties user
$homed = get-aduser $usr -Properties * 

#Check if home drive is assigned to user. if yes open it. 
if($homed.HomeDirectory) {
     ii $homed.HomeDirectory 
     }

#if home drive is not assigned display the message
else { 
    echo "you don't have a home drive mapped" 
    }