data "template_file" "index" {
  count    = "${length(var.instance_ips)}"
  template = "${file("files/index.html.tpl")}"
  vars = {
    hostname = "web-${format("%03d", count.index + 1)}"
  }
}
