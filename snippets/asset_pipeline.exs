defmodule AssetPipeline do
  import Rotor.BasicRotors
  import CoffeeRotor
  import SassRotor


  def start(options // %{}) do
    options = determine_options(options)
    File.mkdir_p!(options[:output_path])

    Rotor.watch :coffeescripts, options.javascript_paths, fn(_changed_files, all_files)->
      read_files(all_files)
      |> coffee
      |> concat
      |> output_to("#{options[:output_path]}/app.js")
    end, rotor_options


    Rotor.watch :stylesheets, options.stylesheet_paths, fn(_changed_files, all_files)->
      read_files(all_files)
      |> sass
      |> concat
      |> output_to("#{options[:output_path]}/app.css")
    end, rotor_options
  end


  defp determine_options(options) do
    default_options = %{
      base_path: "priv/assets",
      output_path: "priv/static/assets"
    }

    merge_options(default_options, options)
  end


  defp merge_options(options1, options2) do
    options = Map.merge(options1, options2)

    Map.put(options, :javascript_paths, ["#{options.base_path}/javascripts"])
    |> Map.put(:stylesheet_paths, ["#{options.base_path}/stylesheets"])
  end
end