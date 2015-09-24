# Schizo

**Just play with string :kissing_heart:**

## Example

```elixir
iex> Schizo.uppercase("foo bar baz")
"foo BAR baz"

iex> Schizo.unvowel("foo bar baz")
"foo br baz"

iex> schizo.lowercase("Foo BAR BAZ")
"Foo bar BAZ"
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add schizo to your list of dependencies in `mix.exs`:

        def deps do
          [{:schizo, "~> 0.0.1"}]
        end

  2. Ensure schizo is started before your application:

        def application do
          [applications: [:schizo]]
        end
