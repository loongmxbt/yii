defmodule Yii.Repo do
  use Ecto.Repo, otp_app: :yii
  use Scrivener, page_size: 10
end
