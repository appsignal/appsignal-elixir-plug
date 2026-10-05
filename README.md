# appsignal_plug

Since AppSignal for Elixir 3.0, the Plug integration is part of the
[`appsignal`](https://github.com/appsignal/appsignal-elixir) package. This
package is empty, and only depends on `appsignal` 3.x.

Remove `appsignal_plug` from your dependencies and depend on `appsignal`
instead:

``` elixir
defp deps do
  [
    {:appsignal, "~> 3.0"}
  ]
end
```

Then run:

``` shell
mix deps.unlock appsignal_plug
mix deps.get
```

`use Appsignal.Plug` and `Appsignal.Plug.put_name/2` keep working as they are.
See the [upgrade guide](https://docs.appsignal.com/elixir/installation/upgrade-from-2-to-3)
and the [Plug integration
documentation](https://docs.appsignal.com/elixir/integrations/plug.html).

The source of `appsignal_plug` 2.x is on the
[`2.x-latest`](https://github.com/appsignal/appsignal-elixir-plug/tree/2.x-latest)
branch.
