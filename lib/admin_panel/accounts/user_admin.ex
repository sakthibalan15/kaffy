defmodule AdminPanel.Accounts.UserAdmin do
  def widgets(_schema, _conn) do
    [
      %{
        type: "tidbit",
        title: "Users",
        content: "9",
        icon: "thumbs-up",
        order: 1,
        width: 6,
      },
      %{
        type: "tidbit",
        title: "Employees",
        content: "2",
        icon: "thumbs-up",
        order: 2,
        width: 6,
      },
      %{
        type: "chart",
        title: "This week's sales",
        order: 8,
        width: 12,
        content: %{
          x: ["Mon", "Tue", "Wed", "Thu", "Today"],
          y: [150, 230, 75, 240, 290],
          y_title: "INR"
        }
      },
      %{
        type: "chart",
        title: "Configuration",
        order: 8,
        width: 12,
        content: %{
          type: "line",
          x: ['January', 'February', 'March', 'April', 'May', 'June'],
          y: [10, 20, 30, 40, 50, 60],
          y_title: "Degree"
        }
      }
    ]
  end
end
