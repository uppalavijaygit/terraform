
data aws_availability_zones "availability"{}
resource "aws_instance" "FirstDemo" {
    count = 1
    ami = "${lookup(var.ami-type,var.region)}"
    availability_zone = "${data.aws_availability_zones.availability.names[0]}"
    instance_type = "${lookup(var.instance-type, var.env)}"
    vpc_security_group_ids= "${var.sec-grp}"
    tags = {
        Name = "Demo Instance - ${count.index}"
    }
  
}
