action "aap_eda_eventstream_post" "create" {
  config {
    limit = "role_webserver"
    template_type = "workflow_job"
    workflow_job_template_name = "Deploy Web App"
    organization_name = "TechXchangeNL"

    event_stream_config = {
      url = var.aap_eventstream_url
      insecure_skip_verify = true
      username = "<YOUR AAP API USERNAME>"
      password = "<YOUR AAP API PASSWORD>"
    }
  }
}
