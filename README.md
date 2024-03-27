# Microsoft Graph Collection
This repository is collection of HTTP requests to Graph API.
It is based on two open-source tools [hurl](https://github.com/Orange-OpenSource/hurl)
and [task](https://github.com/go-task/task).

## Installation
Clone this repository:
```sh
git clone git@github.com:adamijak/graph-collection.git
```
Make sure you have [hurl](https://github.com/Orange-OpenSource/hurl)
and [task](https://github.com/go-task/task) installed.
### Brew
```sh
brew install hurl go-task
``` 

## Usage
To use this collection make sure you are in the root directory of this repository. Then you need to define ```GRAPH_TOKEN``` environment variable.
To obtain the token you can use [azure-auth](https://github.com/adamijak/azure-auth).

```sh
export GRAPH_TOKEN=`azure-auth cert --raw -t $TENANT_ID -c $CLIENT_ID --cert $CERT_THUMBPRINT --scopes "https://graph.microsoft.com/.default"`

# Get drive by its id
# Request is specified by collection/drives/get-by-id.hurl file
task drives/get-by-id

# Only return body without pretty print
task drives/get-by-id b=1
```

```sh
# You can edit the task "token" in taskfile.yaml to execute command.
# Then you can simplify process of exporting "GRAPH_TOKEN" environment variable 
export GRAPH_TOKEN=`task token`
```