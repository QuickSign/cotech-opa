package disco03

import data.vips as disco_vips

default authorized = false

authorized {
  print("Check age")
  input.age >= 18
  print("Check gender")
  input.gender == "Female"
  print("Check VIP")
  print("Input partygoer", input.name)
  vip_name = disco_vips.names[_]
  print("Follow vip", vip_name)
  input.name == vip_name
}