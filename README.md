# PhoenixFeatureBasedApp

To run this Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
    * (You probably want to add some "tags" to your db after this.)
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.



## Directory Structure

This app uses as "feature-based" (or DDD) structure.

### Directories

* "Core" is for core app code that is **identical** across multiple instances of the app framework
  * (currently contains only a "router loader" module

* "Common" is for non-core common code that is **identical** across multiple instances of the app framework
  * (currently contains a "Color" module)

* "Client" is for non-core non-common code that is client-specific (site-specific, or instance-specific),
  i.e. code that is **different** across multiple instances of the app framework
  * currently contains:
    * error code
    * index (a feature, but default or 'root' feature)
    * tags (a feature)

### Feature-based (DDD) structure

Code is organized by "feature".  This keeps all of the following together by feature:
* `controller`, 
* `model` (schema), 
* `view` (layouts, views, templates)
* `test` code

To better understand the structure we can look at the `tags` directory in `lib/client/features`

```
tags/
     index.html.eex           
     show.html.eex            
     tag.ex                   
     tags.ex                  
     tags_controller.ex       
     tags_controller.test.exs 
     tags_view.ex
```

What is implemented in this demo app can be run, but viewing it in the browser won't tell you a lot about the code structure.  The advantage of Elixir/Phoenix is that we can use a different (sic better) structure and still have the structure be invisible at the display layer.

There are lots of advantages to DDD structures and this README is not the place for a long articulation.  However some key advantages are:

* having all files related to a feature visible (and editable) in the same place
* keeping TESTS visible instead of hiding them in some other part of the app (this encourages TDD)
* modularity of features that (ideally) could be enabled/disabled simply by removing their directory



## Tests

For this app, the tests are in the same folders as the code.

The `mix.exs` file has been setup to

* require tests to be named "whatever.test.ex"
* run tests from the "lib" directory (This requires the file `test_helper.exs` to be in the `lib` folder.)




