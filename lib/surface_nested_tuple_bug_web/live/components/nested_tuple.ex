defmodule NestedTuple do
  use Surface.Component

  def render(assigns) do
    ~H"""
    <ul>
      <li :for={{ {a, {b, c}} <- [{"a", {"b", "c"}}]}}>
        {{ c }}
      </li>
    </ul>
    """
  end
end
