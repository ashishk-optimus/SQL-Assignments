-- Solution Assignment - DB03

--------------------Question : 1(a)-----------------------

--Query to get full name and date of birth for those employees whose birth date falls in the last day of any month.

SELECT EMP_f_name + ' ' + EMP_m_name + ' ' + EMP_l_name AS Name, Emp_DOB AS [Date Of Birth]
FROM t_emp
WHERE Emp_DOB = EOMONTH(Emp_DOB)

--------------------Question : 1(b)-----------------------

--Query to get Name, Got_Increment, Previous_Salary, Current_Salary, Total Worked Hours, Last Worked Activity, Hours Worked

SELECT S.Emp_id,S.Name, S.[Total Worked Hours], 
IIF(X.[Previous Salary] = X.[Current Salary], 'NO', 'YES')AS 'Got_Increment'
, X.[Previous Salary], X.[Current Salary],ta.Activity_description AS [Last Worked Activity], ad.Atten_end_hrs AS [Hours Worked ]
FROM t_atten_det ad
INNER JOIN
	(SELECT a.Emp_id,e.EMP_f_name + ' ' + COALESCE(e.EMP_m_name,'') + ' ' + COALESCE(e.EMP_l_name,'') AS Name, SUM(a.Atten_end_hrs) AS [Total Worked Hours], MAX(a.Atten_start_datetime) AS [Last Worked Activity]
	FROM t_emp e
	INNER JOIN t_atten_det a
	ON
	e.Emp_id = a.Emp_id
	INNER JOIN t_activity ac
	ON a.Activity_id = ac.Activity_id
	GROUP BY e.EMP_f_name + ' ' + COALESCE(e.EMP_m_name,'') + ' ' + COALESCE(e.EMP_l_name,''), a.Emp_id)S
ON ad.Atten_start_datetime = S.[Last Worked Activity]
INNER JOIN t_activity ta
ON
ad.Activity_id = ta.Activity_id
INNER JOIN 
(SELECT s1.Emp_id,s1.New_Salary AS [Previous Salary], s2.New_Salary AS [Current Salary]
FROM t_salary s1
INNER JOIN t_salary s2
ON
s1.Emp_id = s2.Emp_id AND s1.Changed_date < s2.Changed_date) X
ON
S.Emp_id = X.Emp_id

-------------

