defmodule Yii.ExAdmin.Category do
  use ExAdmin.Register

  register_resource Yii.Category do
    menu priority: 21, label: "商品分类"
  end
end
