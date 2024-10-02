resource "aws_secretsmanager_secret" "secret" {
  name                    = "linuxtips-tf-final/dev/produto"
  recovery_window_in_days = 0
}
