# SoilSensorAPI


## Quick Start

you need to have a config.yaml file as the one you will find in the root path
of this project

```yaml
dbaddress: db.local # see docker-compose file.
dbname: database1
dbpassword: "456"
dbport: 3306
dbtable: table1
dbusername: "123"
espkey: 3f3ea036-6e3e-4731-a475-08e008108474
httpport: 15000
```
the dbaddress is set to db.local because it referes to the hostname of the
mysql database that is running using docker-compose.


don't forget if you update the config.yaml file you need to update the
corresponding values on the docker-compose file. for example if you changed
dbname you need to change MYSQL_DATABASE value on docker-compose.yaml file so
the same goes to the other values i will write down bellow each value in
config.yaml file and it corresponding value on docker-compose file

dbaddress -> MYSQL_HOST
dbname -> MYSQL_DATABASE
dbpassword -> MYSQL_ROOT_PASSWORD and MYSQL_PASSWORD
dbusername -> MYSQL_USER
dbport -> MYSQL_TCP_PORT


one you will run the docker-compose.yaml file using the following command
```console
$ docker-compose up --build -d
```






## Note:
make sure to have the config file on your path before running the
docker-compose command.


