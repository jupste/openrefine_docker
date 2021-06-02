# OpenRefine dockerize

This repo provides a dockerized environment for OpenRefine client and server in same image. The code is mostly based on work by [Felix Lohmeier](https://github.com/opencultureconsulting/openrefine-docker). 

## Docker image

The docker image will contain both the OpenRefine server and a client that can query the server for processing. The OpenRefine server is based on the above mentioned repo and the client is a simple executable file that can be used to access the server. The server can also be accessed via API calls, but the client makes this process much simpler. 

## Workflow of dockerized image

The image has two volumes that are supposed to be bind mounted. The '/data' folder is supposed to hold the data to be processed and also the output of the program. The '/operations' folder contains the operations that are applied to the dataset. The 'entry.sh' script executes the client program with the given operations and stores the output to an output file. Currently the script accepts .csv formats. Can be easily modified to account for other formats. 

