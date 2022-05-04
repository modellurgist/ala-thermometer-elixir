# ALA Thermometer - Elixir with Phoenix LiveView display

Alternative Elixir implementations of John Spray's [Thermometer example](https://github.com/johnspray74/Thermometer) of [ALA software architecture](https://www.abstractionlayeredarchitecture.com/)

* Pre-requisites
  - Elixir and Phoenix support locally [[guide]](https://hexdocs.pm/phoenix/installation.html)

* Creating the simpler examples without a database via
```
mix phx.new design_a --module Thermometer --app thermometer --no-ecto --no-dashboard --no-mailer
```

[`mix phx.new`](https://hexdocs.pm/phoenix/Mix.Tasks.Phx.New.html#module-options) mentions:
> When passing the --no-ecto flag, Phoenix generators such as phx.gen.html, phx.gen.json, phx.gen.live, and phx.gen.context may no longer work as expected as they generate context files that rely on Ecto for the database access. In those cases, you can pass the --no-context flag to generate most of the HTML and JSON files but skip the context, allowing you to fill in the blanks as desired.

So, when creating LiveViews via generators (if decide to), use the following, since we won't be using the default Phoenix module design anyway:
```
mix phx.gen.live ..... --no-context
```