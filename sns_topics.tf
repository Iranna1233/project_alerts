#Default_CloudWatch_Alarms_Topic
# Create an SNS topic named "Default_CloudWatch_Alarms_Topic"
resource "aws_sns_topic" "default_cloudwatch_alarms_topic" {
  name = "Default_CloudWatch_Alarms_Topic"
}

# Create an SNS topic subscription for email notifications
resource "aws_sns_topic_subscription" "default_cloudwatch_alarms_subscription" {
  topic_arn = aws_sns_topic.default_cloudwatch_alarms_topic.arn
  protocol = "email"
  endpoint = "iranna1043@gmail.com"
}

# Create an SNS topic named "aws-controltower-SecurityNotifications"
resource "aws_sns_topic" "aws_controltower_security_notifications" {
  name = "aws-controltower-SecurityNotifications"
}

# Create an SNS topic subscription for Lambda function notifications
resource "aws_sns_topic_subscription" "aws_controltower_security_notifications_subscription" {
  topic_arn = aws_sns_topic.aws_controltower_security_notifications.arn
  protocol  = "lambda"
  endpoint  = "arn:aws:lambda:ap-south-1:905418200311:function:my_lambda_function"
}

# Create an SNS topic named "Middleware-production-systerm-alert"
resource "aws_sns_topic" "middleware_production_system_alert" {
  name = "Middleware-production-systerm-alert"
}

# Create an SNS topic subscription for email notifications
resource "aws_sns_topic_subscription" "middleware_production_system_alert_subscription" {
  topic_arn = aws_sns_topic.middleware_production_system_alert.arn
  protocol = "email"
  endpoint = "iranna1043@gmail.com"
}

# Create an SNS topic named "Publishing-System-Alerts"
resource "aws_sns_topic" "publishing_system_alerts" {
  name = "Publishing-System-Alerts"
}

# Create an SNS topic subscription for email notifications
resource "aws_sns_topic_subscription" "publishing_system_alerts_subscription1" {
  topic_arn = aws_sns_topic.publishing_system_alerts.arn
  protocol = "email"
  endpoint = "iranna1043@gmail.com"
}

# Create an additional SNS topic subscription for email notifications
resource "aws_sns_topic_subscription" "publishing_system_alerts_subscription2" {
  topic_arn = aws_sns_topic.publishing_system_alerts.arn
  protocol = "email"
  endpoint = "iranna1043@gmail.com"
}

# Create another SNS topic subscription for email notifications
resource "aws_sns_topic_subscription" "publishing_system_alerts_subscription3" {
  topic_arn = aws_sns_topic.publishing_system_alerts.arn
  protocol = "email"
  endpoint = "iranna1043@gmail.com"
}