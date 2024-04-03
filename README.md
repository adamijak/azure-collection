# Azure HTTP
This repository is collection of HTTP requests to Microsoft Azure and O365 services.
It is based on three open-source tools [hurl](https://github.com/Orange-OpenSource/hurl),
[task](https://github.com/go-task/task) and [jq](https://github.com/jqlang/jq).

## Installation
Clone this repository:
```sh
git clone git@github.com:adamijak/azure-collection.git
```
Make sure you have [hurl](https://github.com/Orange-OpenSource/hurl),
[task](https://github.com/go-task/task) and [jq](https://github.com/jqlang/jq) installed.
### Brew
```sh
brew install hurl go-task jq
``` 

## Usage
To use this collection make sure you are in the root directory of this repository. Then you need to define `AZURE_TOKEN` environment variable.
To obtain the token you can use [azure-auth](https://github.com/adamijak/azure-auth).

```sh
# Get token with Graph API scopes
export AZURE_TOKEN=`azure-auth cert --raw -t $TENANT_ID -c $CLIENT_ID --cert $CERT_THUMBPRINT --scopes "https://graph.microsoft.com/.default"`

# Get drive by its id from Graph API
# Request is specified in file "graph/drives/get-by-id.hurl"
task graph:drives:get-by-id

# Only return body without pretty print
task graph:drives:get-by-id b=1
```

You can `taskfile.templ.yaml` and rename it to `taskfile.yaml`.
Then you can edit tasks for token retrieval and simplify the exporting of `AZURE_TOKEN` environment variable.
```sh
# Edit token:graph task in copied taskfile.yaml
export AZURE_TOKEN=`task token:graph`
```
