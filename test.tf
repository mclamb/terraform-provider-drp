provider "drp" {
  api_user     = "rocketskates"
  api_password = "r0cketsk8ts"
  api_url      = "https://127.0.0.1:8092"
}

resource "drp_instance" "one_random_node" {
  count = 1

  # Settable values
  # name = force the name to something.
  # bootenv = force the bootenv to image
  # description = force the description to something
  # owner = force the terraform.owner value to something

  bootenv     = "ubuntu-16.04-install"
  description = "updated description"
  name        = "greg2"
  userdata    = "yaml cloudinit file"
  # List of profiles to apply to node (if not already there)
  profiles = ["mandy", "clause"]
  # list of parameters to set with their string value forms
  parameters = [
    {
      name = "fred"

      value = "tuesday"
    },
    {
      name = "jill"

      value = "thursday"
    },
  ]
  # list of filters to reduce the nodes to draw from.
  # Name, UUID, and Address are unique forcing singletons
  filters = [{
    name = "Name"

    value = "greg2"
  }]
}
