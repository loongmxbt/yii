# Order（id）

作用：记录物品流转过程，记录sku的历史，单次买卖的生命周期
sku_id, user_id,


product和height和weight等记录的用户下单的填写数据  订单数据  收获地址
sku记录了发货数据  发货数据  

mix phoenix.gen.model Order orders product_id:references:products user_id:references:users height:integer weight:integer size:string detail:string destination:string sku_id:references:skus

payment_id 一一对应
