# MySQL playground

**すごくあそべる**

## how to use

0. **install `docker` and `docker-compose`**
1. create `docker-compose.yml` file
2. edit `docker-compose.yml` as bellow (reffer to the `example.docker-compose.yml`)

```
version: "3"

services:
  db:
    image: hpprc/mysql_playground
    container_name: mysql_con
    ports:
      - 3306:3306
```

3. run `docker-compose up -d`

4. run `docker-compose exec db mysql -uroot -proot`


## how to use this repositry's config
```
make
```

この方法でコンテナを起動すると、カレントディレクトリ配下にMySQLのディレクトリが生成されるので注意。(MySQLの実体をマウントするので)
内部で`docker-compose up`してコンテナを立てて、その中に入ってMySQL起動、までやってくれます。
MySQLの`kadai`データベース内に課題用のデータを投入済み。ついでに日本語対応も👴

## how to enter the mysql container
```
docker exec -i -t mysql_con bash
```

## how to enter the mysql in docker container directly
```
docker exec -i -t mysql_con mysql -uroot -proot
```

## how to use from Dockerhub
```
docker run --name mysql_con -p 3306:3306 hpprc/mysql_playground
```


## p.s.

docker初心者なのでここ変じゃね、みたいなところあったらIssueなりPull Requestなどください。
