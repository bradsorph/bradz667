resource "aap_inventory" "bradz_test_inv" {
  name         = "BRADZ667 - Inventory TF"
  description  = "A inventory for testing"
  organization = 2
  variables = jsonencode(
    {
      "foo-key" : "bar-value"
    }
  )
}
