# MySQL playground

すごくあそべる


## how to run
```
docker-compose up
```

カレントディレクトリ配下にMySQLのディレクトリが生成されるので注意。

## how to enter the mysql container
```
docker exec -i -t mysql bash
```

## how to enter the mysql in docker container directly
```
docker exec -i -t mysql_con mysql -uroot -proot
```

