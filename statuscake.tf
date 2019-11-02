resource "statuscake_test" "development" {
  website_name = "app-development"
  website_url = "${heroku_app.development.web_url}"
  test_type = "HTTP"
  check_rate = "300"
  contact_group = ["Default Contact Group"]

}

resource "statuscake_test" "stage" {
  website_name = "app-stage"
  website_url = "${heroku_app.stage.web_url}"
  test_type = "HTTP"
  check_rate = "300"
  contact_group = ["Default Contact Group"]

}

resource "statuscake_test" "production" {
   website_name = "app-production"
   website_url = "${heroku_app.production.web_url}"
   test_type = "HTTP"
   check_rate = "300"
   contact_group = ["Default Contact Group"]

 }
