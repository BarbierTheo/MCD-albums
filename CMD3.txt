SELECT a.pic_id, a.pic_url, a.pic_description, a.pic_date, album_title
FROM pics AS a
LEFT JOIN pics_album as b ON a.pic_id = b.pic_id
LEFT JOIN album AS c ON b.album_id = c.album_id;



SELECT album_title, GROUP_CONCAT(DISTINCT pic_id SEPARATOR ', ') as `ID des photos présentes dans l'album`
FROM pics
NATURAL JOIN pics_album
NATURAL JOIN album
GROUP BY album_title;



SELECT user_name, COUNT(DISTINCT album_id) as `Nombre d'albums crées`
FROM users
NATURAL JOIN belong
GROUP BY user_name;



SELECT album_title `Album`, group_concat(user_name SEPARATOR ', ') as `Personnes avec qui l'album est partagé`
FROM share a
NATURAL JOIN album
INNER JOIN users b ON a.user_id = b.user_id
GROUP BY album_title;

