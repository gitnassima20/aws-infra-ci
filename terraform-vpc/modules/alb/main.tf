#ALB

resource "aws_lb" "my_alb" {
  name               = "my-application-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.sg_id]
  subnets            = var.subnets
}

#Listener

resource "aws_lb_listener" "my_listener" {
  load_balancer_arn = aws_lb.my_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.my_tg.arn
  }
}

#Target Group

resource "aws_lb_target_group" "my_tg" {
  name     = "my-alb-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

#Target Group Attachment
#Each attachement should be created for each EC2 instance

resource "aws_lb_target_group_attachment" "my_tga" {
  count = length(var.instances)
  target_group_arn = aws_lb_target_group.my_tg.arn
  target_id = var.instances[count.index]
  port = 80
}