resource "null_resource" "start" {
  triggers {
    depends_id = "${var.depends_id}"
  }
}

data "external" "picker" {
  depends_on = ["null_resource.start"]

  program = ["ruby", "${path.module}/picker.rb"]

  query = {
    list = "${jsonencode(var.list)}"
    key  = "${var.key}"
  }
}
