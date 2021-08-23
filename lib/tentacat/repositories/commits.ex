defmodule Tentacat.Repositories.Commits do
  import Tentacat
  alias Tentacat.Client

  @doc """
  List commits for a specific repository.

  ## Example

      Tentacat.Repositories.Commits.list "elixir-lang", "elixir"
      Tentacat.Repositories.Commits.list client, "elixir-lang", "elixir"

  More info at: https://developer.github.com/v3/repos/#list-contributors
  """
  @spec list(Client.t(), binary, binary) :: Tentacat.response()
  def list(client \\ %Client{}, owner, repo) do
    get("repos/#{owner}/#{repo}/commits", client)
  end
end
