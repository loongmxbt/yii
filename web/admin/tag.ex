defmodule Yii.ExAdmin.Tag do
  use ExAdmin.Register

  register_resource Yii.Tag do
    menu priority: 22, label: "商品标签"
  end
end
