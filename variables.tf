variable "key_id" {
  default = "arn:aws:kms:us-east-1:367241114876:key/b0eaa327-c037-47e6-93ed-78b8b08219b9"
}

variable "parameters" {
  default = {
    "dev.expense.rds.username"               = "admin1"
    "dev.expense.rds.endpoint"               = "dev-expense-rds.ca1a4y2cuoey.us-east-1.rds.amazonaws.com"
    "dev.expense.frontend.backend_endpoint"  = "https://backend-dev.kdevops.online/"
    "newrelic.account"                       = "7649078"
    "dev.expense.frontend.app_version"       = "1.0.1"
    "dev.expense.backend.app_version"        = "1.0.1"

    "prod.expense.rds.username"              = "admin1"
    "prod.expense.rds.endpoint"              = "prod-expense-rds.ca1a4y2cuoey.us-east-1.rds.amazonaws.com"
    "prod.expense.frontend.backend_endpoint" = "https://backend-prod.kdevops.online/"
    "newrelic.account"                       = "7649078"
    "prod.expense.frontend.app_version"      = "1.0.1"
    "prod.expense.backend.app_version"       = "1.0.1"

    ## RoboShop Project
    "dev.roboshop.docdb.endpoint"            = "dev-roboshop-docdb.cluster-ca1a4y2cuoey.us-east-1.docdb.amazonaws.com"
    "dev.roboshop.catalogue.MONGO_URL"       = "mongodb://admin1:RoboShop12345@dev-roboshop-docdb.cluster-ca1a4y2cuoey.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"
    "dev.roboshop.user.MONGO_URL"            = "mongodb://admin1:RoboShop12345@dev-roboshop-docdb.cluster-ca1a4y2cuoey.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"
    "dev.roboshop.user.REDIS_HOST"           = "dev-roboshop-elasticache.kbwgpw.0001.use1.cache.amazonaws.com"
  }
}

## Note: In organizations we don't keep passwords in git repository at any cpst
variable "secrets" {
  default = {
    "dev.expense.rds.password"          = "ExpenseApp123"
    "ssh.password"                      = "DevOps321"
    "ssh.username"                      = "centos"
    "ses.username"                      = "AKIAVLAKGWT6AV277TWX"
    "ses.password"                      = "BCdJN2ZbQErs41ZSlRuiMp0wk4FCkT5M7tD31+VzDjbl"
    "grafana.apikey"                    = "glsa_uofvreAAKcDSZcrD2IYh7b967M72obgp_cd298dc1"
    "dev.expense.frontend.newrelic.key" = "NRAK-ZD1XNOBKSEGBDNWD2KHGUL2JVIR"
    "dev.expense.backend.newrelic.key"  = "413d2388ea45416359eb026782087a44FFFFNRAL"
    "elasticsearch.password"            = "ZkZNxME6+TpLsU-+1e4S"
    "artifactory.user"                  = "admin"
    "artifactory.password"              = "Admin123"

    "prod.expense.rds.password"          = "ExpenseApp123"
    "ssh.password"                       = "DevOps321"
    "ssh.username"                       = "centos"
    "ses.username"                       = "AKIAVLAKGWT6AV277TWX"
    "ses.password"                       = "BCdJN2ZbQErs41ZSlRuiMp0wk4FCkT5M7tD31+VzDjbl"
    "grafana.apikey"                     = "glsa_uofvreAAKcDSZcrD2IYh7b967M72obgp_cd298dc1"
    "prod.expense.frontend.newrelic.key" = "NRAK-ZD1XNOBKSEGBDNWD2KHGUL2JVIR"
    "prod.expense.backend.newrelic.key"  = "413d2388ea45416359eb026782087a44FFFFNRAL"
    "elasticsearch.password"             = "ZkZNxME6+TpLsU-+1e4S"
    "artifactory.user"                   = "admin"
    "artifactory.password"               = "Admin123"


    ## RoboShop Project
    "dev.roboshop.rds.username"          = "admin1"
    "dev.roboshop.rds.password"          = "RoboShop12345"
    "dev.roboshop.docdb.username"        = "admin1"
    "dev.roboshop.docdb.password"        = "RoboShop12345"
    "dev.roboshop.rabbitmq.username"     = "roboshop"
    "dev.roboshop.rabbitmq.password"     = "roboshop123"
  }
}

