#!/bin/bash

USER=ubuntu

scp -i $PRIVATE_KEY install.sh $USER@$HOST:~
ssh -i $PRIVATE_KEY $USER@$HOST ./install.sh
