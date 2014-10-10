# Add dependency
{:cowboy, "~> 1.0.0"},
{:plug, "~> 0.8.0"}

# Define you plug. Assuming HelloPlug

# Start your plug
Plug.Adapters.Cowboy.http HelloPlug, []