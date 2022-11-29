
/*  query4  */
select product.pro_name as Product_Name, `order`.* from product inner join supplier_pricing 
on supplier_pricing.pro_id=product.pro_id
inner join `order` on `order`.pricing_id= supplier_pricing.pricing_id where `order`.cus_id=2;



 

