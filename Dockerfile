FROM python:3.9.1

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app
COPY ingest_data.py ingest_data.py 

ENTRYPOINT [ "python", "ingest_data.py" ]

# docker run -it \
#   -e POSTGRES_USER="root" \
#   -e POSTGRES_PASSWORD="root" \
#   -e POSTGRES_DB="taxi" \
#   -v "ny-taxi:/var/lib/postgresql/data" \
#   -p 5433:5432 \
#   --network=pg-network \
#   --name pg-database \
#   postgres:14

#  docker run -t -e "PGADMIN_DEFAULT_EMAIL=admin@admin.com" -e "PGADMIN_DEFAULT_PASSWORD=root" -p 8080:80 --network=pg-network --name pgadmin -d dpage/pgadmin4 

# docker run -it \
#     --network=pg-network \
#     taxi_ingest:v001 \
#     --user=root \
#     --password=root \
#     --host=pg-database \
#     --port=5433 \
#     --db=taxi \
#     --table_name=green_taxi_data \
#     --url=${URL}

# docker run -it taxi_ingest:v001




# docker run -it \
#   -e POSTGRES_USER="root" \
#   -e POSTGRES_PASSWORD="root" \
#   -e POSTGRES_DB="ny_taxi" \
#   -v $(pwd)/ny_taxi_postgres_data:/var/lib/postgresql/data \
#   -p 5432:5432 \
#   --network=pg-network \
#   --name pg-database \
#   postgres:13
