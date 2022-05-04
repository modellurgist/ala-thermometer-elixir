# ALA Thermometer - Elixir with Phoenix LiveView display

Alternative Elixir implementations of John Spray's **C#** [Thermometer example](https://github.com/johnspray74/Thermometer) written according to his [Abstraction Layered Architecture (ALA)](https://www.abstractionlayeredarchitecture.com/).

## Pre-requisites

  - Elixir and Phoenix support locally [[guide]](https://hexdocs.pm/phoenix/installation.html)

## Design Variant Attributes

Here, "original" indicates naming, design, or other conventions introduced in John Spray's original example code above.

Also, the terminology in the column headings below correspond to the names of "layers" that commonly emerge in [ALA architecture applications](https://www.abstractionlayeredarchitecture.com/#truefolders-and-namespaces).


| Variant ID | Abstractions and Layers Naming | Foundation | Programming Paradigms |
|------------|--------------------------------|------------|-----------------------|
| Design A   | Original                       | Original   | Original              |
|            |                                |            |                       |
|            |                                |            |                       |
|            |                                |            |                       |

Table generated via [tablesgenerator.com](https://www.tablesgenerator.com/).

## How variant Elixir/Phoenix projects were created

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