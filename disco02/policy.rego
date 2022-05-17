package disco02

default authorized = false

authorized {
  input.age >= 18
  input.gender == "Female"
}
