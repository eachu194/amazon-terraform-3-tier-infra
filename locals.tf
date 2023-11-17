locals {
  project_tags = {
    project = "penteghinc"
    contact = "devops@penteghinc.com"
    application = "payment"
    environment = "${terraform.workspace}"
    creationTime = formatdate("EEE, DD MMM YYYY hh:mm:ss ZZZ", timestamp())
  }
}