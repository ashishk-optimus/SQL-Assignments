-- Solution Assignment - DB02
----------------------------------------------Question : (1)----------------------------------------------------------------

--Query to get Users_name, Product_Name, Ordered_Quantity, Amount_Paid, Last_Transaction_Date, Balance

SELECT u.Users_Name, p.Product_Name, C.Ordered_Quantity,C.Amount_Paid, C.Last_Transaction_Date, (p.Cost_Per_Item * C.Ordered_Quantity - COALESCE(C.Amount_Paid, 0)) AS Balance 
FROM t_product_master p
INNER JOIN
	(SELECT A.Users_Id, A.Product_Id,A2.Amount_Paid, A.Ordered_Quantity, B.Last_Transaction_Date  
	FROM
	(SELECT Users_Id, Product_Id, SUM(Transaction_Amount) AS Ordered_Quantity FROM t_transaction  WHERE Transaction_Type = 'Order' GROUP BY Users_Id, Product_Id )A
	LEFT JOIN
	(SELECT Users_Id, MAX(Transaction_Date) AS Last_Transaction_Date FROM t_transaction  GROUP BY Users_Id)B
	ON A.Users_Id = B.Users_Id
	LEFT JOIN
	(SELECT Users_Id, Product_Id, SUM(Transaction_Amount) AS Amount_Paid FROM t_transaction  WHERE Transaction_Type = 'Payment' GROUP BY Users_Id, Product_Id )A2
	ON B.Users_Id = A2.Users_Id AND A.Product_Id = A2.Product_Id)C
ON p.Product_Id = C.Product_Id
INNER JOIN
t_user_master u
ON C.Users_Id = u.Users_Id

------------------------------------------------------------------------------------------------------------------------------
