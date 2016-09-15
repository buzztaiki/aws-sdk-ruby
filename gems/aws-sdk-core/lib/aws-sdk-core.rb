require 'seahorse'
require 'jmespath'
require 'pathname'

Seahorse::Util.irregular_inflections({
  'ARNs' => 'arns',
  'CNAMEs' => 'cnames',
  'Ec2' => 'ec2',
  'ElastiCache' => 'elasticache',
  'iSCSI' => 'iscsi',
  'ACLs' => 'acls',
  #'SSEKMS' => 'sse_kms',
})

module Aws

  # @api private
  # services
  SERVICE_MODULE_NAMES = %w(
    ACM
    APIGateway
    ApplicationAutoScaling
    ApplicationDiscoveryService
    AutoScaling
    CloudFormation
    CloudFront
    CloudHSM
    CloudSearch
    CloudSearchDomain
    CloudTrail
    CloudWatch
    CloudWatchEvents
    CloudWatchLogs
    CodeCommit
    CodeDeploy
    CodePipeline
    CognitoIdentity
    CognitoIdentityProvider
    CognitoSync
    ConfigService
    DatabaseMigrationService
    DataPipeline
    DeviceFarm
    DirectConnect
    DirectoryService
    DynamoDB
    DynamoDBStreams
    EC2
    ECR
    ECS
    EFS
    ElastiCache
    ElasticBeanstalk
    ElasticLoadBalancing
    ElasticsearchService
    ElasticTranscoder
    EMR
    Firehose
    GameLift
    Glacier
    IAM
    ImportExport
    Inspector
    IoT
    IoTDataPlane
    Kinesis
    KMS
    Lambda
    LambdaPreview
    MachineLearning
    MarketplaceCommerceAnalytics
    MarketplaceMetering
    OpsWorks
    RDS
    Redshift
    Route53
    Route53Domains
    S3
    SES
    SimpleDB
    SNS
    SQS
    SSM
    StorageGateway
    STS
    Support
    SWF
    WAF
    WorkSpaces
  )

  @config = {}

  autoload :DefaultList, 'aws-sdk-core/default_list'
  autoload :DefaultMap, 'aws-sdk-core/default_map'
  autoload :Hash2Struct, 'aws-sdk-core/hash_2_struct'
  autoload :Struct2Hash, 'aws-sdk-core/struct_2_hash'
  autoload :StructureType, 'aws-sdk-core/structure_type'

  autoload :AssumeRoleCredentials, 'aws-sdk-core/assume_role_credentials'
  autoload :Checksums, 'aws-sdk-core/checksums'
  autoload :Client, 'aws-sdk-core/client'
  autoload :ClientStubs, 'aws-sdk-core/client_stubs'
  autoload :ClientWaiters, 'aws-sdk-core/client_waiters'
  autoload :CredentialProvider, 'aws-sdk-core/credential_provider'
  autoload :CredentialProviderChain, 'aws-sdk-core/credential_provider_chain'
  autoload :Credentials, 'aws-sdk-core/credentials'
  autoload :Deprecations, 'aws-sdk-core/deprecations'
  autoload :EagerLoader, 'aws-sdk-core/eager_loader'
  autoload :ECSCredentials, 'aws-sdk-core/ecs_credentials'
  autoload :EmptyStructure, 'aws-sdk-core/empty_structure'
  autoload :EndpointProvider, 'aws-sdk-core/endpoint_provider'
  autoload :Errors, 'aws-sdk-core/errors'
  autoload :IniParser, 'aws-sdk-core/ini_parser'
  autoload :InstanceProfileCredentials, 'aws-sdk-core/instance_profile_credentials'
  autoload :Json, 'aws-sdk-core/json'
  autoload :PageableResponse, 'aws-sdk-core/pageable_response'
  autoload :Pager, 'aws-sdk-core/pager'
  autoload :ParamConverter, 'aws-sdk-core/param_converter'
  autoload :ParamValidator, 'aws-sdk-core/param_validator'
  autoload :Partitions, 'aws-sdk-core/partitions'
  autoload :RefreshingCredentials, 'aws-sdk-core/refreshing_credentials'
  autoload :Service, 'aws-sdk-core/service'
  autoload :SharedConfig, 'aws-sdk-core/shared_config'
  autoload :SharedCredentials, 'aws-sdk-core/shared_credentials'
  autoload :Structure, 'aws-sdk-core/structure'
  autoload :TreeHash, 'aws-sdk-core/tree_hash'
  autoload :TypeBuilder, 'aws-sdk-core/type_builder'
  autoload :Util, 'aws-sdk-core/util'
  autoload :VERSION, 'aws-sdk-core/version'

  module Resources
    autoload :Batch, 'aws-sdk-core/resources/batch'
    autoload :Collection, 'aws-sdk-core/resources/collection'
  end

  # @api private
  module Api
    autoload :Builder, 'aws-sdk-core/api/builder'
    autoload :ShapeMap, 'aws-sdk-core/api/shape_map'
    module Docs
      autoload :Builder, 'aws-sdk-core/api/docs/builder'
      autoload :ClientTypeDocumenter, 'aws-sdk-core/api/docs/client_type_documenter'
      autoload :DocstringProvider, 'aws-sdk-core/api/docs/docstring_provider'
      autoload :NullDocstringProvider, 'aws-sdk-core/api/docs/docstring_provider'
      autoload :OperationDocumenter, 'aws-sdk-core/api/docs/operation_documenter'
      autoload :ParamFormatter, 'aws-sdk-core/api/docs/param_formatter'
      autoload :RequestSyntaxExample, 'aws-sdk-core/api/docs/request_syntax_example'
      autoload :ResponseStructureExample, 'aws-sdk-core/api/docs/response_structure_example'
      autoload :SharedExample, 'aws-sdk-core/api/docs/shared_example'
      autoload :Utils, 'aws-sdk-core/api/docs/utils'
    end
  end

  module Log
    autoload :Formatter, 'aws-sdk-core/log/formatter'
    autoload :ParamFilter, 'aws-sdk-core/log/param_filter'
    autoload :ParamFormatter, 'aws-sdk-core/log/param_formatter'
  end

  module Plugins
    autoload :GlobalConfiguration, 'aws-sdk-core/plugins/global_configuration'
    autoload :HelpfulSocketErrors, 'aws-sdk-core/plugins/helpful_socket_errors'
    autoload :Logging, 'aws-sdk-core/plugins/logging'
    autoload :ParamConverter, 'aws-sdk-core/plugins/param_converter'
    autoload :ParamValidator, 'aws-sdk-core/plugins/param_validator'
    autoload :RegionalEndpoint, 'aws-sdk-core/plugins/regional_endpoint'
    autoload :ResponsePaging, 'aws-sdk-core/plugins/response_paging'
    autoload :RequestSigner, 'aws-sdk-core/plugins/request_signer'
    autoload :RetryErrors, 'aws-sdk-core/plugins/retry_errors'
    autoload :StubResponses, 'aws-sdk-core/plugins/stub_responses'
    autoload :UserAgent, 'aws-sdk-core/plugins/user_agent'

    module Protocols
      autoload :EC2, 'aws-sdk-core/plugins/protocols/ec2'
      autoload :JsonRpc, 'aws-sdk-core/plugins/protocols/json_rpc'
      autoload :Query, 'aws-sdk-core/plugins/protocols/query'
      autoload :RestJson, 'aws-sdk-core/plugins/protocols/rest_json'
      autoload :RestXml, 'aws-sdk-core/plugins/protocols/rest_xml'
    end

  end

  # @api private
  module Query
    autoload :EC2ParamBuilder, 'aws-sdk-core/query/ec2_param_builder'
    autoload :Handler, 'aws-sdk-core/query/handler'
    autoload :Param, 'aws-sdk-core/query/param'
    autoload :ParamBuilder, 'aws-sdk-core/query/param_builder'
    autoload :ParamList, 'aws-sdk-core/query/param_list'
  end

  # @api private
  module Rest
    autoload :Handler, 'aws-sdk-core/rest/handler'
    module Request
      autoload :Body, 'aws-sdk-core/rest/request/body'
      autoload :Builder, 'aws-sdk-core/rest/request/builder'
      autoload :Endpoint, 'aws-sdk-core/rest/request/endpoint'
      autoload :Headers, 'aws-sdk-core/rest/request/headers'
    end
    module Response
      autoload :Body, 'aws-sdk-core/rest/response/body'
      autoload :Headers, 'aws-sdk-core/rest/response/headers'
      autoload :Parser, 'aws-sdk-core/rest/response/parser'
      autoload :StatusCode, 'aws-sdk-core/rest/response/status_code'
    end
  end

  # @api private
  module Signers
    autoload :Base, 'aws-sdk-core/signers/base'
    autoload :V2, 'aws-sdk-core/signers/v2'
    autoload :V3, 'aws-sdk-core/signers/v3'
    autoload :V4, 'aws-sdk-core/signers/v4'
  end

  # @api private
  module Stubbing
    autoload :EmptyStub, 'aws-sdk-core/stubbing/empty_stub'
    autoload :DataApplicator, 'aws-sdk-core/stubbing/data_applicator'
    autoload :StubData, 'aws-sdk-core/stubbing/stub_data'
    autoload :XmlError, 'aws-sdk-core/stubbing/xml_error'
    module Protocols
      autoload :EC2, 'aws-sdk-core/stubbing/protocols/ec2'
      autoload :Json, 'aws-sdk-core/stubbing/protocols/json'
      autoload :Query, 'aws-sdk-core/stubbing/protocols/query'
      autoload :Rest, 'aws-sdk-core/stubbing/protocols/rest'
      autoload :RestJson, 'aws-sdk-core/stubbing/protocols/rest_json'
      autoload :RestXml, 'aws-sdk-core/stubbing/protocols/rest_xml'
    end
  end

  module Waiters
    autoload :Poller, 'aws-sdk-core/waiters/poller'
    autoload :Errors, 'aws-sdk-core/waiters/errors'
    autoload :NullProvider, 'aws-sdk-core/waiters/null_provider'
    autoload :Provider, 'aws-sdk-core/waiters/provider'
    autoload :Waiter, 'aws-sdk-core/waiters/waiter'
  end

  # @api private
  module Xml
    autoload :Builder, 'aws-sdk-core/xml/builder'
    autoload :DefaultList,  'aws-sdk-core/xml/default_list'
    autoload :DefaultMap,  'aws-sdk-core/xml/default_map'
    autoload :DocBuilder, 'aws-sdk-core/xml/doc_builder'
    autoload :ErrorHandler,  'aws-sdk-core/xml/error_handler'
    autoload :Parser, 'aws-sdk-core/xml/parser'
  end

  class << self

    # @api private
    def shared_config
      enabled = ENV["AWS_SDK_CONFIG_OPT_OUT"] ? false : true
      @shared_config ||= SharedConfig.new(config_enabled: enabled)
    end

    # @return [Hash] Returns a hash of default configuration options shared
    #   by all constructed clients.
    attr_reader :config

    # @param [Hash] config
    def config=(config)
      if Hash === config
        @config = config
      else
        raise ArgumentError, 'configuration object must be a hash'
      end
    end

    # Return the partition with the given name. A partition describes
    # the services and regions available in that partition.
    #
    #     aws = Aws.partition('aws')
    #
    #     puts "Regions available in the aws partition:\n"
    #     aws.regions.each do |region|
    #       puts region.name
    #     end
    #
    #     puts "Services available in the aws partition:\n"
    #     aws.services.each do |services|
    #       puts services.name
    #     end
    #
    # See {Partitions} for more information and examples.
    #
    # @param [String] partition_name The name of the partition to return.
    #   Valid names include "aws", "aws-cn", and "aws-us-gov".
    #
    # @return [Partitions::Partition]
    #
    # @raise [ArgumentError] Raises an `ArgumentError` if a partition is
    #   not found with the given name. The error message contains a list
    #   of valid partition names.
    def partition(partition_name)
      Partitions.default_list.partition(partition_name)
    end

    # Return an array of partitions. A partition describes
    # the services and regions available in that partition.
    #
    #     Aws.partitions.each do |partition|
    #
    #       puts "Regions available in #{partition.name}:\n"
    #       partition.regions.each do |region|
    #         puts region.name
    #       end
    #
    #       puts "Services available in #{partition.name}:\n"
    #       partition.services.each do |service|
    #         puts service.name
    #       end
    #     end
    #
    # See {Partitions} for more information and examples.
    #
    # @return [Array<Partitions::Partition>] Returns an array of all
    #   known partitions.
    def partitions
      Partitions.default_list.partitions
    end

    # The SDK ships with a ca certificate bundle to use when verifying SSL
    # peer certificates. By default, this cert bundle is *NOT* used. The
    # SDK will rely on the default cert available to OpenSSL. This ensures
    # the cert provided by your OS is used.
    #
    # For cases where the default cert is unavailable, e.g. Windows, you
    # can call this method.
    #
    #     Aws.use_bundled_cert!
    #
    # @return [String] Returns the path to the bundled cert.
    def use_bundled_cert!
      config.delete(:ssl_ca_directory)
      config.delete(:ssl_ca_store)
      config[:ssl_ca_bundle] = File.expand_path(File.join(
        File.dirname(__FILE__),
        '..',
        'ca-bundle.crt'
      ))
    end

    # Loads modules that are normally loaded with Ruby's `autoload`.
    # This can avoid thread-safety issues that some Ruby versions have
    # with `autoload`.
    #
    #     # loads ALL services
    #     Aws.eager_autoload!
    #
    # Loading all services can be slow. You can specify what services you
    # want to load with the `:services` option. All services not named
    # will continue to autoload as normal.
    #
    #     Aws.eager_autoload!(services: %w(S3 EC2))
    #
    # @return [void]
    def eager_autoload!(options = {})
      eager_loader = EagerLoader.new
      eager_loader.load(JMESPath)
      eager_loader.load(Seahorse)
      sub_modules(options).each do |module_or_class|
        eager_loader.load(module_or_class)
      end
      eager_loader
    end

    def sub_modules(options = {})
      constants = Aws.constants.map(&:to_s)
      if options[:services]
        constants -= SERVICE_MODULE_NAMES
        constants += options[:services] || SERVICE_MODULE_NAMES
      end
      constants.inject([]) do |modules, const_name|
        constant = Aws.const_get(const_name)
        modules << constant if Module === constant
        modules
      end
    end

  end
end

require 'aws-sdk-sts'
