
resource "opsgenie_user" "john" {
  username  = "john@test.com"
  full_name = "John Doe"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

resource "opsgenie_user" "jane" {
  username  = "jane@test.com"
  full_name = "Jane Doe"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

resource "opsgenie_user" "foo" {
  username  = "foo@test.com"
  full_name = "Foo Bar"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

resource "opsgenie_team" "testing" {
  name        = "Testing"
  description = "This team is here to test things"

  member {
    id   = "${opsgenie_user.john.id}"
    role = "admin"
  }

  member {
    id   = "${opsgenie_user.jane.id}"
    role = "user"
  }
  
    member {
    id   = "${opsgenie_user.foo.id}"
    role = "user"
  }
}

resource "opsgenie_schedule" "test" {
  name        = "genieschedule"
  description = "schedule test"
  timezone    = "Europe/Rome"
  enabled     = true
  owner_team_id = "${opsgenie_team.testing.id}"
}

resource "opsgenie_schedule_rotation" "test" { 
  schedule_id = "${opsgenie_schedule.test.id}"
  name        = "test"
  start_date  = "2019-10-18T17:30:00Z"
  end_date    ="2019-12-20T17:30:00Z"
  type        ="hourly"
  length      = 6

  participant {
    type = "user"
    id   = "${opsgenie_user.john.id}"
  }
  
   participant {
    type = "user"
    id   = "${opsgenie_user.jane.id}"
  }
  
   participant {
    type = "user"
    id   = "${opsgenie_user.foo.id}"
  }

  time_restriction {
    type = "time-of-day"

    restriction {
      start_hour = 1
      start_min  = 1
      end_hour   = 10
      end_min    = 1
    }
  }
}

