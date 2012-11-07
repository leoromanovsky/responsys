#!/usr/bin/env ruby
require 'metal/defaultDriver.rb'

endpoint_url = ARGV.shift
obj = ResponsysWS.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   login(parameters)
#
# ARGS
#   parameters      Login - {urn:ws.rsys.com}login
#
# RETURNS
#   parameters      LoginResponse - {urn:ws.rsys.com}loginResponse
#
# RAISES
#   fault           AccountFault - {urn:fault.ws.rsys.com}AccountFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.login(parameters)

# SYNOPSIS
#   authenticateServer(parameters)
#
# ARGS
#   parameters      AuthenticateServer - {urn:ws.rsys.com}authenticateServer
#
# RETURNS
#   parameters      AuthenticateServerResponse - {urn:ws.rsys.com}authenticateServerResponse
#
# RAISES
#   fault           AccountFault - {urn:fault.ws.rsys.com}AccountFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.authenticateServer(parameters)

# SYNOPSIS
#   loginWithCertificate(parameters)
#
# ARGS
#   parameters      LoginWithCertificate - {urn:ws.rsys.com}loginWithCertificate
#
# RETURNS
#   parameters      LoginWithCertificateResponse - {urn:ws.rsys.com}loginWithCertificateResponse
#
# RAISES
#   fault           AccountFault - {urn:fault.ws.rsys.com}AccountFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.loginWithCertificate(parameters)

# SYNOPSIS
#   logout(parameters)
#
# ARGS
#   parameters      Logout - {urn:ws.rsys.com}logout
#
# RETURNS
#   parameters      LogoutResponse - {urn:ws.rsys.com}logoutResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.logout(parameters)

# SYNOPSIS
#   createFolder(parameters)
#
# ARGS
#   parameters      CreateFolder - {urn:ws.rsys.com}createFolder
#
# RETURNS
#   parameters      CreateFolderResponse - {urn:ws.rsys.com}createFolderResponse
#
# RAISES
#   fault           FolderFault - {urn:fault.ws.rsys.com}FolderFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.createFolder(parameters)

# SYNOPSIS
#   deleteFolder(parameters)
#
# ARGS
#   parameters      DeleteFolder - {urn:ws.rsys.com}deleteFolder
#
# RETURNS
#   parameters      DeleteFolderResponse - {urn:ws.rsys.com}deleteFolderResponse
#
# RAISES
#   fault           FolderFault - {urn:fault.ws.rsys.com}FolderFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteFolder(parameters)

# SYNOPSIS
#   listFolders(parameters)
#
# ARGS
#   parameters      ListFolders - {urn:ws.rsys.com}listFolders
#
# RETURNS
#   parameters      ListFoldersResponse - {urn:ws.rsys.com}listFoldersResponse
#
# RAISES
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.listFolders(parameters)

# SYNOPSIS
#   triggerCampaignMessage(parameters)
#
# ARGS
#   parameters      TriggerCampaignMessage - {urn:ws.rsys.com}triggerCampaignMessage
#
# RETURNS
#   parameters      TriggerCampaignMessageResponse - {urn:ws.rsys.com}triggerCampaignMessageResponse
#
# RAISES
#   fault           TriggeredMessageFault - {urn:fault.ws.rsys.com}TriggeredMessageFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.triggerCampaignMessage(parameters)

# SYNOPSIS
#   triggerCustomEvent(parameters)
#
# ARGS
#   parameters      TriggerCustomEvent - {urn:ws.rsys.com}triggerCustomEvent
#
# RETURNS
#   parameters      TriggerCustomEventResponse - {urn:ws.rsys.com}triggerCustomEventResponse
#
# RAISES
#   fault           CustomEventFault - {urn:fault.ws.rsys.com}CustomEventFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.triggerCustomEvent(parameters)

# SYNOPSIS
#   launchCampaign(parameters)
#
# ARGS
#   parameters      LaunchCampaign - {urn:ws.rsys.com}launchCampaign
#
# RETURNS
#   parameters      LaunchCampaignResponse - {urn:ws.rsys.com}launchCampaignResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.launchCampaign(parameters)

