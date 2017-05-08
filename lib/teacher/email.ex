defmodule Teacher.Email do
  import Bamboo.Email

  def movie_removal_email do
    new_email(
      from: "no-reply@elixircasts.io",
      to: "hello@elixircasts.io",
      subject: "Movie Added",
      text_body: "A movie was added.",
      html_body: "A movie was added."
    )
  end
end
