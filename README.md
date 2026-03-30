# The Open Source Audit: Capstone Project

*Course:* Open Source Software (OSS NGMC)

*Student Name:* Chaitanya Sharma

*Registration Number:* 24BSA10049

*Chosen Software for Audit:* Python

## Project Overview
This repository contains five shell scripts written as part of the Open Source Audit Capstone Project. These scripts demonstrate practical Linux command-line skills, automation, and system administration concepts, all themed around my chosen open-source software: Python.

## Script Descriptions
* script1.sh *(System Identity Report):* Introduces the Linux system. It displays the distribution name, kernel version, current user, uptime, date, and a brief statement about the open-source license protecting the OS and Python (PSF License).
* script2.sh *(FOSS Package Inspector):* Checks if the python3 package is installed on the system using dpkg. It fetches the package version and description, and outputs a short philosophical note about Python using a case statement.
* script3.sh *(Disk and Permission Auditor):* Loops through important system directories (including /user/lib/python3) using a for loop to report their permissions, ownership, and total disk space used.
* script4.sh *(Log File Analyzer):* Reads a specified log file line by line using a while loop, counts how many times a specific keyword (like "error") appears, and outputs a summary along with the matching lines.
* script5.sh *(Open Source Manifesto Generator):* An interactive script that prompts the user with three questions about open-source philosophy, generates a customized manifesto paragraph, and saves it to a new .txt file.

## Dependencies Required
To run these scripts, your system must have:
* A Linux environment (Ubuntu/Debian recommended, or WSL on Windows).
* The Bash shell (/bin/bash).
* Standard GNU core utilities (echo, grep, awk, cut, ls, df/du).
*  dpkg package manager (for Script 2).
* Python 3 installed (for Script 2 to successfully find the package).

## Step-by-Step Instructions to Run the Scripts
*Step 1: Open the terminal* Open your Linux terminal (or WSL) and navigate to the directory where you downloaded these scripts.
*Step 2: Make the scripts executable* Before running them, you must grant execution permissions. Run the following command:

chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

*Step 3: Execute the scripts* Run each script using the ./ prefix.

Run Script 1, 2, 3, and 5 normally:

./script1.sh
./script2.sh
./script3.sh
./script5.sh

_Running Script 4 (Log Analyzer):
Script 4 requires a log file to read. You can create a quick dummy log file and test it by running:_

echo -e "INFO: App started\nERROR: Failed to load module\nWARNING: Low memory\nERROR: Connection timeout" > dummy_log.txt
./script4.sh dummy_log.txt error
