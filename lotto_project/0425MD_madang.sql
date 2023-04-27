CREATE TABLE lotto_main (
seq_no NUMBER NOT NULL,     --로또회차
lottery_date DATE,                 --로또추첨일
num1 NUMBER,                     -- 당첨번호 1,2,3,4,5,6보너스번호
num2 NUMBER,
num3 NUMBER,
num4 NUMBER,
num5 NUMBER,
num6 NUMBER,
bonus NUMBER);


ALTER TABLE lotto_main
ADD CONSTRAINTS lotto_main_pk PRIMARY KEY (seq_no);

SELECT * FROM TAB;


select * from lotto_main;

CREATE TABLE lotto_detail (
seq_no NUMBER NOT NULL,
rank_no NUMBER NOT NULL,
win_person_no NUMBER,
win_money NUMBER);

ALTER TABLE lotto_detail
ADD CONSTRAINTS lotto_detail_pk PRIMARY KEY (seq_no, rank_no);

SELECT num1, num2, num3, num4, num5, num6,  COUNT(*)
FROM lotto_main
GROUP BY num1, num2, num3, num4, num5, num6
HAVING COUNT(*) > 1;


SELECT NUM1 lotto_num, COUNT(*) CNT
FROM lotto_main
GROUP BY NUM1
ORDER BY 2 DESC;


SELECT lotto_num, SUM(CNT) AS CNT
FROM (SELECT num1 lotto_num, COUNT(*) CNT
	FROM lotto_main
	GROUP BY num1
	UNION ALL
	SELECT num2 lotto_num, COUNT(*) CNT
	FROM lotto_main
	GROUP BY num2
	UNION ALL
	SELECT num3 lotto_num, COUNT(*) CNT
	FROM lotto_main
	GROUP BY num3
	UNION ALL
	SELECT num4 lotto_num, COUNT(*) CNT
	FROM lotto_main
	GROUP BY num4
	UNION ALL
	SELECT num5 lotto_num, COUNT(*) CNT
	FROM lotto_main
	GROUP BY num5
	UNION ALL
	SELECT num6 lotto_num, COUNT(*) CNT
	FROM lotto_main
	GROUP BY num6
)
GROUP BY lotto_num
ORDER BY 2 DESC;

SELECT a.seq_no
	,a.lottery_date
	,b.win_person_no
	,b.win_money
	,a.num1 ,a.num2 ,a.num3
	,a.num4 ,a.num5 ,a.num6 ,a.bonus
FROM lotto_main a
	,lotto_detail b
WHERE a.seq_no = b.seq_no
AND b.rank_no = 1
ORDER BY b.win_money DESC;