# SYNOPSIS
#   scheduleCampaignLaunch(parameters)
#
# ARGS
#   parameters      ScheduleCampaignLaunch - {urn:ws.rsys.com}scheduleCampaignLaunch
#
# RETURNS
#   parameters      ScheduleCampaignLaunchResponse - {urn:ws.rsys.com}scheduleCampaignLaunchResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.scheduleCampaignLaunch(parameters)

# SYNOPSIS
#   getLaunchStatus(parameters)
#
# ARGS
#   parameters      GetLaunchStatus - {urn:ws.rsys.com}getLaunchStatus
#
# RETURNS
#   parameters      GetLaunchStatusResponse - {urn:ws.rsys.com}getLaunchStatusResponse
#
# RAISES
#   fault           CampaignFault - {urn:fault.ws.rsys.com}CampaignFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getLaunchStatus(parameters)

# SYNOPSIS
#   mergeListMembers(parameters)
#
# ARGS
#   parameters      MergeListMembers - {urn:ws.rsys.com}mergeListMembers
#
# RETURNS
#   parameters      MergeListMembersResponse - {urn:ws.rsys.com}mergeListMembersResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.mergeListMembers(parameters)

# SYNOPSIS
#   retrieveListMembers(parameters)
#
# ARGS
#   parameters      RetrieveListMembers - {urn:ws.rsys.com}retrieveListMembers
#
# RETURNS
#   parameters      RetrieveListMembersResponse - {urn:ws.rsys.com}retrieveListMembersResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.retrieveListMembers(parameters)

# SYNOPSIS
#   deleteListMembers(parameters)
#
# ARGS
#   parameters      DeleteListMembers - {urn:ws.rsys.com}deleteListMembers
#
# RETURNS
#   parameters      DeleteListMembersResponse - {urn:ws.rsys.com}deleteListMembersResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteListMembers(parameters)

# SYNOPSIS
#   createTable(parameters)
#
# ARGS
#   parameters      CreateTable - {urn:ws.rsys.com}createTable
#
# RETURNS
#   parameters      CreateTableResponse - {urn:ws.rsys.com}createTableResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.createTable(parameters)

# SYNOPSIS
#   deleteTable(parameters)
#
# ARGS
#   parameters      DeleteTable - {urn:ws.rsys.com}deleteTable
#
# RETURNS
#   parameters      DeleteTableResponse - {urn:ws.rsys.com}deleteTableResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteTable(parameters)

# SYNOPSIS
#   mergeTableRecords(parameters)
#
# ARGS
#   parameters      MergeTableRecords - {urn:ws.rsys.com}mergeTableRecords
#
# RETURNS
#   parameters      MergeTableRecordsResponse - {urn:ws.rsys.com}mergeTableRecordsResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.mergeTableRecords(parameters)

# SYNOPSIS
#   retrieveTableRecords(parameters)
#
# ARGS
#   parameters      RetrieveTableRecords - {urn:ws.rsys.com}retrieveTableRecords
#
# RETURNS
#   parameters      RetrieveTableRecordsResponse - {urn:ws.rsys.com}retrieveTableRecordsResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.retrieveTableRecords(parameters)

# SYNOPSIS
#   deleteTableRecords(parameters)
#
# ARGS
#   parameters      DeleteTableRecords - {urn:ws.rsys.com}deleteTableRecords
#
# RETURNS
#   parameters      DeleteTableRecordsResponse - {urn:ws.rsys.com}deleteTableRecordsResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteTableRecords(parameters)

# SYNOPSIS
#   truncateTable(parameters)
#
# ARGS
#   parameters      TruncateTable - {urn:ws.rsys.com}truncateTable
#
# RETURNS
#   parameters      TruncateTableResponse - {urn:ws.rsys.com}truncateTableResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.truncateTable(parameters)

# SYNOPSIS
#   createDocument(parameters)
#
# ARGS
#   parameters      CreateDocument - {urn:ws.rsys.com}createDocument
#
# RETURNS
#   parameters      CreateDocumentResponse - {urn:ws.rsys.com}createDocumentResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.createDocument(parameters)

