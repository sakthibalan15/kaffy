defmodule AdminPanel.Kaffy.Config do
  def create_resources(_conn) do
    [
      accounts: [
        resources: [
          user: [schema: AdminPanel.Accounts.User],
          employee: [schema: AdminPanel.Accounts.Employee]
        ]
      ]
    ]
  end
end
