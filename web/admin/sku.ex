defmodule Yii.ExAdmin.Sku do
  use ExAdmin.Register

  register_resource Yii.Sku do
    menu priority: 32, label: "单件"
  end
end
