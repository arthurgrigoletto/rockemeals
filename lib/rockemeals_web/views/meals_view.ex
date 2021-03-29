defmodule RockemealsWeb.MealsView do
  use RockemealsWeb, :view

  alias Rockemeals.Meal

  def render("create.json", %{meal: %Meal{} = meal}) do
    %{
      message: "Meal Created",
      meal: meal
    }
  end

  def render("meal.json", %{meal: %Meal{} = meal}), do: %{meal: meal}
end
