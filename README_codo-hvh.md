# codo-hvh
1.Download and install WTServer
https://wtserver.wtriple.com/

2.Navigate to Adminer and import SQL scripts one by one
1)data_sql/1_create_user.sql, and
2)data_sql/2_create_database.sql, and
3)data_sql/3_hvh_v1_structure-and-data_YYYYMMDD.sql, OR
4)data_sql/3_hvh_v1_structure-only_YYYYMMDD.sql

3.Download and copy phpmyadmin to WTServer's include path

4.Backup WTServer/conf/nginx.conf, mysql.ini and php.ini

5.Copy conf/*.* from to WTServer's and modify the files according to the server's setting

6.Copy all other folders with all sub-items to WTServer's home path

7.Unzip bin\silk2amr\ffmpeg.zip to its directory