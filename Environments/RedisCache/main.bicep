// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

@description('Location to deploy the environment resources')
param location string = resourceGroup().location
param resourcePrefix string = 'a${uniqueString(resourceGroup().id)}'

@description('Tags to apply to environment resources')
param tags object = {}

var redisname = '${resourcePrefix}-hp'

resource RedisCache 'Microsoft.Cache/redis@2022-06-01' = {
  name: redisname
  location: location
  tags: tags
}

