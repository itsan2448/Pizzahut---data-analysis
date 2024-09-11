-- types of quantities used

select od.quantity,count(od.order_details_id) as count 
from order_Details as od
group by od.quantity;