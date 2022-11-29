 
/*      Query 3   */
select cus_gender as Gender, count(cus_id) as `Number Of Customer` from customer where cus_id in
    (select cus_id from `order` where ord_amount >= 3000) group by cus_gender;











