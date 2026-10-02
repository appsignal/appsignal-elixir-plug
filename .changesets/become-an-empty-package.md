---
bump: major
type: change
---

Become an empty package that only depends on `appsignal` 3.x, which includes the Plug integration. Remove `appsignal_plug` from your application's dependencies and depend on `{:appsignal, "~> 3.0"}` instead. `use Appsignal.Plug` and `Appsignal.Plug.put_name/2` keep working as they are.
