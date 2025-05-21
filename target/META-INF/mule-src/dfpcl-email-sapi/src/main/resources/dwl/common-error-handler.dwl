%dw 2.0
output application/json
---
{
	"errorMessage": error.errorMessage.payload default error.detailedDescription,
	"errorType": (error.errorType.namespace default '') ++ ":" ++ (error.errorType.identifier default ''),
	"correlationId": vars.correlationId default correlationId,
	"applicationName": app.name,
	"flowName": vars.flowName default "Main flow"
}