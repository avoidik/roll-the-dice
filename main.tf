resource "random_integer" "d20" {
  min = 1
  max = 20
  keepers = {
    # Generate a new id each time
    timestamp = timestamp()
  }
}
# Rolls the d20 and reports the result.
resource "null_resource" "roll-1d20" {
  provisioner "local-exec" {
    command = "echo 🎲 Your roll is: ${random_integer.d20.result} 🎲"
  }
}