# SYNOPSIS
#   deleteDocument(parameters)
#
# ARGS
#   parameters      DeleteDocument - {urn:ws.rsys.com}deleteDocument
#
# RETURNS
#   parameters      DeleteDocumentResponse - {urn:ws.rsys.com}deleteDocumentResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.deleteDocument(parameters)

# SYNOPSIS
#   setDocumentImages(parameters)
#
# ARGS
#   parameters      SetDocumentImages - {urn:ws.rsys.com}setDocumentImages
#
# RETURNS
#   parameters      SetDocumentImagesResponse - {urn:ws.rsys.com}setDocumentImagesResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.setDocumentImages(parameters)

# SYNOPSIS
#   getDocumentImages(parameters)
#
# ARGS
#   parameters      GetDocumentImages - {urn:ws.rsys.com}getDocumentImages
#
# RETURNS
#   parameters      GetDocumentImagesResponse - {urn:ws.rsys.com}getDocumentImagesResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getDocumentImages(parameters)

# SYNOPSIS
#   setDocumentContent(parameters)
#
# ARGS
#   parameters      SetDocumentContent - {urn:ws.rsys.com}setDocumentContent
#
# RETURNS
#   parameters      SetDocumentContentResponse - {urn:ws.rsys.com}setDocumentContentResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.setDocumentContent(parameters)

# SYNOPSIS
#   getDocumentContent(parameters)
#
# ARGS
#   parameters      GetDocumentContent - {urn:ws.rsys.com}getDocumentContent
#
# RETURNS
#   parameters      GetDocumentContentResponse - {urn:ws.rsys.com}getDocumentContentResponse
#
# RAISES
#   fault           DocumentFault - {urn:fault.ws.rsys.com}DocumentFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.getDocumentContent(parameters)

# SYNOPSIS
#   mergeListMembersRIID(parameters)
#
# ARGS
#   parameters      MergeListMembersRIID - {urn:ws.rsys.com}mergeListMembersRIID
#
# RETURNS
#   parameters      MergeListMembersRIIDResponse - {urn:ws.rsys.com}mergeListMembersRIIDResponse
#
# RAISES
#   fault           ListFault - {urn:fault.ws.rsys.com}ListFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.mergeListMembersRIID(parameters)

# SYNOPSIS
#   mergeIntoProfileExtension(parameters)
#
# ARGS
#   parameters      MergeIntoProfileExtension - {urn:ws.rsys.com}mergeIntoProfileExtension
#
# RETURNS
#   parameters      MergeIntoProfileExtensionResponse - {urn:ws.rsys.com}mergeIntoProfileExtensionResponse
#
# RAISES
#   fault           ListExtensionFault - {urn:fault.ws.rsys.com}ListExtensionFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.mergeIntoProfileExtension(parameters)

# SYNOPSIS
#   createTableWithPK(parameters)
#
# ARGS
#   parameters      CreateTableWithPK - {urn:ws.rsys.com}createTableWithPK
#
# RETURNS
#   parameters      CreateTableWithPKResponse - {urn:ws.rsys.com}createTableWithPKResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.createTableWithPK(parameters)

# SYNOPSIS
#   mergeTableRecordsWithPK(parameters)
#
# ARGS
#   parameters      MergeTableRecordsWithPK - {urn:ws.rsys.com}mergeTableRecordsWithPK
#
# RETURNS
#   parameters      MergeTableRecordsWithPKResponse - {urn:ws.rsys.com}mergeTableRecordsWithPKResponse
#
# RAISES
#   fault           TableFault - {urn:fault.ws.rsys.com}TableFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.mergeTableRecordsWithPK(parameters)

# SYNOPSIS
#   retrieveProfileExtensionRecords(parameters)
#
# ARGS
#   parameters      RetrieveProfileExtensionRecords - {urn:ws.rsys.com}retrieveProfileExtensionRecords
#
# RETURNS
#   parameters      RetrieveProfileExtensionRecordsResponse - {urn:ws.rsys.com}retrieveProfileExtensionRecordsResponse
#
# RAISES
#   fault           ListExtensionFault - {urn:fault.ws.rsys.com}ListExtensionFault
#   fault           UnexpectedErrorFault - {urn:fault.ws.rsys.com}UnexpectedErrorFault
#
parameters = nil
puts obj.retrieveProfileExtensionRecords(parameters)


