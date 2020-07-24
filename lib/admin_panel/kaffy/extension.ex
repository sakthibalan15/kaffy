defmodule AdminPanel.Kaffy.Extension do
  def stylesheets(_conn) do
    [
      {:safe, ~s(<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>)},
      {:safe, ~s(<link rel="stylesheet" href="/css/vendor.bundle.base.css" />)},
      {:safe, ~s(<link rel="stylesheet" href="/css/style.css" />)},
      {:safe, ~s(<link rel="stylesheet" href="/css/flatpickr.min.css" />)},
      {:safe, ~s(<link rel="stylesheet" href="/css/kaffy.css" />)}
    ]
  end

  def javascripts(_conn) do
    [
      {:safe, ~s(<script src="/js/vendor.bundle.base.js"></script>)},
      {:safe, ~s(<script src="/js/flatpickr.min.js"></script>)},
      {:safe, ~s(<script src="/js/Chart.min.js"></script>)},
      {:safe, ~s(<script src="/js/ckeditor.js"></script>)},
      {:safe, ~s(<script src="/js/off-canvas.js"></script>)},
      {:safe, ~s(<script src="/js/hoverable-collapse.js"></script>)},
      {:safe, ~s(<script src="/js/misc.js"></script>)},
      {:safe, ~s(<script src="/js/select-all-checkbox.js"></script>)},
      {:safe, ~s(<script src="/js/phoenix_html.js"></script>)},
      {:safe, ~s(<script src="/js/dashboard.js"></script>)}
    ]
  end
end
