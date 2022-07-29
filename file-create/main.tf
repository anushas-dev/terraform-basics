resource "local_sensitive_file" "test" {
    #content  = "Hello Terraform!"
    filename = "terra-test"
    content = "Hello Terraform!"
    # only content / sensitive_content can be used at a block
    # Use the `local_sensitive_file` resource instead of local_file.
    file_permission = "0777"
      