Ddate
=====

Elixir implementation of Gregorian Date to Discordian Date conversion
utility mercilessly ripped from core-utils.

# Usage

[red@aneristic ddate]$ iex -S mix
Erlang/OTP 18 [erts-7.1] [source-2882b0c] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Compiled lib/ddate.ex
Generated ddate app
Interactive Elixir (1.0.5) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Ddate.ddate
"Sweetmorn, 14th of The Aftermath YOLD 3181"
iex(2)> Ddate.ddate({2016,2,29})
"St Tibs Day, YOLD 3182"
iex(3)> 

