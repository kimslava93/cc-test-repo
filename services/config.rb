## This file was auto-generated by CloudCoreo CLI
## This file was automatically generated using the CloudCoreo CLI
##
## This config.rb file exists to create and maintain services not related to compute.
## for example, a VPC might be maintained using:
##
## coreo_aws_vpc_vpc "my-vpc" do
##   action :sustain
##   cidr "12.0.0.0/16"
##   internet_gateway true
## end
##
coreo_aws_advisor_alert "slava" do
  action :define
  service :elb
  #include_violations_in_count false
  display_name "Slava Object"
  objectives ["load_balancers"]
  description "Test config in CC"
  category "CustomCategory"
  suggested_action "Keep going"
  level "Warning"
  audit_objects ["load_balancer_descriptions.health_check.interval"]
  operators [">"]
  alert_when [120]
end