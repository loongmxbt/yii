# Product

Product has_many skus
sku belongs_to product

mix phoenix.gen.model Product products name:string price:integer category_id:references:categories

商品的price是标价

 mix phoenix.gen.json --no-model Product products name:string price:integer image:string description:string
