use Capstone;
SELECT * FROM df8;
/* Query-1 */
SELECT Ind_ID,AVG(Annual_income),Type_Income FROM df8 GROUP BY Type_Income;
/*Query-2 */
SELECT Ind_ID,GENDER FROM df8 WHERE Car_Owner = 'Y' AND Propert_Owner = 'Y' AND GENDER='F';
/* Query-3 */
SELECT Ind_ID,GENDER FROM df8 WHERE GENDER='M' AND Housing_type ='With parents';
/*Query-4 */
SELECT Ind_ID, Annual_income FROM df8 ORDER BY Annual_income DESC LIMIT 5;
/*Query-5 */
SELECT COUNT(*) FROM df8 WHERE Ind_ID IN(SELECT Ind_ID FROM df8 WHERE label=1 AND Marital_status='Married');
/*Query-6*/
SELECT COUNT(*) FROM df8 WHERE EDUCATION IN(SELECT MAX(EDUCATION) FROM df8);
/* Query-7 */
SELECT GENDER,Marital_status,COUNT(*) AS "COUNT_OF_BAD_CREDIT_SCORE" FROM df8 WHERE label=1 and Marital_status ='Married' GROUP BY GENDER,Marital_status ORDER BY COUNT_OF_BAD_CREDIT_SCORE DESC LIMIT 1;
