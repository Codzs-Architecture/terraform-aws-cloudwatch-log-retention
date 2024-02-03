resource "aws_cloudwatch_event_rule" "cloudwatch_log_retention_event_trigger" {
  name                = "cron_trigger_${aws_lambda_function.log_retention_lambda.function_name}"
  description         = "Periodic trigger for ${aws_lambda_function.log_retention_lambda.function_name}"
  schedule_expression = var.schedule_expression
  depends_on = [
    aws_lambda_function.log_retention_lambda
  ]
}

resource "aws_cloudwatch_event_target" "cloudwatch_log_retention_trigger_target" {
  rule      = aws_cloudwatch_event_rule.cloudwatch_log_retention_event_trigger.name
  target_id = "lambda"
  arn       = aws_lambda_function.log_retention_lambda.arn
}

resource "aws_lambda_permission" "cloudwatch_log_retention_trigger_permission" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.log_retention_lambda.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.cloudwatch_log_retention_event_trigger.arn
}
