/*1. Készítsünk nézetet VSZOBA néven, amely megjeleníti a szobák adatai mellett a megfelelő szálláshely nevét, helyét és a csillagok számát is!

Az oszlopoknak nem szükséges külön nevet adni!
Teszteljük is a nézetet, pl: SELECT * FROM UJAENB_VSZOBA*/
CREATE OR ALTER VIEW VSZOBA
AS 
SELECT  sz.*,
		szh.SZALLAS_NEV,
        szh.HELY,
        szh.CSILLAGOK_SZAMA
FROM Szoba sz JOIN Szallashely szh ON sz.SZALLAS_FK=szh.SZALLAS_ID


/*2 Készítsen tárolt eljárást SPUgyfelFoglalasok, amely a paraméterként megkapott ügyfél azonosítóhoz tartozó foglalások adatait listázza!
Teszteljük a tárolt eljárás működését, pl: EXEC UJAENB_SPUgyfelFoglalasok 'laszlo2'
*/
CREATE OR ALTER PROC SPUgyfelFoglalasok
--paraméterek
@ugyfel nvarchar(100)
AS
BEGIN
	SELECT *
    FROM Foglalas
    WHERE ugyfel_fk=@ugyfel
END

/*
3. Készítsen skalár értékű függvényt UDFFerohely néven, amely visszaadja, hogy a paraméterként megkapott foglalás azonosítóhoz hány férőhelyes szoba tartozik!
a. Teszteljük a függvény működését!
*/
CREATE OR ALTER FUNCTION UDFFerohely
(
  @foglalas_id int
)
RETURNS int
AS
BEGIN
	DECLARE @ferohelly int
	SELECT @ferohelly=sz.ferohely
    FROM Szoba sz JOIN Foglalas f ON sz.SZOBA_ID=f.SZOBA_FK
    WHERE f.FOGLALAS_PK=@foglalas_id
    RETURN @ferohelly
END