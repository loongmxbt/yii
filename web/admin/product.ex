defmodule Yii.ExAdmin.Product do
  use ExAdmin.Register
  alias Yii.{Repo, Category, Tag}

  register_resource Yii.Product do
    menu priority: 31, label: "商品"
  end

  show product do
    attributes_table do
      row :name
      row :price
      row :image
      row :description
      row :category
    end
    panel "Tags" do
      # table_for product.tags do
      #   column :name, link: true
      # end
    end
  end

  form product do
    inputs do
      input product, :name
      input product, :price
      input product, :image
      input product, :description
      input product, :category, collection: Repo.all(Category)
    end
    inputs "Tags" do
      inputs :tags, as: :check_boxes, collection: Repo.all(Tag)
    end
  end

  # Issue: https://github.com/smpallen99/ex_admin/issues/266
  query do
    %{
      all: [preload: [:tags]]
    }
  end
end
