GET {{base}}/drives/{{drive_id}}/root/delta
Authorization: Bearer {{token}}
[QueryStringParams]
$expand: lastModifiedBy(application)
[Options]
variable: drive_id=""