defmodule HeatTags.Messages.Create do
  alias HeatTags.{Message, Repo}

  def call(params) do
    params
    |> Message.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Message{}} = result), do: result # pattern match (casamento de padrão)
  defp handle_insert({:error, result}), do: {:error, %{result: result, status: :bad_request}} # iden

end
