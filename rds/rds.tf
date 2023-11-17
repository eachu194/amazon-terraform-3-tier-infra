resource "aws_db_subnet_group" "db_subnet_group" {
    name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-subnet-group"
  subnet_ids = [var.private_subnet1, var.private_subnet2]

    tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-subnet-group"
  })
}

resource "aws_security_group" "rds_sg" {
  name        = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-rds-sg"
  description = "Allow db traffic"
  vpc_id      = var.vpc_id

  ingress {
    description      = "DB port"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_cidr]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-rds-sg"
  })
}

resource "aws_db_instance" "default" {
  allocated_storage    = var.storage
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_ver
  instance_class       = var.instance_class
  username             = var.username
  password             = var.passwd
  parameter_group_name = var.para_group_name
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.id
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

    tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-rds"
  })
}