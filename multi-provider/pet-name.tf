resource "local_file" "my-pet" {
	    content = "My pet is called ${random_pet.other-pet.id}!!"
	    filename = "petname.txt"
}


resource "random_pet" "other-pet" {
	      prefix = "Mr"
	      separator = "."
	      length = "1"
}