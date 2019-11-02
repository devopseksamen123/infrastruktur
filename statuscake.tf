resource "statuscake_test" "development" {
  website_name = "app-dev"
  website_url = "${heroku_app.dev.web_url}"
  test_type = "HTTP"
  check_rate = "300"
  contact_group = ["Default Contact Group"]

}

resource "statuscake_test" "stag" {
  website_name = "app-stag"
  website_url = "${heroku_app.stag.web_url}"
  test_type = "HTTP"
  check_rate = "300"
  contact_group = ["Default Contact Group"]

}

resource "statuscake_test" "prod" {
   website_name = "app-prod"
   website_url = "${heroku_app.prod.web_url}"
   test_type = "HTTP"
   check_rate = "300"
   contact_group = ["Default Contact Group"]

 }