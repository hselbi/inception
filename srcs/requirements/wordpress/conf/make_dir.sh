#!/bin/bash
if [! -d "/home/${USER}/data" ]; then
		mkdir ~/data
		mkdir ~/data/db-volume
		mkdir ~/data/wp-volume
fi