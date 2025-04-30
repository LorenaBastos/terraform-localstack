
## Bucket to store VPC Flow Logs Files
resource "aws_s3_bucket" "vpc_flow_logs" {
  bucket = "vpc-flow-logs-dev"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

## VPC Flow Logs Instance

resource "aws_flow_log" "appsec-dev" {
  log_destination      = aws_s3_bucket.vpc_flow_logs.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.vpc-dev.id
  # Enable the new meta fields
  log_format = "$${version} $${vpc-id} $${subnet-id} $${instance-id} $${interface-id} $${account-id} $${type} $${srcaddr} $${dstaddr} $${srcport} $${dstport} $${protocol} $${packets} $${bytes} $${start} $${end} $${action} $${tcp-flags}"

  tags = {
    Name = "vpc_flow_logs"
  }
}

# create a new athena database from our vpc logs s3 bucket
resource "aws_athena_database" "appsec" {
  name   = "appsec"
  bucket = aws_s3_bucket.vpc_flow_logs.id
}

# create athena query table
resource "aws_athena_named_query" "create_table" {
  name      = "vpc_appsec_logs"
  workgroup = "primary"
  database  = aws_athena_database.appsec.name
  query     = <<EOF
  CREATE EXTERNAL TABLE IF NOT EXISTS vpc_appsec_flow_logs (
  version int,
  account string,
  interfaceid string,
  sourceaddress string,
  destinationaddress string,
  sourceport int,
  destinationport int,
  protocol int,
  numpackets int,
  numbytes bigint,
  starttime int,
  endtime int,
  action string,
  logstatus string
)
PARTITIONED BY (dt string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ' '
LOCATION 's3://vpc-flow-logs-dev/AWSLogs/12345678/vpcflowlogs/us-east-1'
TBLPROPERTIES ("skip.header.line.count"="1");
EOF
}

