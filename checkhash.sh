#!/bin/bash

filename=~/.hushlogin;if [ -f $filename ];then echo "File exists, All Good";else touch $filename && echo "File created"; fi

# filename=~/.hushlogin;
# if [ -f $filename ]
# then
# echo "File exists, All Good"
# else
#     touch $filename
#     echo "File created"
# fi