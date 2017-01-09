defmodule Yii.ExAdmin.Order do
  use ExAdmin.Register

  register_resource Yii.Order do
    menu priority: 33, label: "订单"
  end
end
