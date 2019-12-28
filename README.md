# MySQL playground

**すごくあそべる**


## how to run
```
make
```

カレントディレクトリ配下にMySQLのディレクトリが生成されるので注意。
内部で`docker-compose up`してコンテナを立てて、その中に入ってMySQL起動、までやってくれます。
MySQLの`kadai`データベース内に課題用のデータを投入済み。ついでに日本語対応も👴

## how to enter the mysql container
```
docker exec -i -t mysql bash
```

## how to enter the mysql in docker container directly
```
docker exec -i -t mysql_con mysql -uroot -proot
```

## p.s.

docker初心者なのでここ変じゃね、みたいなところあったらIssueなりPull Requestなどください。