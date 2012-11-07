require 'metal/default.rb'
require 'metal/defaultMappingRegistry.rb'
require 'soap/rpc/driver'

class ResponsysWS < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://ws5.responsys.net/webservices/services/ResponsysWSService"

  Methods = [
    [ "",
      "login",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "login"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "loginResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AccountFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"AccountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "authenticateServer",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "authenticateServer"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "authenticateServerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AccountFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"AccountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "loginWithCertificate",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "loginWithCertificate"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "loginWithCertificateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AccountFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"AccountFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "logout",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "logout"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "logoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "createFolder",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "createFolder"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "createFolderResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"FolderFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"FolderFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "deleteFolder",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "deleteFolder"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "deleteFolderResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"FolderFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"FolderFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "listFolders",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "listFolders"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "listFoldersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "triggerCampaignMessage",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "triggerCampaignMessage"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "triggerCampaignMessageResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"TriggeredMessageFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"TriggeredMessageFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "triggerCustomEvent",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "triggerCustomEvent"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "triggerCustomEventResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"CustomEventFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"CustomEventFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "launchCampaign",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "launchCampaign"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "launchCampaignResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"CampaignFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"CampaignFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "scheduleCampaignLaunch",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "scheduleCampaignLaunch"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "scheduleCampaignLaunchResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"CampaignFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"CampaignFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getLaunchStatus",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "getLaunchStatus"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "getLaunchStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"CampaignFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"CampaignFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "mergeListMembers",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "mergeListMembers"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "mergeListMembersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ListFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"ListFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "retrieveListMembers",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "retrieveListMembers"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "retrieveListMembersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ListFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"ListFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "deleteListMembers",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "deleteListMembers"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "deleteListMembersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ListFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"ListFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "createTable",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "createTable"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "createTableResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"TableFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"TableFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "deleteTable",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "deleteTable"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "deleteTableResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"TableFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"TableFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "mergeTableRecords",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "mergeTableRecords"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "mergeTableRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"TableFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"TableFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "retrieveTableRecords",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "retrieveTableRecords"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "retrieveTableRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"TableFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"TableFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "deleteTableRecords",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "deleteTableRecords"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "deleteTableRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"TableFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"TableFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "truncateTable",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "truncateTable"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "truncateTableResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"TableFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"TableFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "createDocument",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "createDocument"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "createDocumentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DocumentFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"DocumentFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "deleteDocument",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "deleteDocument"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "deleteDocumentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DocumentFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"DocumentFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "setDocumentImages",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "setDocumentImages"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "setDocumentImagesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DocumentFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"DocumentFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getDocumentImages",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "getDocumentImages"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "getDocumentImagesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DocumentFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"DocumentFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "setDocumentContent",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "setDocumentContent"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "setDocumentContentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DocumentFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"DocumentFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getDocumentContent",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "getDocumentContent"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "getDocumentContentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DocumentFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"DocumentFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "mergeListMembersRIID",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "mergeListMembersRIID"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "mergeListMembersRIIDResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ListFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"ListFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "mergeIntoProfileExtension",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "mergeIntoProfileExtension"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "mergeIntoProfileExtensionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ListExtensionFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"ListExtensionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "createTableWithPK",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "createTableWithPK"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "createTableWithPKResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"TableFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"TableFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "mergeTableRecordsWithPK",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "mergeTableRecordsWithPK"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "mergeTableRecordsWithPKResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"TableFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"TableFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "retrieveProfileExtensionRecords",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "retrieveProfileExtensionRecords"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:ws.rsys.com", "retrieveProfileExtensionRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ListExtensionFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"ListExtensionFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedErrorFault_"=>{:ns=>"urn:ws.rsys.com", :name=>"UnexpectedErrorFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

