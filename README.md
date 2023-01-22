# docker_postgres

we will use pgAdmin to access the 🚕 NYC taxi trips data loaded in Postgres. Since we are working with Docker, we don't have to install pgAdmin on our system but pull a Docker image that contains the tool. For this, we will:

Enable containers to communicate between them by creating and adding them to a network.
1.1 Stop and remove our first Postgres container, to rerun it with the network specs.
1.2 Rerun the Postgres container with the network specs.
1.3 Confirm the NYC taxi trip data is still there with pgcli connecting to the newly created Postgres container.
Run a pgAdmin container with the network specs.
2.1 Configure pgAdmin to connect to the Postgres container.
2.2 Confirm the data is still there with pgAdmin.
