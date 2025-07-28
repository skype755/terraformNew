# resource "aws_instnace" "this" # this tag is for terraform
resource "aws_instance" "expense" {
  count                  = 3
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.expense.id]
  instance_type          = "t3.micro"
  # this tag is for our purpose
  tags = {
    Name = var.instances[count.index]
  }
}



resource "aws_security_group" "expense" {
  name        = "expense"
  description = "Allow TLS inbound traffic and all outbound traffic"
  # key = value 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
  tags = var.sg_tags

}
