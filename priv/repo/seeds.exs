alias Yii.{Repo, User, Category, Status, Product}

User.changeset(%User{}, %{name: "dragonszy", email: "dragonszy@163.com", password: "szy555", password_confirmation: "szy555"})
|> Repo.insert!

Category.changeset(%Category{}, %{name: "男士西服套装", slug: "man-suit"}) |> Repo.insert!
Category.changeset(%Category{}, %{name: "女士西服套装", slug: "woman-suit"}) |> Repo.insert!

Status.changeset(%Status{}, %{name: "在库"}) |> Repo.insert!
Status.changeset(%Status{}, %{name: "借出"}) |> Repo.insert!
Status.changeset(%Status{}, %{name: "清洗"}) |> Repo.insert!
Status.changeset(%Status{}, %{name: "损坏"}) |> Repo.insert!

Product.changeset(%Product{}, %{name: "男款黑色职业西装", price: "15", category_id: 1}) |> Repo.insert!
