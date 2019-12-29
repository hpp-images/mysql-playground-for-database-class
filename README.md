# MySQL playground

**すごくあそべる**

## how to use

0. install **`docker`**
1. run `docker run --name mysql_con -p 3306:3306 hpprc/mysql_playground`
2. run `docker exec -it mysql_con mysql -uroot -proot`

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
