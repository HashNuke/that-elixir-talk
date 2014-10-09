# Add as dependency
{:poison, "~> 1.2.0"}


# Decode JSON
Poison.decode! "{\"x\": 1}"


# Encode as JSON
Poison.encode! %{"x" => 1}