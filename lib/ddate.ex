defmodule Ddate do
  @moduledoc """
  Elixir implementation of the classic Discordian Date system
  which converts Gregorian Dates to Discordian Dates.
  """

  @doc """
  Ddate.ddate

  Returns Discordian Date as a string for the current date.
  """
  def ddate do
    {date, _time} = :erlang.localtime()
    ddate(date)
  end

  @doc """
  Ddate.ddate({year, month, day})

  Returns Discordian Date as a string for the provided date in
  erlang tuple format.
  """
  def ddate({year, month, day}) do
    isTibs = :calendar.is_leap_year(year)

    getdate(isTibs, daynum({year, month, day}))
    |> formatddate(year)
  end

  defp getdate(false, daynum) do
    {false, div(daynum, 73), rem(daynum, 73) + 1, rem(daynum, 5)}
  end

  defp getdate(true, daynum) when daynum < 59 do
    {false, div(daynum, 73), rem(daynum, 73) + 1, rem(daynum, 5)}
  end

  defp getdate(true, 59) do
    {:sttibs, 0, 0, 0}
  end

  defp getdate(true, daynum) when daynum > 59 do
    newdaynum = daynum - 1
    {false, div(newdaynum, 73), rem(newdaynum, 73) + 1, rem(newdaynum, 5)}
  end

  defp formatddate({:sttibs, _, _, _}, year) do
    "St Tibs Day, YOLD #{year + 1166}"
  end

  defp formatddate({false, season, 5, day}, year) do
    "#{longday(day)}, St #{longpatron(season)} of #{longseason(season)} YOLD #{year + 1166}"
  end

  defp formatddate({false, season, 50, day}, year) do
    "#{longday(day)}, #{longholyday(season)} of #{longseason(season)} YOLD #{year + 1166}"
  end

  defp formatddate({false, season, date, day}, year) do
    "#{longday(day)}, #{date}#{ordinal(date)} of #{longseason(season)} YOLD #{year + 1166}"
  end

  defp daynum({year, month, day}) do
    :calendar.date_to_gregorian_days({year, month, day})
    |> :erlang.-(:calendar.date_to_gregorian_days({year, 1, 1}))
  end

  defp longseason(0), do: "Chaos"
  defp longseason(1), do: "Discord"
  defp longseason(2), do: "Confusion"
  defp longseason(3), do: "Bureaucracy"
  defp longseason(4), do: "The Aftermath"

  defp longday(0), do: "Sweetmorn"
  defp longday(1), do: "Boomtime"
  defp longday(2), do: "Pungenday"
  defp longday(3), do: "Prickle-Prickle"
  defp longday(4), do: "Setting Orange"

  defp longpatron(0), do: "Mungday"
  defp longpatron(1), do: "Mojoday"
  defp longpatron(2), do: "Syaday"
  defp longpatron(3), do: "Zaraday"
  defp longpatron(4), do: "Maladay"

  defp longholyday(0), do: "Chaoflux"
  defp longholyday(1), do: "Discoflux"
  defp longholyday(2), do: "Confuflux"
  defp longholyday(3), do: "Bureflux"
  defp longholyday(4), do: "Afflux"

  defp ordinal(number) when number in [10, 11, 12, 13], do: "th"
  defp ordinal(number) when rem(number, 10) == 1, do: "st"
  defp ordinal(number) when rem(number, 10) == 2, do: "nd"
  defp ordinal(number) when rem(number, 10) == 3, do: "rd"
  defp ordinal(_), do: "th"
end
