POST {{base}}/{{tenant_id}}/activity/feed/subscriptions/start
Authorization: Bearer {{token}}
[QueryStringParams]
publisherId: {{tenant_id}}
# contentType: Audit.SharePoint
contentType: Audit.Exchange
# contentType: Audit.General
# contentType: DLP.All
# contentType: Audit.AzureActiveDirectory
[Options]
variable: tenant_id=""

{}