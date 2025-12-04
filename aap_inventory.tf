resource "aap_inventory" "bradz_test_inv" {
  name         = "BRADZ667 - Inventory TF v1"
  description  = "A inventory for testing n3"
  organization = 2
  variables = jsonencode(
    {
      "foo-key" : "bar-value"
    }
  )
}
