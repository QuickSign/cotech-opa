package disco03

test_gauthier_is_too_young {
    not authorized with input as {
      "name": "Gauthier",
      "age": "11",
      "gender" : "Male"
    }
}

test_arnaud_is_too_male {
    not authorized with input as {
      "name": "Arnaud",
      "age": "40",
      "gender" : "Male"
    }
}

test_lorie_is_not_vip {
    not authorized with input as {
      "name": "Lorie",
      "age": "40",
      "gender" : "Female"
    }
}

test_chantal_can_enter {
    authorized with input as {
      "name": "Chantal",
      "age": "79",
      "gender" : "Female"
    }
}
