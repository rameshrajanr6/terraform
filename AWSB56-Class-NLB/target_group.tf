resource "aws_lb_target_group" "AWSB56-tg" {
  name = "AWSB56-TG"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.AWSB56-VPC1.id
  target_type = "instance"

}

locals {
   target-group-arns = [for i in aws_lb_target_group.AWSB56-tg : i.arn]
}

resource "aws_lb_target_group_attachment" "AWSB56-tg-attach" {

   for_each = {
     for pair in setproduct(tolist(local.target-group-arns), tolist(aws_instance.my-servers*.id)) : "${pair[0]} ${pair[1]}" => {
       target_group_arn = pair[0]
       target_id        = pair[1]
     }
   }

   target_group_arn = each.value.target_group_arn 
   target_id        = each.value.target_id
}