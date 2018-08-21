#!/usr/bin/env sh

az(){
  docker run --rm \
  -v "$HOME/.azure:/root/.azure" \
  -v "$HOME/.ssh:/root/.ssh" \
  --entrypoint az \
  microsoft/azure-cli "$@"
}

SUBSCRIPTION_ID=$(az account list | jq -r '.[0].id')

az account set --subscription="$SUBSCRIPTION_ID"
az ad sp create-for-rbac \
  --role="Contributor" \
  --scopes="/subscriptions/$SUBSCRIPTION_ID" \
> sp.json
