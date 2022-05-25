$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36"
Invoke-WebRequest -UseBasicParsing -Uri "https://git.tech4comp.dbis.rwth-aachen.de/QVS/queries/visualize/?format=JSON" `
-Method "POST" `
-WebSession $session `
-Headers @{
"authority"="git.tech4comp.dbis.rwth-aachen.de"
  "method"="POST"
  "path"="/QVS/queries/visualize/?format=JSON"
  "scheme"="https"
  "accept"="application/json, text/plain, */*"
  "accept-encoding"="gzip, deflate, br"
  "accept-language"="en-US"
  # "access_token"=""
  # "authorization"=""
  "oidc_provider"="https://api.learning-layers.eu/o/oauth2"
  "origin"="http://localhost:4200"
  "referer"="http://localhost:4200/"
  "sec-ch-ua"="`" Not A;Brand`";v=`"99`", `"Chromium`";v=`"101`", `"Google Chrome`";v=`"101`""
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
  "sec-fetch-dest"="empty"
  "sec-fetch-mode"="cors"
  "sec-fetch-site"="cross-site"
} `
-ContentType "application/json" `
-Body "{`"cache`":false,`"dbkey`":`"las2peermon`",`"queries`":[{`"query`":`"SELECT COUNT(*) FROM LAS2PEERMON.MESSAGE                    WHERE EVENT = 'SERVICE_CUSTOM_ERROR_2' AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 7 DAY)`",`"queryParams`":[]},{`"query`":`"SELECT COUNT(*) FROM                    LAS2PEERMON.MESSAGE                     WHERE EVENT = 'SERVICE_CUSTOM_ERROR_2'`",`"queryParams`":[]},{`"query`":`"SELECT COUNT(*) FROM LAS2PEERMON.MESSAGE                      WHERE EVENT = 'SERVICE_CUSTOM_ERROR_1'`",`"queryParams`":[]},{`"query`":`"SELECT COUNT(*) FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'MESSAGE_RECEIVED' AND SOURCE_AGENT = ' 23e46d034eb0c18c31879abc8589eef2 '`",`"queryParams`":[]},{`"query`":`"SELECT COUNT(*) FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'RESPONSE_SENDING'  AND SOURCE_AGENT = ' 23e46d034eb0c18c31879abc8589eef2 '`",`"queryParams`":[]},{`"query`":`"SELECT AVG(JSON_EXTRACT(REMARKS,\`"`$.duration\`"))/1000 as duration FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'SERVICE_CUSTOM_MESSAGE_42'`",`"queryParams`":[]},{`"query`":`"SELECT AVG(JSON_EXTRACT(REMARKS,\`"`$.duration\`"))/1000 as duration FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'SERVICE_CUSTOM_MESSAGE_40' AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 5 DAY) AND (((REMARKS-&gt;\`"`$.url\`") = 'menu') OR ((REMARKS-&gt;\`"`$.url\`") = 'menu/'))`",`"queryParams`":[]},{`"query`":`"SELECT AVG(JSON_EXTRACT(REMARKS,\`"`$.duration\`"))/1000 as duration FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'SERVICE_CUSTOM_MESSAGE_40' AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 1 DAY)`",`"queryParams`":[]},{`"query`":`"SELECT REMARKS-&gt;\`"`$.url\`" as url , AVG(REMARKS-&gt;\`"`$.duration\`") as duration FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'SERVICE_CUSTOM_MESSAGE_40' AND REMARKS-&gt;\`"`$.duration\`"&lt;300 GROUP BY  REMARKS-&gt;\`"`$.url\`"`",`"queryParams`":[]},{`"query`":`"SELECT AVG(JSON_EXTRACT(REMARKS,\`"`$.duration\`"))/1000 as duration FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'SERVICE_CUSTOM_MESSAGE_40' AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 5 DAY) AND (((REMARKS-&gt;\`"`$.url\`") = 'menu') OR ((REMARKS-&gt;\`"`$.url\`") = 'menu/'))`",`"queryParams`":[]},{`"query`":`"SELECT AVG(JSON_EXTRACT(REMARKS,\`"`$.duration\`"))/1000 as duration FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'SERVICE_CUSTOM_MESSAGE_40' AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 5 DAY)`",`"queryParams`":[]},{`"query`":`"SELECT AVG(JSON_EXTRACT(REMARKS,\`"`$.duration\`"))/1000 as duration FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'SERVICE_CUSTOM_MESSAGE_40'`",`"queryParams`":[]},{`"query`":`"SELECT qval AS Answer, COUNT(*) as number FROM mobsos.response WHERE  sid='72' AND qkey = \`"q2\`" GROUP BY Answer ORDER BY number DESC`",`"queryParams`":[]},{`"query`":`"SELECT qval AS Answer, COUNT(*) as number FROM mobsos.response WHERE  sid='72' AND qkey = \`"q3\`" GROUP BY Answer ORDER BY number DESC`",`"queryParams`":[]},{`"query`":`"SELECT DATE_FORMAT(TIME_STAMP, \`"%a\`") as date, count(*) as requests FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_1\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 12 MONTH) GROUP BY date  ORDER BY TIME_STAMP`",`"queryParams`":[]},{`"query`":`"SELECT count(*) as requests FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_1\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 1 DAY)`",`"queryParams`":[]},{`"query`":`"SELECT count(*) as \`"requests\`" FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_4\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 1 DAY)`",`"queryParams`":[]},{`"query`":`"SELECT count(*) as \`"requests\`" FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_3\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 1 DAY)`",`"queryParams`":[]},{`"query`":`"SELECT count(*) as requests FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_1\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 1 DAY)`",`"queryParams`":[]},{`"query`":`"SELECT DATE_FORMAT(TIME_STAMP, \`"%M %d %Y\`") as date, count(*) as requests FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_1\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 7 DAY) GROUP BY date ORDER BY TIME_STAMP ASC`",`"queryParams`":[]},{`"query`":`"SELECT TIME_STAMP as date, count(*) as requests FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_1\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 2 MONTH) GROUP BY date ORDER BY TIME_STAMP ASC`",`"queryParams`":[]},{`"query`":`"SELECT DATE_FORMAT(TIME_STAMP, \`"%M %Y\`") as date, count(*) as requests FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_1\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 12 MONTH) GROUP BY date ORDER BY TIME_STAMP ASC`",`"queryParams`":[]},{`"query`":`"SELECT TIME_STAMP as date, count(*) as \`"requests\`" FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_10\`" group by date(date)`",`"queryParams`":[]},{`"query`":`"SELECT TIME_STAMP as date, count(1) as \`"requests\`" FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_1\`" AND JSON_CONTAINS_PATH(REMARKS,'one', \`"`$.mensaName\`") group by date(date)`",`"queryParams`":[]},{`"query`":`"SELECT COUNT(distinct(REMARKS-&gt;&gt;\`"`$.email\`")) as user FROM MESSAGE where EVENT =\`"SERVICE_CUSTOM_MESSAGE_41\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 1 MONTH)`",`"queryParams`":[]},{`"query`":`"SELECT  DATE_FORMAT(TIME_STAMP, \`"%M %Y\`") as date, count(distinct(REMARKS-&gt;&gt;\`"`$.email\`")) as requests FROM MESSAGE where EVENT =\`"SERVICE_CUSTOM_MESSAGE_41\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 12 MONTH) GROUP BY date ORDER BY TIME_STAMP`",`"queryParams`":[]},{`"query`":`"SELECT  COUNT(distinct REMARKS-&gt;&gt;\`"`$.email\`") as users FROM MESSAGE where EVENT =\`"SERVICE_CUSTOM_MESSAGE_41\`"`",`"queryParams`":[]},{`"query`":`"SELECT  (REMARKS-&gt;&gt;\`"`$.email\`") as user, count(*) as requests FROM MESSAGE where EVENT =\`"SERVICE_CUSTOM_MESSAGE_41\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 1 MONTH) GROUP BY user ORDER BY requests DESC`",`"queryParams`":[]},{`"query`":`"SELECT DATE_FORMAT(TIME_STAMP, \`"%M %d %Y\`") as date, count(distinct JSON_EXTRACT(REMARKS,\`"`$.email\`")) as requests FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_41\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 1 WEEK) GROUP BY date`",`"queryParams`":[]},{`"query`":`"SELECT count(distinct REMARKS-&gt;&gt;\`"`$.email\`") as user FROM MESSAGE where EVENT =\`"SERVICE_CUSTOM_MESSAGE_41\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 1 DAY)`",`"queryParams`":[]},{`"query`":`"SELECT TIME_STAMP, count(*) as 'number of requests' FROM MESSAGE WHERE JSON_EXTRACT(REMARKS,\`"`$.botName\`") like \`"%Mensa%\`" GROUP BY Date(TIME_STAMP)`",`"queryParams`":[]},{`"query`":`"SELECT   author,   count(case when comment is null then 1 else null end) as 'without comment',  count(case when comment is not null then 1 else null end) as 'with comment'FROM reviews GROUP BY author order by count(*) desc limit 5`",`"queryParams`":[]},{`"query`":`"SELECT REMARKS-&gt;&gt;\`"`$.email\`" as email , sum(REMARKS-&gt;&gt;\`"`$.time\`") as time FROM MESSAGE WHERE EVENT = 'SERVICE_CUSTOM_MESSAGE_41' AND REMARKS-&gt;&gt;\`"`$.email\`" &lt;&gt;\`"null\`" GROUP BY email ORDER BY time DESC LIMIT 10`",`"queryParams`":[]},{`"query`":`"SELECT distinct(REMARKS-&gt;&gt;\`"`$.email\`") as user, count(*) as requests FROM MESSAGE where EVENT =\`"SERVICE_CUSTOM_MESSAGE_41\`" AND TIME_STAMP &gt; (DATE(NOW()) - INTERVAL 1 MONTH) GROUP BY user HAVING requests &gt; 1  ORDER BY requests DESC`",`"queryParams`":[]},{`"query`":`"SELECT AVG(((q1-1)+(5-q2)+(q3-1)+(5-q4)+(q5-1)+(5-q6)+(q7-1)+(5-q8))*2.5) FROM(  SELECT uid,    MAX(IF(qkey=\`"q1\`", qval, NULL)) AS q1,    MAX(IF(qkey=\`"q2\`", qval, NULL)) AS q2,    MAX(IF(qkey=\`"q3\`", qval, NULL)) AS q3,    MAX(IF(qkey=\`"q4\`", qval, NULL)) AS q4,    MAX(IF(qkey=\`"q5\`", qval, NULL)) AS q5,    MAX(IF(qkey=\`"q6\`", qval, NULL)) AS q6,    MAX(IF(qkey=\`"q7\`", qval, NULL)) AS q7,    MAX(IF(qkey=\`"q8\`", qval, NULL)) AS q8  FROM mobsos.response WHERE  sid='74' GROUP BY uid) t`",`"queryParams`":[]},{`"query`":`"SELECT qval AS Answer, COUNT(*) as number FROM mobsos.response WHERE  sid='74' AND qkey = \`"q1\`" GROUP BY Answer ORDER BY number DESC`",`"queryParams`":[]},{`"query`":`"SELECT qval AS Answer, COUNT(*) as number FROM mobsos.response WHERE  sid='74' AND qkey = \`"q2\`" GROUP BY Answer ORDER BY number DESC`",`"queryParams`":[]},{`"query`":`"SELECT qval AS Answer, COUNT(*) as number FROM mobsos.response WHERE  sid='74' AND qkey = \`"q3\`" GROUP BY Answer ORDER BY number DESC`",`"queryParams`":[]},{`"query`":`"SELECT qval AS Answer, COUNT(*) as number FROM mobsos.response WHERE  sid='74' AND qkey = \`"q4\`" GROUP BY Answer ORDER BY number DESC`",`"queryParams`":[]},{`"query`":`"SELECT qval AS Answer, COUNT(*) as number FROM mobsos.response WHERE  sid='74' AND qkey = \`"q5\`" GROUP BY Answer ORDER BY number DESC`",`"queryParams`":[]},{`"query`":`"SELECT qval AS Answer, COUNT(*) as number FROM mobsos.response WHERE  sid='74' AND qkey = \`"q6\`" GROUP BY Answer ORDER BY number DESC`",`"queryParams`":[]},{`"query`":`"SELECT qval AS Answer, COUNT(*) as number FROM mobsos.response WHERE  sid='74' AND qkey = \`"q7\`" GROUP BY Answer ORDER BY number DESC`",`"queryParams`":[]},{`"query`":`"SELECT qval AS Answer, COUNT(*) as number FROM mobsos.response WHERE  sid='74' AND qkey = \`"q8\`" GROUP BY Answer ORDER BY number DESC`",`"queryParams`":[]},{`"query`":`"SELECT category, avg(stars) as 'average stars' FROM mensas JOIN reviews ON mensas.id = reviews.mensaId JOIN dishes ON dishes.id = reviews.dishId WHERE mensas.name= \`"Aachen, Mensa Academica\`" GROUP BY category order by stars desc limit 5`",`"queryParams`":[]},{`"query`":`"SELECT mensas.name as name, avg(stars) as 'average stars' FROM mensas JOIN reviews ON mensas.id = reviews.mensaId WHERE mensas.city = \`"Aachen\`" GROUP BY mensas.name order by stars desc limit 5`",`"queryParams`":[]},{`"query`":`"SELECT JSON_EXTRACT(REMARKS,\`"`$.mensaName\`") as mensa, count(*) as requests FROM MESSAGE WHERE EVENT = \`"SERVICE_CUSTOM_MESSAGE_1\`" AND JSON_EXTRACT(REMARKS,\`"`$.mensaName\`") IS NOT NULL GROUP BY JSON_EXTRACT(REMARKS,\`"`$.mensaName\`")`",`"queryParams`":[]},{`"query`":`"SELECT COUNT(*) FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'MESSAGE_RECEIVED' AND SOURCE_AGENT = ' 23e46d034eb0c18c31879abc8589eef2 ' AND REMARKS-&gt;\`"`$.msg\`" like \`"Botaction\`"`",`"queryParams`":[]},{`"query`":`"SELECT COUNT(*) FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'MESSAGE_RECEIVED'  AND SOURCE_AGENT = ' 23e46d034eb0c18c31879abc8589eef2 '`",`"queryParams`":[]},{`"query`":`"SELECT COUNT(*) FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'MESSAGE_RECEIVED' AND SOURCE_AGENT = ' 23e46d034eb0c18c31879abc8589eef2 ' AND REMARKS-&gt;\`"`$.msg\`" like \`"Botaction\`"`",`"queryParams`":[]},{`"query`":`"SELECT COUNT(*) FROM LAS2PEERMON.MESSAGE WHERE EVENT = 'MESSAGE_RECEIVED'  AND SOURCE_AGENT = ' 23e46d034eb0c18c31879abc8589eef2 '`",`"queryParams`":[]}],`"save`":false}"