# OpenRefine dockerize

This repo provides a dockerized environment for OpenRefine client and server in same image. The code is mostly based on work by [Felix Lohmeier](https://github.com/opencultureconsulting/openrefine-docker). OpenRefine is an open source data wrangling software designed to handle large amounts of data with ease. OpenRefine is planned to be used in VesselAI project as a data wrangling tool. This part of the project is developed by University of Helsinki.

## Docker image

The docker image will contain both the OpenRefine server and a client that can query the server for processing. The OpenRefine server is based on the above mentioned repo and the client is a simple executable file that can be used to access the server. The server can also be accessed via API calls, but the client makes this process much simpler. 

## Workflow of dockerized image

The image has two volumes that are supposed to be bind mounted. The '/data' folder is supposed to hold the data to be processed and also the output of the program. The '/operations' folder contains the operations that are applied to the dataset. The 'entry.sh' script executes the client program with the given operations and stores the output to an output file. Currently the script accepts .csv formats. Can be easily modified to account for other formats. 

## Setting up the container

The image can be build using `docker build -t <image name> .`

Once the image is made you can start a container with command

`docker run -dv "$(pwd)/data:/app/data" -v “$(pwd)/operations:/app/operations” <image name>`

This will create the bind mounts to the volumes so the contents can be shared between container and host machine. It could also be configured to allow sharing only with different containers.

TODO: this will most likely be used in a multi-container environment and thus a docker-compose file should be made for this

## Filtering operations 
Currently the data wrangling only removes dublicates from the data. This could be easily expanded by adding new operations to `operations.json` file

[<img src="Vessel AI_01.png" width="150">](https://vessel-ai.eu/) [<img src="./hy.png" width="200">](https://helsinki.fi/) 

