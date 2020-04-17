# MySQL playground for database class

**すごくあそべる**

## how to use

0. install **`docker`**
1. run `docker run -d --name mysql_con -p 3306:3306 hpprc/mysql_playground_for_database_class`
1. run `docker exec -it mysql_con mysql -uroot -proot`

## how to use this repositry's config

```
make
```

この方法でコンテナを起動すると、カレントディレクトリ配下に MySQL のディレクトリが生成されるので注意。(MySQL の実体をマウントするので)
内部で`docker-compose up`してコンテナを立てて、その中に入って MySQL 起動、までやってくれます。
MySQL の`kadai`データベース内に課題用のデータを投入済み。ついでに日本語対応も 👴

## how to enter the mysql container

```
docker exec -i -t mysql_con bash
```

## how to enter the mysql in docker container directly

```
docker exec -i -t mysql_con mysql -uroot -proot
```

## p.s.

docker 初心者なのでここ変じゃね、みたいなところあったら Issue なり Pull Request などください。
