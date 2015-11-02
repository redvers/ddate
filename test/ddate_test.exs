defmodule DdateTest do
  use ExUnit.Case

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "First of year Non-Leap", do: assert Ddate.ddate({2015,1,1}) == "Sweetmorn, 1st of Chaos YOLD 3181"
  test "Last of year Non-Leap", do: assert Ddate.ddate({2015,12,31}) == "Setting Orange, 73rd of The Aftermath YOLD 3181"
  test "Patron of Chaos Non-Leap", do: assert Ddate.ddate({2015,1,5}) == "Setting Orange, St Mungday of Chaos YOLD 3181"
  test "Patron of Discord Non-Leap", do: assert Ddate.ddate({2015,3,19}) == "Pungenday, St Mojoday of Discord YOLD 3181"
  test "Patron of Confusion Non-Leap", do: assert Ddate.ddate({2015,5,31}) == "Sweetmorn, St Syaday of Confusion YOLD 3181"
  test "Patron of Bureaucracy Non-Leap", do: assert Ddate.ddate({2015,8,12}) == "Prickle-Prickle, St Zaraday of Bureaucracy YOLD 3181"
  test "Patron of The Aftermath Non-Leap", do: assert Ddate.ddate({2015,10,24}) == "Boomtime, St Maladay of The Aftermath YOLD 3181"
  test "Holyday of Chaos Non-Leap", do: assert Ddate.ddate({2015,2,19}) == "Setting Orange, Chaoflux of Chaos YOLD 3181"
  test "Holyday of Discord Non-Leap", do: assert Ddate.ddate({2015,5,3}) == "Pungenday, Discoflux of Discord YOLD 3181"
  test "Holyday of Confusion Non-Leap", do: assert Ddate.ddate({2015,7,15}) == "Sweetmorn, Confuflux of Confusion YOLD 3181"
  test "Holyday of Bureaucracy Non-Leap", do: assert Ddate.ddate({2015,9,26}) == "Prickle-Prickle, Bureflux of Bureaucracy YOLD 3181"
  test "Holyday of The Aftermath Non-Leap", do: assert Ddate.ddate({2015,12,8}) == "Boomtime, Afflux of The Aftermath YOLD 3181"

  test "First of year Leap", do: assert Ddate.ddate({2016,1,1}) == "Sweetmorn, 1st of Chaos YOLD 3182"
  test "Last of year Leap", do: assert Ddate.ddate({2016,12,31}) == "Setting Orange, 73rd of The Aftermath YOLD 3182"
  test "St Tibs day", do: assert Ddate.ddate({2016,2,29}) == "St Tibs Day, YOLD 3182"
  test "Patron of Chaos Leap", do: assert Ddate.ddate({2016,1,5}) == "Setting Orange, St Mungday of Chaos YOLD 3182"
  test "Patron of Discord Leap", do: assert Ddate.ddate({2016,3,19}) == "Pungenday, St Mojoday of Discord YOLD 3182"
  test "Patron of Confusion Leap", do: assert Ddate.ddate({2016,5,31}) == "Sweetmorn, St Syaday of Confusion YOLD 3182"
  test "Patron of Bureaucracy Leap", do: assert Ddate.ddate({2016,8,12}) == "Prickle-Prickle, St Zaraday of Bureaucracy YOLD 3182"
  test "Patron of The Aftermath Leap", do: assert Ddate.ddate({2016,10,24}) == "Boomtime, St Maladay of The Aftermath YOLD 3182"
  test "Holyday of Chaos Leap", do: assert Ddate.ddate({2016,2,19}) == "Setting Orange, Chaoflux of Chaos YOLD 3182"
  test "Holyday of Discord Leap", do: assert Ddate.ddate({2016,5,3}) == "Pungenday, Discoflux of Discord YOLD 3182"
  test "Holyday of Confusion Leap", do: assert Ddate.ddate({2016,7,15}) == "Sweetmorn, Confuflux of Confusion YOLD 3182"
  test "Holyday of Bureaucracy Leap", do: assert Ddate.ddate({2016,9,26}) == "Prickle-Prickle, Bureflux of Bureaucracy YOLD 3182"
  test "Holyday of The Aftermath Leap", do: assert Ddate.ddate({2016,12,8}) == "Boomtime, Afflux of The Aftermath YOLD 3182"

end
