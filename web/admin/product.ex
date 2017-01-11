defmodule Yii.ExAdmin.Product do
  use ExAdmin.Register
  alias Yii.{Repo, Category, Tag}

  register_resource Yii.Product do
    menu priority: 31, label: "商品"
    index do
      selectable_column

      column :id
      column :name
      column :price
      column :category
      actions
    end

    show product do
      attributes_table do
        row :id
        row :name
        row :price
        row :category
        row :image
        row :description
      end
      panel "商品标签" do
        table_for product.tags do
          column :name
        end
      end
      panel "商品Sku" do
        table_for product.skus do
          column :code
          column :price
          column :cycles
          column :location
        end
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

    # https://github.com/smpallen99/ex_admin/issues/266
    query do
      %{
        all: [preload: [:tags, :category, :skus]]
      }
    end

  end
end
