with pay as (

select 
ID as payment_id,
orderid as order_id,
paymentmethod as payment_method,
status,
AMOUNT/100 as AMOUNT

 from raw.stripe.payment

)

select * from pay
