# Add dependency
{:hound, github: "HashNuke/hound"}

# import helpers
use Hound.Helpers

# start browser session
hound_session

test "link to FAQ" do
  navigate_to "http://example.com"

  find_element(:css, ".faq-link")
  |> click
end