defmodule Rockemeals do
  alias Rockemeals.Meals.Create, as: MealCreate
  alias Rockemeals.Meals.Delete, as: MealDelete
  alias Rockemeals.Meals.Get, as: MealGet
  alias Rockemeals.Meals.Update, as: MealUpdate

  defdelegate create_meal(params), to: MealCreate, as: :call
  defdelegate get_meal_by_id(id), to: MealGet, as: :by_id
  defdelegate delete_meal(id), to: MealDelete, as: :call
  defdelegate update_meal(params), to: MealUpdate, as: :call
end
