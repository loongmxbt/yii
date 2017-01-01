defmodule Yii.ExAdmin.Post do
  use ExAdmin.Register

  register_resource Yii.Post do
    menu priority: 41, label: "文章"
  end
end
