defmodule Teacher.Email do
  use Bamboo.Phoenix, view: Teacher.EmailView

  def movie_removal_email(movie) do
    base_email
    |> subject("A movie was removed")
    |> assign(:movie, movie)
    |> render("movie_removal.html")
  end

  def movie_creation_email(movie) do
    base_email
    |> subject("A movie was added")
    |> assign(:movie, movie)
    |> render("movie_creation.html")
  end

  defp base_email do
    new_email
    |> from("no-reply@elixircasts.io")
    |> to("hello@elixircasts.io")
    |> put_html_layout({Teacher.LayoutView, "email.html"})
  end
end
