resource "null_resource" "gitlab_demo01" {
  provisioner "local-exec" {
    command = "sh ../gitlab/tf-demo/gitlab_demo01.sh"
  }

  depends_on = [
    null_resource.copy_ssh
  ]
}

resource "null_resource" "gitlab_demo02" {
  provisioner "local-exec" {
    command = "sh ../gitlab/tf-demo/gitlab_demo02.sh"
  }

  depends_on = [
    null_resource.gitlab_demo01
  ]
}
