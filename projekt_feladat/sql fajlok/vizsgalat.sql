INSERT Vizsgalat(
	vizsgalat_id, paciens_id, doktor_id, rendelo_id, datum, diagnozis, kezeles
)
SELECT 1, 1, 1, 1, '2024-05-01', 'Influenza', 'Pihenés'
UNION ALL
SELECT 2, 2, 2, 2, '2024-05-02', 'Migrén', 'Fájdalomcsillapítók szedése'
UNION ALL
SELECT 3, 3, 3, 3, '2024-05-03', 'Hasmenés', 'Folyadékpótlás'
UNION ALL
SELECT 4, 4, 4, 4, '2024-05-04', 'Magas vérnyomás', 'Vérnyomáscsökkentők szedése'
UNION ALL
SELECT 5, 5, 5, 5, '2024-05-05', 'Fülgyulladás', 'Fülcsepp alkalmazása'
UNION ALL
SELECT 6, 6, 6, 6, '2024-05-06', 'Láz', 'Lázcsillapítók szedése'
UNION ALL
SELECT 7, 7, 7, 7, '2024-05-07', 'Szédülés', 'Pihenés'
UNION ALL
SELECT 8, 8, 8, 8, '2024-05-08', 'Depresszió', 'Antidepresszáns szedése'
UNION ALL
SELECT 9, 9, 9, 9, '2024-05-09', 'Epekő', 'Diétás kezelés'
UNION ALL
SELECT 10, 10, 10, 10, '2024-05-10', 'Allergiás reakció', 'Antihisztamin szedése'
UNION ALL
SELECT 11, 11, 11, 11, '2024-05-11', 'Hörghurut', 'Gyógyszerek szedése'
UNION ALL
SELECT 12, 12, 12, 12, '2024-05-12', 'Köhögés', 'Köhögéscsillapítók szedése'
UNION ALL
SELECT 13, 13, 13, 13, '2024-05-13', 'Migrén', 'Pihenés'
UNION ALL
SELECT 14, 14, 14, 14, '2024-05-14', 'Fogfájás', 'Fogfájás elleni gyógyszer szedése'
UNION ALL
SELECT 15, 15, 15, 15, '2024-05-15', 'Fáradtság', 'Pihenés'
UNION ALL
SELECT 16, 16, 16, 16, '2024-05-16', 'Ízületi gyulladás', 'Fájdalomcsillapítók szedése'
UNION ALL
SELECT 17, 17, 17, 17, '2024-05-17', 'Szorongás', 'Pszihiátriai kezelés'
UNION ALL
SELECT 18, 18, 18, 18, '2024-05-18', 'Fogfájás', 'Fogfájás elleni gyógyszer szedése'
UNION ALL
SELECT 19, 19, 19, 19, '2024-05-19', 'Hasmenés', 'Folyadékpótlás'
UNION ALL
SELECT 20, 20, 20, 20, '2024-05-20', 'Magas vérnyomás', 'Vérnyomáscsökkentők szedése'
UNION ALL
SELECT 21, 21, 21, 21, '2024-05-21', 'Migrén', 'Pihenés'
UNION ALL
SELECT 22, 22, 22, 22, '2024-05-22', 'Depresszió', 'Antidepresszáns szedése'
UNION ALL
SELECT 23, 23, 23, 23, '2024-05-23', 'Epekő', 'Diétás kezelés'
UNION ALL
SELECT 24, 24, 24, 24, '2024-05-24', 'Allergiás reakció', 'Antihisztamin szedése'
UNION ALL
SELECT 25, 25, 25, 25, '2024-05-25', 'Hörghurut', 'Gyógyszerek szedése'
UNION ALL
SELECT 26, 26, 26, 1, '2024-05-26', 'Influenza', 'Pihenés'
UNION ALL
SELECT 27, 27, 27, 2, '2024-05-27', 'Migrén', 'Fájdalomcsillapítók szedése'
UNION ALL
SELECT 28, 28, 28, 3, '2024-05-28', 'Hasmenés', 'Folyadékpótlás'
UNION ALL
SELECT 29, 29, 29, 4, '2024-05-29', 'Magas vérnyomás', 'Vérnyomáscsökkentők szedése'
UNION ALL
SELECT 30, 30, 30, 5, '2024-05-30', 'Fülgyulladás', 'Fülcsepp alkalmazása'
UNION ALL
SELECT 31, 31, 31, 6, '2024-05-31', 'Láz', 'Lázcsillapítók szedése'
UNION ALL
SELECT 32, 32, 32, 7, '2024-06-01', 'Szédülés', 'Pihenés'
UNION ALL
SELECT 33, 33, 33, 8, '2024-06-02', 'Depresszió', 'Antidepresszáns szedése'
UNION ALL
SELECT 34, 34, 34, 9, '2024-06-03', 'Epekő', 'Diétás kezelés'
UNION ALL
SELECT 35, 35, 35, 10, '2024-06-04', 'Allergiás reakció', 'Antihisztamin szedése'
UNION ALL
SELECT 36, 36, 36, 11, '2024-06-05', 'Hörghurut', 'Gyógyszerek szedése'
UNION ALL
SELECT 37, 37, 37, 12, '2024-06-06', 'Köhögés', 'Köhögéscsillapítók szedése'
UNION ALL
SELECT 38, 38, 38, 13, '2024-06-07', 'Migrén', 'Pihenés'
UNION ALL
SELECT 39, 39, 39, 14, '2024-06-08', 'Fogfájás', 'Fogfájás elleni gyógyszer szedése'
UNION ALL
SELECT 40, 40, 40, 15, '2024-06-09', 'Fáradtság', 'Pihenés'
UNION ALL
SELECT 41, 41, 41, 16, '2024-06-10', 'Ízületi gyulladás', 'Fájdalomcsillapítók szedése'
UNION ALL
SELECT 42, 42, 42, 17, '2024-06-11', 'Szorongás', 'Pszihiátriai kezelés'
UNION ALL
SELECT 43, 43, 43, 18, '2024-06-12', 'Fogfájás', 'Fogfájás elleni gyógyszer szedése'
UNION ALL
SELECT 44, 44, 44, 19, '2024-06-13', 'Hasmenés', 'Folyadékpótlás'
UNION ALL
SELECT 45, 45, 45, 20, '2024-06-14', 'Magas vérnyomás', 'Vérnyomáscsökkentők szedése'
UNION ALL
SELECT 46, 46, 46, 21, '2024-06-15', 'Migrén', 'Pihenés'
UNION ALL
SELECT 47, 47, 47, 22, '2024-06-16', 'Depresszió', 'Antidepresszáns szedése'
UNION ALL
SELECT 48, 48, 48, 23, '2024-06-17', 'Epekő', 'Diétás kezelés'
UNION ALL
SELECT 49, 49, 49, 24, '2024-06-18', 'Allergiás reakció', 'Antihisztamin szedése'
UNION ALL
SELECT 50, 50, 50, 25, '2024-06-19', 'Hörghurut', 'Gyógyszerek szedése'
UNION ALL
SELECT 51, 51, 26, 1, '2024-06-20', 'Influenza', 'Pihenés'
UNION ALL
SELECT 52, 52, 27, 2, '2024-06-21', 'Migrén', 'Fájdalomcsillapítók szedése'
UNION ALL
SELECT 53, 53, 28, 3, '2024-06-22', 'Hasmenés', 'Folyadékpótlás'
UNION ALL
SELECT 54, 54, 29, 4, '2024-06-23', 'Magas vérnyomás', 'Vérnyomáscsökkentők szedése'
UNION ALL
SELECT 55, 55, 30, 5, '2024-06-24', 'Fülgyulladás', 'Fülcsepp alkalmazása'
UNION ALL
SELECT 56, 56, 31, 6, '2024-06-25', 'Láz', 'Lázcsillapítók szedése'
UNION ALL
SELECT 57, 57, 32, 7, '2024-06-26', 'Szédülés', 'Pihenés'
UNION ALL
SELECT 58, 58, 33, 8, '2024-06-27', 'Depresszió', 'Antidepresszáns szedése'
UNION ALL
SELECT 59, 59, 34, 9, '2024-06-28', 'Epekő', 'Diétás kezelés'
UNION ALL
SELECT 60, 60, 35, 10, '2024-06-29', 'Allergiás reakció', 'Antihisztamin szedése'
UNION ALL
SELECT 61, 61, 36, 11, '2024-06-30', 'Hörghurut', 'Gyógyszerek szedése'
UNION ALL
SELECT 62, 62, 37, 12, '2024-07-01', 'Köhögés', 'Köhögéscsillapítók szedése'
UNION ALL
SELECT 63, 63, 38, 13, '2024-07-02', 'Migrén', 'Pihenés'
UNION ALL
SELECT 64, 64, 39, 14, '2024-07-03', 'Fogfájás', 'Fogfájás elleni gyógyszer szedése'
UNION ALL
SELECT 65, 65, 40, 15, '2024-07-04', 'Fáradtság', 'Pihenés'
UNION ALL
SELECT 66, 66, 41, 16, '2024-07-05', 'Ízületi gyulladás', 'Fájdalomcsillapítók szedése'
UNION ALL
SELECT 67, 67, 42, 17, '2024-07-06', 'Szorongás', 'Pszihiátriai kezelés'
UNION ALL
SELECT 68, 68, 43, 18, '2024-07-07', 'Fogfájás', 'Fogfájás elleni gyógyszer szedése'
UNION ALL
SELECT 69, 69, 44, 19, '2024-07-08', 'Hasmenés', 'Folyadékpótlás'
UNION ALL
SELECT 70, 70, 45, 20, '2024-07-09', 'Magas vérnyomás', 'Vérnyomáscsökkentők szedése'
UNION ALL
SELECT 71, 71, 46, 21, '2024-07-10', 'Migrén', 'Pihenés'
UNION ALL
SELECT 72, 72, 47, 22, '2024-07-11', 'Depresszió', 'Antidepresszáns szedése'
UNION ALL
SELECT 73, 73, 48, 23, '2024-07-12', 'Epekő', 'Diétás kezelés'
UNION ALL
SELECT 74, 74, 49, 24, '2024-07-13', 'Allergiás reakció', 'Antihisztamin szedése'
UNION ALL
SELECT 75, 75, 50, 25, '2024-07-14', 'Hörghurut', 'Gyógyszerek szedése'
UNION ALL
SELECT 76, 76, 1, 1, '2024-07-15', 'Influenza', 'Pihenés'
UNION ALL
SELECT 77, 77, 2, 2, '2024-07-16', 'Migrén', 'Fájdalomcsillapítók szedése'
UNION ALL
SELECT 78, 78, 3, 3, '2024-07-17', 'Hasmenés', 'Folyadékpótlás'
UNION ALL
SELECT 79, 79, 4, 4, '2024-07-18', 'Magas vérnyomás', 'Vérnyomáscsökkentők szedése'
UNION ALL
SELECT 80, 80, 5, 5, '2024-07-19', 'Fülgyulladás', 'Fülcsepp alkalmazása'
UNION ALL
SELECT 81, 81, 6, 6, '2024-07-20', 'Láz', 'Lázcsillapítók szedése'
UNION ALL
SELECT 82, 82, 7, 7, '2024-07-21', 'Szédülés', 'Pihenés'
UNION ALL
SELECT 83, 83, 8, 8, '2024-07-22', 'Depresszió', 'Antidepresszáns szedése'
UNION ALL
SELECT 84, 84, 9, 9, '2024-07-23', 'Epekő', 'Diétás kezelés'
UNION ALL
SELECT 85, 85, 10, 10, '2024-07-24', 'Allergiás reakció', 'Antihisztamin szedése'
UNION ALL
SELECT 86, 86, 11, 11, '2024-07-25', 'Hörghurut', 'Gyógyszerek szedése'
UNION ALL
SELECT 87, 87, 12, 12, '2024-07-26', 'Köhögés', 'Köhögéscsillapítók szedése'
UNION ALL
SELECT 88, 88, 13, 13, '2024-07-27', 'Migrén', 'Pihenés'
UNION ALL
SELECT 89, 89, 14, 14, '2024-07-28', 'Fogfájás', 'Fogfájás elleni gyógyszer szedése'
UNION ALL
SELECT 90, 90, 15, 15, '2024-07-29', 'Fáradtság', 'Pihenés'
UNION ALL
SELECT 91, 91, 16, 16, '2024-07-30', 'Ízületi gyulladás', 'Fájdalomcsillapítók szedése'
UNION ALL
SELECT 92, 92, 17, 17, '2024-07-31', 'Szorongás', 'Pszihiátriai kezelés'
UNION ALL
SELECT 93, 93, 18, 18, '2024-08-01', 'Fogfájás', 'Fogfájás elleni gyógyszer szedése'
UNION ALL
SELECT 94, 94, 19, 19, '2024-08-02', 'Hasmenés', 'Folyadékpótlás'
UNION ALL
SELECT 95, 95, 20, 20, '2024-08-03', 'Magas vérnyomás', 'Vérnyomáscsökkentők szedése'
UNION ALL
SELECT 96, 96, 21, 21, '2024-08-04', 'Migrén', 'Pihenés'
UNION ALL
SELECT 97, 97, 22, 22, '2024-08-05', 'Depresszió', 'Antidepresszáns szedése'
UNION ALL
SELECT 98, 98, 23, 23, '2024-08-06', 'Epekő', 'Diétás kezelés'
UNION ALL
SELECT 99, 99, 24, 24, '2024-08-07', 'Allergiás reakció', 'Antihisztamin szedése'
UNION ALL
SELECT 100, 100, 25, 25, '2024-08-08', 'Hörghurut', 'Gyógyszerek szedése';

