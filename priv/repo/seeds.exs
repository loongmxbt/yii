alias Yii.{Repo, User, Category, Status, Product, Tag, ProductTag, Sku, Order}

User.changeset(%User{}, %{name: "dragonszy", email: "dragonszy@163.com", phone: "13681172909", password: "szy555", password_confirmation: "szy555"})
|> Repo.insert!

Category.changeset(%Category{}, %{name: "男士西服套装", slug: "man-suit"}) |> Repo.insert!
Category.changeset(%Category{}, %{name: "女士西服套装", slug: "woman-suit"}) |> Repo.insert!

Status.changeset(%Status{}, %{name: "在库"}) |> Repo.insert!
Status.changeset(%Status{}, %{name: "借出"}) |> Repo.insert!
Status.changeset(%Status{}, %{name: "清洗"}) |> Repo.insert!
Status.changeset(%Status{}, %{name: "损坏"}) |> Repo.insert!

Product.changeset(%Product{}, %{name: "男款黑色职业西装", price: "15", category_id: 1}) |> Repo.insert!
Product.changeset(%Product{}, %{name: "男款灰色休闲西装", price: "15", category_id: 1}) |> Repo.insert!
Product.changeset(%Product{}, %{name: "女款黑色职业西装", price: "15", category_id: 2}) |> Repo.insert!

Tag.changeset(%Tag{}, %{name: "男款", slug: "man"}) |> Repo.insert!
Tag.changeset(%Tag{}, %{name: "女款", slug: "woman"}) |> Repo.insert!
Tag.changeset(%Tag{}, %{name: "黑色", slug: "black"}) |> Repo.insert!
Tag.changeset(%Tag{}, %{name: "灰色", slug: "grey"}) |> Repo.insert!
Tag.changeset(%Tag{}, %{name: "职业", slug: "business"}) |> Repo.insert!
Tag.changeset(%Tag{}, %{name: "休闲", slug: "casual"}) |> Repo.insert!

ProductTag.changeset(%ProductTag{}, %{product_id: 1, tag_id: 1}) |> Repo.insert!
ProductTag.changeset(%ProductTag{}, %{product_id: 1, tag_id: 3}) |> Repo.insert!
ProductTag.changeset(%ProductTag{}, %{product_id: 1, tag_id: 5}) |> Repo.insert!

ProductTag.changeset(%ProductTag{}, %{product_id: 2, tag_id: 1}) |> Repo.insert!
ProductTag.changeset(%ProductTag{}, %{product_id: 2, tag_id: 4}) |> Repo.insert!
ProductTag.changeset(%ProductTag{}, %{product_id: 2, tag_id: 6}) |> Repo.insert!

ProductTag.changeset(%ProductTag{}, %{product_id: 3, tag_id: 2}) |> Repo.insert!
ProductTag.changeset(%ProductTag{}, %{product_id: 3, tag_id: 3}) |> Repo.insert!
ProductTag.changeset(%ProductTag{}, %{product_id: 3, tag_id: 5}) |> Repo.insert!


Sku.changeset(%Sku{}, %{price: 15, cycles: 2, code: "xxxx-xxxx-xxxx", location: "北京昌平库房", product_id: 1, status_id: 1, user_id: 1})
|> Repo.insert!


Order.changeset(%Order{}, %{height: 180, weight: 60, size: "L", detail: "需要领带", destination: "华北电力大学", product_id: 1, user_id: 1, sku_id: 1})
|> Repo.insert!
