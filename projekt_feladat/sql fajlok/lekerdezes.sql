SELECT
	CASE
    	WHEN kor BETWEEN 0 and 18 THEN 'Gyerek'
    	WHEN kor BETWEEN 18 and 30 THEN 'Fiatalkorú'
    	WHEN kor BETWEEN 30 and 60 THEN 'Középkorú'
    	ELSE 'Időskorú'
    	END as 'Korcsoportok',
	COUNT(vizsgalat_id) as 'Vizsgálatok száma'
FROm Paciens p JOIN Vizsgalat v ON p.paciens_id=v.paciens_id
GROUP BY (CASE
    WHEN kor BETWEEN 0 and 18 THEN 'Gyerek'
    WHEN kor BETWEEN 18 and 30 THEN 'Fiatalkorú'
    WHEN kor BETWEEN 30 and 60 THEN 'Középkorú'
    ELSE 'Időskorú'
    END)
ORDER BY Count(vizsgalat_id) DESC




SELECT DISTINCT d.nev as 'Név',
		COUNT(r.recept_id) OVER(PARTITION BY d.nev) as 'Felírt receptek száma',
        d.tapasztalat_ev AS 'Tapasztalat évei'
FROM Doktor d LEFT JOIN Recept r ON d.doktor_id = r.doktor_id
WHERE d.tapasztalat_ev > 20
ORDER BY d.nev


SELECT	d.nev as 'Doktor', 
		p.nev AS 'Páciens',
        v.diagnozis as 'Diagnózis',
        v.kezeles as 'Kezelés',
        v.datum as 'Kezelés dátuma'
FROM Vizsgalat v JOIN Doktor d ON v.doktor_id = d.doktor_id
					JOIN Paciens p ON v.paciens_id = p.paciens_id
                    JOIN Rendelo r ON v.rendelo_id = r.rendelo_id
WHERE v.rendelo_id = 1;


SELECT p.nev AS 'Páciens neve', 
	   v.vizsgalat_id AS 'Vizsgálati azonosító', 
       d.nev AS 'Doktor neve', 
       v.diagnozis AS 'Diagnózis',
       v.datum AS 'Vizsgálat dátuma',
       r.gyogyszer AS 'Gyógyszer', 
       r.meddig AS 'Meddig szedje', 
       r.napi_adag AS 'Napi adagolás'
FROM Vizsgalat v JOIN Recept r ON v.paciens_id = r.paciens_id 
				 JOIN Doktor d ON v.doktor_id = d.doktor_id OR r.doktor_id = d.doktor_id
                 JOIN Paciens p ON v.paciens_id = p.paciens_id
WHERE v.paciens_id = 1;


SELECT gyogyszer, napi_adag, meddig, p.nev
FROM Recept r JOIN Paciens p ON r.paciens_id = p.paciens_id
WHERE napi_adag > (
	SELECT AVG(napi_adag)
  	FROM Recept
)
ORDER BY napi_adag





SELECT IIF(GROUPING_ID(r.nev)=1,'Összesen', r.nev) AS 'Rendelő neve', 
		IIF(GROUPING_ID(v.diagnozis)=1,'Összesen',v.diagnozis) aS 'Diagnózis',
		Count(v.vizsgalat_id) AS 'Vizsgálatok száma'
FROM Vizsgalat v JOIN Rendelo r ON v.rendelo_id = r.rendelo_id
GROUP BY ROLLUP(r.nev, v.diagnozis);


SELECT p.nev,
		p.nem ,
        DATEDIFF(day,getdate(),r.meddig)*napi_adag as 'Összes beszedendő gyógyszer',
		MAX(DATEDIFF(day,getdate(),r.meddig)*napi_adag) OVER(PARTITION BY p.nem)
        as 'Nemenként a legtöbb beszedendő gyógyszer'
FROM Paciens p JOIN Recept r ON p.paciens_id=r.paciens_id
ORDER BY DATEDIFF(day,getdate(),r.meddig)*napi_adag DESC