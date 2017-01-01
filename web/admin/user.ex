defmodule Yii.ExAdmin.User do
  use ExAdmin.Register

  register_resource Yii.User do
    menu priority: 11, label: "用户"
  end
end
