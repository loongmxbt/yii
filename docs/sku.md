# Sku（id）

作用：标记每个物品，包括物品名称，种类，标签，采购价格，流转次数，当前状态

mix phoenix.gen.model Sku skus product_id:references:products price:integer cycles:integer code:string status:string location:string user_id:references:users

sku的price是采购价

# Status(合并到Sku)

作用：描述sku的此刻状态，包括借出/仓库/洗涤/损坏，地点，谁手里

mix phoenix.gen.model Status statuses name:string location:string user_id:integer sku_id:references:skus
