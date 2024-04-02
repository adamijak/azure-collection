GET {{base}}/sites/{{site}}/_api/web/lists('{{list_id}}')
Authorization: Bearer {{token}}
Accept: application/json
[QueryStringParams]
$select: Id
$select: Title
$select: DefaultSensitivityLabelForLibrary 
[Options]
variable: site=""
variable: list_id=""