variable "ami-type"{
    type="map"
    default = {
        us-east-1 = "ami-0c6b1d09930fac512"
        us-east-2 = "ami-0ebbf2179e615c338"
    } 
}


variable "sec-grp" {
  type = "list"

  default = ["sg-0701170e85937c437","sg-080e3d791b269b6b2"]

}

variable env{}
variable region{}

variable "instance-type" {
  type = "map"
  default = {
      dev = "t2.micro"
      test = "t2.medium"
  }
}
