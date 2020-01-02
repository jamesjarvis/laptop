#!/bin/bash

echo "Importing gpg key"
keybase pgp pull-private --all --force
