# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module ElasticBeanstalk
    module Types

      # @note When making an API call, pass AbortEnvironmentUpdateMessage
      #   data as a hash:
      #
      #       {
      #         environment_id: "EnvironmentId",
      #         environment_name: "EnvironmentName",
      #       }
      class AbortEnvironmentUpdateMessage < Struct.new(
        :environment_id,
        :environment_name)

        include Aws::Structure

        # @!attribute [rw] environment_id
        #   This specifies the ID of the environment with the in-progress update
        #   that you want to cancel.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   This specifies the name of the environment with the in-progress
        #   update that you want to cancel.
        #   @return [String]

      end

      # Describes the properties of an application.
      class ApplicationDescription < Struct.new(
        :application_name,
        :description,
        :date_created,
        :date_updated,
        :versions,
        :configuration_templates)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application.
        #   @return [String]

        # @!attribute [rw] description
        #   User-defined description of the application.
        #   @return [String]

        # @!attribute [rw] date_created
        #   The date when the application was created.
        #   @return [Time]

        # @!attribute [rw] date_updated
        #   The date when the application was last modified.
        #   @return [Time]

        # @!attribute [rw] versions
        #   The names of the versions for this application.
        #   @return [Array<String>]

        # @!attribute [rw] configuration_templates
        #   The names of the configuration templates associated with this
        #   application.
        #   @return [Array<String>]

      end

      # Result message containing a single description of an application.
      class ApplicationDescriptionMessage < Struct.new(
        :application)

        include Aws::Structure

        # @!attribute [rw] application
        #   The ApplicationDescription of the application.
        #   @return [Types::ApplicationDescription]

      end

      # Result message containing a list of application descriptions.
      class ApplicationDescriptionsMessage < Struct.new(
        :applications)

        include Aws::Structure

        # @!attribute [rw] applications
        #   This parameter contains a list of ApplicationDescription.
        #   @return [Array<Types::ApplicationDescription>]

      end

      # Represents the application metrics for a specified environment.
      class ApplicationMetrics < Struct.new(
        :duration,
        :request_count,
        :status_codes,
        :latency)

        include Aws::Structure

        # @!attribute [rw] duration
        #   The amount of time that the metrics cover (usually 10 seconds). For
        #   example, you might have 5 requests (`request_count`) within the most
        #   recent time slice of 10 seconds (`duration`).
        #   @return [Integer]

        # @!attribute [rw] request_count
        #   Average number of requests handled by the web server per second over
        #   the last 10 seconds.
        #   @return [Integer]

        # @!attribute [rw] status_codes
        #   Represents the percentage of requests over the last 10 seconds that
        #   resulted in each type of status code response.
        #   @return [Types::StatusCodes]

        # @!attribute [rw] latency
        #   Represents the average latency for the slowest X percent of requests
        #   over the last 10 seconds. Latencies are in seconds with one
        #   milisecond resolution.
        #   @return [Types::Latency]

      end

      # Describes the properties of an application version.
      class ApplicationVersionDescription < Struct.new(
        :application_name,
        :description,
        :version_label,
        :source_bundle,
        :date_created,
        :date_updated,
        :status)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application associated with this release.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of this application version.
        #   @return [String]

        # @!attribute [rw] version_label
        #   A label uniquely identifying the version for the associated
        #   application.
        #   @return [String]

        # @!attribute [rw] source_bundle
        #   The location where the source bundle is located for this version.
        #   @return [Types::S3Location]

        # @!attribute [rw] date_created
        #   The creation date of the application version.
        #   @return [Time]

        # @!attribute [rw] date_updated
        #   The last modified date of the application version.
        #   @return [Time]

        # @!attribute [rw] status
        #   The processing status of the application version.
        #   @return [String]

      end

      # Result message wrapping a single description of an application
      # version.
      class ApplicationVersionDescriptionMessage < Struct.new(
        :application_version)

        include Aws::Structure

        # @!attribute [rw] application_version
        #   The ApplicationVersionDescription of the application version.
        #   @return [Types::ApplicationVersionDescription]

      end

      # Result message wrapping a list of application version descriptions.
      class ApplicationVersionDescriptionsMessage < Struct.new(
        :application_versions)

        include Aws::Structure

        # @!attribute [rw] application_versions
        #   List of `ApplicationVersionDescription` objects sorted by order of
        #   creation.
        #   @return [Array<Types::ApplicationVersionDescription>]

      end

      # Request to execute a scheduled managed action immediately.
      # @note When making an API call, pass ApplyEnvironmentManagedActionRequest
      #   data as a hash:
      #
      #       {
      #         environment_name: "String",
      #         environment_id: "String",
      #         action_id: "String", # required
      #       }
      class ApplyEnvironmentManagedActionRequest < Struct.new(
        :environment_name,
        :environment_id,
        :action_id)

        include Aws::Structure

        # @!attribute [rw] environment_name
        #   The name of the target environment.
        #   @return [String]

        # @!attribute [rw] environment_id
        #   The environment ID of the target environment.
        #   @return [String]

        # @!attribute [rw] action_id
        #   The action ID of the scheduled managed action to execute.
        #   @return [String]

      end

      # The result message containing information about the managed action.
      class ApplyEnvironmentManagedActionResult < Struct.new(
        :action_id,
        :action_description,
        :action_type,
        :status)

        include Aws::Structure

        # @!attribute [rw] action_id
        #   The action ID of the managed action.
        #   @return [String]

        # @!attribute [rw] action_description
        #   A description of the managed action.
        #   @return [String]

        # @!attribute [rw] action_type
        #   The type of managed action.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the managed action.
        #   @return [String]

      end

      # Describes an Auto Scaling launch configuration.
      class AutoScalingGroup < Struct.new(
        :name)

        include Aws::Structure

        # @!attribute [rw] name
        #   The name of the `AutoScalingGroup` .
        #   @return [String]

      end

      # Represents CPU utilization information from the specified instance
      # that belongs to the AWS Elastic Beanstalk environment. Use the
      # `instanceId` property to specify the application instance for which
      # you\'d like to return data.
      class CPUUtilization < Struct.new(
        :user,
        :nice,
        :system,
        :idle,
        :io_wait,
        :irq,
        :soft_irq)

        include Aws::Structure

        # @!attribute [rw] user
        #   Percentage of time that the CPU has spent in the `User` state over
        #   the last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] nice
        #   Percentage of time that the CPU has spent in the `Nice` state over
        #   the last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] system
        #   Percentage of time that the CPU has spent in the `System` state over
        #   the last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] idle
        #   Percentage of time that the CPU has spent in the `Idle` state over
        #   the last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] io_wait
        #   Percentage of time that the CPU has spent in the `I/O Wait` state
        #   over the last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] irq
        #   Percentage of time that the CPU has spent in the `IRQ` state over
        #   the last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] soft_irq
        #   Percentage of time that the CPU has spent in the `SoftIRQ` state
        #   over the last 10 seconds.
        #   @return [Float]

      end

      # Results message indicating whether a CNAME is available.
      # @note When making an API call, pass CheckDNSAvailabilityMessage
      #   data as a hash:
      #
      #       {
      #         cname_prefix: "DNSCnamePrefix", # required
      #       }
      class CheckDNSAvailabilityMessage < Struct.new(
        :cname_prefix)

        include Aws::Structure

        # @!attribute [rw] cname_prefix
        #   The prefix used when this CNAME is reserved.
        #   @return [String]

      end

      # Indicates if the specified CNAME is available.
      class CheckDNSAvailabilityResultMessage < Struct.new(
        :available,
        :fully_qualified_cname)

        include Aws::Structure

        # @!attribute [rw] available
        #   Indicates if the specified CNAME is available:
        #
        #   * `true`\: The CNAME is available.
        #   * `false`\: The CNAME is not available.
        #   @return [Boolean]

        # @!attribute [rw] fully_qualified_cname
        #   The fully qualified CNAME to reserve when CreateEnvironment is
        #   called with the provided prefix.
        #   @return [String]

      end

      # Request to create or update a group of environments.
      # @note When making an API call, pass ComposeEnvironmentsMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName",
      #         group_name: "GroupName",
      #         version_labels: ["VersionLabel"],
      #       }
      class ComposeEnvironmentsMessage < Struct.new(
        :application_name,
        :group_name,
        :version_labels)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application to which the specified source bundles
        #   belong.
        #   @return [String]

        # @!attribute [rw] group_name
        #   The name of the group to which the target environments belong.
        #   Specify a group name only if the environment name defined in each
        #   target environment\'s manifest ends with a + (plus) character. See
        #   [Environment Manifest (env.yaml)][1] for details.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
        #   @return [String]

        # @!attribute [rw] version_labels
        #   A list of version labels, specifying one or more application source
        #   bundles that belong to the target application. Each source bundle
        #   must include an environment manifest that specifies the name of the
        #   environment and the name of the solution stack to use, and
        #   optionally can specify environment links to create.
        #   @return [Array<String>]

      end

      # Describes the possible values for a configuration option.
      class ConfigurationOptionDescription < Struct.new(
        :namespace,
        :name,
        :default_value,
        :change_severity,
        :user_defined,
        :value_type,
        :value_options,
        :min_value,
        :max_value,
        :max_length,
        :regex)

        include Aws::Structure

        # @!attribute [rw] namespace
        #   A unique namespace identifying the option\'s associated AWS
        #   resource.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the configuration option.
        #   @return [String]

        # @!attribute [rw] default_value
        #   The default value for this configuration option.
        #   @return [String]

        # @!attribute [rw] change_severity
        #   An indication of which action is required if the value for this
        #   configuration option changes:
        #
        #   * `NoInterruption`\: There is no interruption to the environment or
        #     application availability.
        #   * `RestartEnvironment`\: The environment is entirely restarted, all
        #     AWS resources are deleted and recreated, and the environment is
        #     unavailable during the process.
        #   * `RestartApplicationServer`\: The environment is available the
        #     entire time. However, a short application outage occurs when the
        #     application servers on the running Amazon EC2 instances are
        #     restarted.
        #   @return [String]

        # @!attribute [rw] user_defined
        #   An indication of whether the user defined this configuration option:
        #
        #   * `true`\: This configuration option was defined by the user. It is
        #     a valid choice for specifying if this as an `Option to Remove`
        #     when updating configuration settings.
        #
        #   * `false`\: This configuration was not defined by the user.
        #
        #   Constraint: You can remove only `UserDefined` options from a
        #   configuration.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] value_type
        #   An indication of which type of values this option has and whether it
        #   is allowable to select one or more than one of the possible values:
        #
        #   * `Scalar`\: Values for this option are a single selection from the
        #     possible values, or an unformatted string, or numeric value
        #     governed by the `MIN/MAX/Regex` constraints.
        #   * `List`\: Values for this option are multiple selections from the
        #     possible values.
        #   * `Boolean`\: Values for this option are either `true` or `false` .
        #   * `Json`\: Values for this option are a JSON representation of a
        #     `ConfigDocument`.
        #   @return [String]

        # @!attribute [rw] value_options
        #   If specified, values for the configuration option are selected from
        #   this list.
        #   @return [Array<String>]

        # @!attribute [rw] min_value
        #   If specified, the configuration option must be a numeric value
        #   greater than this value.
        #   @return [Integer]

        # @!attribute [rw] max_value
        #   If specified, the configuration option must be a numeric value less
        #   than this value.
        #   @return [Integer]

        # @!attribute [rw] max_length
        #   If specified, the configuration option must be a string value no
        #   longer than this value.
        #   @return [Integer]

        # @!attribute [rw] regex
        #   If specified, the configuration option must be a string value that
        #   satisfies this regular expression.
        #   @return [Types::OptionRestrictionRegex]

      end

      # A specification identifying an individual configuration option along
      # with its current value. For a list of possible option values, go to
      # [Option Values][1] in the *AWS Elastic Beanstalk Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html
      # @note When making an API call, pass ConfigurationOptionSetting
      #   data as a hash:
      #
      #       {
      #         resource_name: "ResourceName",
      #         namespace: "OptionNamespace",
      #         option_name: "ConfigurationOptionName",
      #         value: "ConfigurationOptionValue",
      #       }
      class ConfigurationOptionSetting < Struct.new(
        :resource_name,
        :namespace,
        :option_name,
        :value)

        include Aws::Structure

        # @!attribute [rw] resource_name
        #   A unique resource name for a time-based scaling configuration
        #   option.
        #   @return [String]

        # @!attribute [rw] namespace
        #   A unique namespace identifying the option\'s associated AWS
        #   resource.
        #   @return [String]

        # @!attribute [rw] option_name
        #   The name of the configuration option.
        #   @return [String]

        # @!attribute [rw] value
        #   The current value for the configuration option.
        #   @return [String]

      end

      # Describes the settings for a specified configuration set.
      class ConfigurationOptionsDescription < Struct.new(
        :solution_stack_name,
        :options)

        include Aws::Structure

        # @!attribute [rw] solution_stack_name
        #   The name of the solution stack these configuration options belong
        #   to.
        #   @return [String]

        # @!attribute [rw] options
        #   A list of ConfigurationOptionDescription.
        #   @return [Array<Types::ConfigurationOptionDescription>]

      end

      # Describes the settings for a configuration set.
      class ConfigurationSettingsDescription < Struct.new(
        :solution_stack_name,
        :application_name,
        :template_name,
        :description,
        :environment_name,
        :deployment_status,
        :date_created,
        :date_updated,
        :option_settings)

        include Aws::Structure

        # @!attribute [rw] solution_stack_name
        #   The name of the solution stack this configuration set uses.
        #   @return [String]

        # @!attribute [rw] application_name
        #   The name of the application associated with this configuration set.
        #   @return [String]

        # @!attribute [rw] template_name
        #   If not `null`, the name of the configuration template for this
        #   configuration set.
        #   @return [String]

        # @!attribute [rw] description
        #   Describes this configuration set.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   If not `null`, the name of the environment for this configuration
        #   set.
        #   @return [String]

        # @!attribute [rw] deployment_status
        #   If this configuration set is associated with an environment, the
        #   `DeploymentStatus` parameter indicates the deployment status of this
        #   configuration set:
        #
        #   * `null`\: This configuration is not associated with a running
        #     environment.
        #   * `pending`\: This is a draft configuration that is not deployed to
        #     the associated environment but is in the process of deploying.
        #   * `deployed`\: This is the configuration that is currently deployed
        #     to the associated running environment.
        #   * `failed`\: This is a draft configuration that failed to
        #     successfully deploy.
        #   @return [String]

        # @!attribute [rw] date_created
        #   The date (in UTC time) when this configuration set was created.
        #   @return [Time]

        # @!attribute [rw] date_updated
        #   The date (in UTC time) when this configuration set was last
        #   modified.
        #   @return [Time]

        # @!attribute [rw] option_settings
        #   A list of the configuration options and their values in this
        #   configuration set.
        #   @return [Array<Types::ConfigurationOptionSetting>]

      end

      # The results from a request to change the configuration settings of an
      # environment.
      class ConfigurationSettingsDescriptions < Struct.new(
        :configuration_settings)

        include Aws::Structure

        # @!attribute [rw] configuration_settings
        #   A list of ConfigurationSettingsDescription.
        #   @return [Array<Types::ConfigurationSettingsDescription>]

      end

      # Provides a list of validation messages.
      class ConfigurationSettingsValidationMessages < Struct.new(
        :messages)

        include Aws::Structure

        # @!attribute [rw] messages
        #   A list of ValidationMessage.
        #   @return [Array<Types::ValidationMessage>]

      end

      # Request to create an application.
      # @note When making an API call, pass CreateApplicationMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         description: "Description",
      #       }
      class CreateApplicationMessage < Struct.new(
        :application_name,
        :description)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application.
        #
        #   Constraint: This name must be unique within your account. If the
        #   specified name already exists, the action returns an
        #   `InvalidParameterValue` error.
        #   @return [String]

        # @!attribute [rw] description
        #   Describes the application.
        #   @return [String]

      end

      # @note When making an API call, pass CreateApplicationVersionMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         version_label: "VersionLabel", # required
      #         description: "Description",
      #         source_bundle: {
      #           s3_bucket: "S3Bucket",
      #           s3_key: "S3Key",
      #         },
      #         auto_create_application: false,
      #         process: false,
      #       }
      class CreateApplicationVersionMessage < Struct.new(
        :application_name,
        :version_label,
        :description,
        :source_bundle,
        :auto_create_application,
        :process)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application. If no application is found with this
        #   name, and `AutoCreateApplication` is `false`, returns an
        #   `InvalidParameterValue` error.
        #   @return [String]

        # @!attribute [rw] version_label
        #   A label identifying this version.
        #
        #   Constraint: Must be unique per application. If an application
        #   version already exists with this label for the specified
        #   application, AWS Elastic Beanstalk returns an
        #   `InvalidParameterValue` error.
        #   @return [String]

        # @!attribute [rw] description
        #   Describes this version.
        #   @return [String]

        # @!attribute [rw] source_bundle
        #   The Amazon S3 bucket and key that identify the location of the
        #   source bundle for this version.
        #
        #   If data found at the Amazon S3 location exceeds the maximum allowed
        #   source bundle size, AWS Elastic Beanstalk returns an
        #   `InvalidParameterValue` error. The maximum size allowed is 512 MB.
        #
        #   Default: If not specified, AWS Elastic Beanstalk uses a sample
        #   application. If only partially specified (for example, a bucket is
        #   provided but not the key) or if no data is found at the Amazon S3
        #   location, AWS Elastic Beanstalk returns an
        #   `InvalidParameterCombination` error.
        #   @return [Types::S3Location]

        # @!attribute [rw] auto_create_application
        #   Determines how the system behaves if the specified application for
        #   this version does not already exist:
        #
        #   * `true`\: Automatically creates the specified application for this
        #     release if it does not already exist.
        #   * `false`\: Throws an `InvalidParameterValue` if the specified
        #     application for this release does not already exist.
        #
        #   Default: `false`
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

        # @!attribute [rw] process
        #   Preprocesses and validates the environment manifest and
        #   configuration files in the source bundle. Validating configuration
        #   files can identify issues prior to deploying the application version
        #   to an environment.
        #   @return [Boolean]

      end

      # Request to create a configuration template.
      # @note When making an API call, pass CreateConfigurationTemplateMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         template_name: "ConfigurationTemplateName", # required
      #         solution_stack_name: "SolutionStackName",
      #         source_configuration: {
      #           application_name: "ApplicationName",
      #           template_name: "ConfigurationTemplateName",
      #         },
      #         environment_id: "EnvironmentId",
      #         description: "Description",
      #         option_settings: [
      #           {
      #             resource_name: "ResourceName",
      #             namespace: "OptionNamespace",
      #             option_name: "ConfigurationOptionName",
      #             value: "ConfigurationOptionValue",
      #           },
      #         ],
      #       }
      class CreateConfigurationTemplateMessage < Struct.new(
        :application_name,
        :template_name,
        :solution_stack_name,
        :source_configuration,
        :environment_id,
        :description,
        :option_settings)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application to associate with this configuration
        #   template. If no application is found with this name, AWS Elastic
        #   Beanstalk returns an `InvalidParameterValue` error.
        #   @return [String]

        # @!attribute [rw] template_name
        #   The name of the configuration template.
        #
        #   Constraint: This name must be unique per application.
        #
        #   Default: If a configuration template already exists with this name,
        #   AWS Elastic Beanstalk returns an `InvalidParameterValue` error.
        #   @return [String]

        # @!attribute [rw] solution_stack_name
        #   The name of the solution stack used by this configuration. The
        #   solution stack specifies the operating system, architecture, and
        #   application server for a configuration template. It determines the
        #   set of configuration options as well as the possible and default
        #   values.
        #
        #   Use ListAvailableSolutionStacks to obtain a list of available
        #   solution stacks.
        #
        #   A solution stack name or a source configuration parameter must be
        #   specified, otherwise AWS Elastic Beanstalk returns an
        #   `InvalidParameterValue` error.
        #
        #   If a solution stack name is not specified and the source
        #   configuration parameter is specified, AWS Elastic Beanstalk uses the
        #   same solution stack as the source configuration template.
        #   @return [String]

        # @!attribute [rw] source_configuration
        #   If specified, AWS Elastic Beanstalk uses the configuration values
        #   from the specified configuration template to create a new
        #   configuration.
        #
        #   Values specified in the `OptionSettings` parameter of this call
        #   overrides any values obtained from the `SourceConfiguration`.
        #
        #   If no configuration template is found, returns an
        #   `InvalidParameterValue` error.
        #
        #   Constraint: If both the solution stack name parameter and the source
        #   configuration parameters are specified, the solution stack of the
        #   source configuration template must match the specified solution
        #   stack name or else AWS Elastic Beanstalk returns an
        #   `InvalidParameterCombination` error.
        #   @return [Types::SourceConfiguration]

        # @!attribute [rw] environment_id
        #   The ID of the environment used with this configuration template.
        #   @return [String]

        # @!attribute [rw] description
        #   Describes this configuration.
        #   @return [String]

        # @!attribute [rw] option_settings
        #   If specified, AWS Elastic Beanstalk sets the specified configuration
        #   option to the requested value. The new value overrides the value
        #   obtained from the solution stack or the source configuration
        #   template.
        #   @return [Array<Types::ConfigurationOptionSetting>]

      end

      # @note When making an API call, pass CreateEnvironmentMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         environment_name: "EnvironmentName",
      #         group_name: "GroupName",
      #         description: "Description",
      #         cname_prefix: "DNSCnamePrefix",
      #         tier: {
      #           name: "String",
      #           type: "String",
      #           version: "String",
      #         },
      #         tags: [
      #           {
      #             key: "TagKey",
      #             value: "TagValue",
      #           },
      #         ],
      #         version_label: "VersionLabel",
      #         template_name: "ConfigurationTemplateName",
      #         solution_stack_name: "SolutionStackName",
      #         option_settings: [
      #           {
      #             resource_name: "ResourceName",
      #             namespace: "OptionNamespace",
      #             option_name: "ConfigurationOptionName",
      #             value: "ConfigurationOptionValue",
      #           },
      #         ],
      #         options_to_remove: [
      #           {
      #             resource_name: "ResourceName",
      #             namespace: "OptionNamespace",
      #             option_name: "ConfigurationOptionName",
      #           },
      #         ],
      #       }
      class CreateEnvironmentMessage < Struct.new(
        :application_name,
        :environment_name,
        :group_name,
        :description,
        :cname_prefix,
        :tier,
        :tags,
        :version_label,
        :template_name,
        :solution_stack_name,
        :option_settings,
        :options_to_remove)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application that contains the version to be
        #   deployed.
        #
        #   If no application is found with this name, `CreateEnvironment`
        #   returns an `InvalidParameterValue` error.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   A unique name for the deployment environment. Used in the
        #   application URL.
        #
        #   Constraint: Must be from 4 to 40 characters in length. The name can
        #   contain only letters, numbers, and hyphens. It cannot start or end
        #   with a hyphen. This name must be unique in your account. If the
        #   specified name already exists, AWS Elastic Beanstalk returns an
        #   `InvalidParameterValue` error.
        #
        #   Default: If the CNAME parameter is not specified, the environment
        #   name becomes part of the CNAME, and therefore part of the visible
        #   URL for your application.
        #   @return [String]

        # @!attribute [rw] group_name
        #   The name of the group to which the target environment belongs.
        #   Specify a group name only if the environment\'s name is specified in
        #   an environment manifest and not with the environment name parameter.
        #   See [Environment Manifest (env.yaml)][1] for details.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
        #   @return [String]

        # @!attribute [rw] description
        #   Describes this environment.
        #   @return [String]

        # @!attribute [rw] cname_prefix
        #   If specified, the environment attempts to use this value as the
        #   prefix for the CNAME. If not specified, the CNAME is generated
        #   automatically by appending a random alphanumeric string to the
        #   environment name.
        #   @return [String]

        # @!attribute [rw] tier
        #   This specifies the tier to use for creating this environment.
        #   @return [Types::EnvironmentTier]

        # @!attribute [rw] tags
        #   This specifies the tags applied to resources in the environment.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] version_label
        #   The name of the application version to deploy.
        #
        #   If the specified application has no associated application versions,
        #   AWS Elastic Beanstalk `UpdateEnvironment` returns an
        #   `InvalidParameterValue` error.
        #
        #   Default: If not specified, AWS Elastic Beanstalk attempts to launch
        #   the sample application in the container.
        #   @return [String]

        # @!attribute [rw] template_name
        #   The name of the configuration template to use in deployment. If no
        #   configuration template is found with this name, AWS Elastic
        #   Beanstalk returns an `InvalidParameterValue` error.
        #
        #   Condition: You must specify either this parameter or a
        #   `SolutionStackName`, but not both. If you specify both, AWS Elastic
        #   Beanstalk returns an `InvalidParameterCombination` error. If you do
        #   not specify either, AWS Elastic Beanstalk returns a
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] solution_stack_name
        #   This is an alternative to specifying a template name. If specified,
        #   AWS Elastic Beanstalk sets the configuration values to the default
        #   values associated with the specified solution stack.
        #
        #   Condition: You must specify either this or a `TemplateName`, but not
        #   both. If you specify both, AWS Elastic Beanstalk returns an
        #   `InvalidParameterCombination` error. If you do not specify either,
        #   AWS Elastic Beanstalk returns a `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] option_settings
        #   If specified, AWS Elastic Beanstalk sets the specified configuration
        #   options to the requested value in the configuration set for the new
        #   environment. These override the values obtained from the solution
        #   stack or the configuration template.
        #   @return [Array<Types::ConfigurationOptionSetting>]

        # @!attribute [rw] options_to_remove
        #   A list of custom user-defined configuration options to remove from
        #   the configuration set for this new environment.
        #   @return [Array<Types::OptionSpecification>]

      end

      # Results of a CreateStorageLocationResult call.
      class CreateStorageLocationResultMessage < Struct.new(
        :s3_bucket)

        include Aws::Structure

        # @!attribute [rw] s3_bucket
        #   The name of the Amazon S3 bucket created.
        #   @return [String]

      end

      # Request to delete an application.
      # @note When making an API call, pass DeleteApplicationMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         terminate_env_by_force: false,
      #       }
      class DeleteApplicationMessage < Struct.new(
        :application_name,
        :terminate_env_by_force)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application to delete.
        #   @return [String]

        # @!attribute [rw] terminate_env_by_force
        #   When set to true, running environments will be terminated before
        #   deleting the application.
        #   @return [Boolean]

      end

      # Request to delete an application version.
      # @note When making an API call, pass DeleteApplicationVersionMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         version_label: "VersionLabel", # required
      #         delete_source_bundle: false,
      #       }
      class DeleteApplicationVersionMessage < Struct.new(
        :application_name,
        :version_label,
        :delete_source_bundle)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application to delete releases from.
        #   @return [String]

        # @!attribute [rw] version_label
        #   The label of the version to delete.
        #   @return [String]

        # @!attribute [rw] delete_source_bundle
        #   Indicates whether to delete the associated source bundle from Amazon
        #   S3:
        #
        #   * `true`\: An attempt is made to delete the associated Amazon S3
        #     source bundle specified at time of creation.
        #   * `false`\: No action is taken on the Amazon S3 source bundle
        #     specified at time of creation.
        #
        #   Valid Values: `true` \| `false`
        #   @return [Boolean]

      end

      # Request to delete a configuration template.
      # @note When making an API call, pass DeleteConfigurationTemplateMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         template_name: "ConfigurationTemplateName", # required
      #       }
      class DeleteConfigurationTemplateMessage < Struct.new(
        :application_name,
        :template_name)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application to delete the configuration template
        #   from.
        #   @return [String]

        # @!attribute [rw] template_name
        #   The name of the configuration template to delete.
        #   @return [String]

      end

      # Request to delete a draft environment configuration.
      # @note When making an API call, pass DeleteEnvironmentConfigurationMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         environment_name: "EnvironmentName", # required
      #       }
      class DeleteEnvironmentConfigurationMessage < Struct.new(
        :application_name,
        :environment_name)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application the environment is associated with.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the environment to delete the draft configuration from.
        #   @return [String]

      end

      # Information about an application version deployment.
      class Deployment < Struct.new(
        :version_label,
        :deployment_id,
        :status,
        :deployment_time)

        include Aws::Structure

        # @!attribute [rw] version_label
        #   The version label of the application version in the deployment.
        #   @return [String]

        # @!attribute [rw] deployment_id
        #   The ID of the deployment. This number increases by one each time
        #   that you deploy source code or change instance configuration
        #   settings.
        #   @return [Integer]

        # @!attribute [rw] status
        #   The status of the deployment:
        #
        #   * `In Progress`\: The deployment is in progress.
        #   * `Deployed`\: The deployment succeeded.
        #   * `Failed`\: The deployment failed.
        #   @return [String]

        # @!attribute [rw] deployment_time
        #   For in-progress deployments, the time that the deloyment started.
        #
        #   For completed deployments, the time that the deployment ended.
        #   @return [Time]

      end

      # Result message containing a list of configuration descriptions.
      # @note When making an API call, pass DescribeApplicationVersionsMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName",
      #         version_labels: ["VersionLabel"],
      #       }
      class DescribeApplicationVersionsMessage < Struct.new(
        :application_name,
        :version_labels)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to only include ones that are associated with the
        #   specified application.
        #   @return [String]

        # @!attribute [rw] version_labels
        #   If specified, restricts the returned descriptions to only include
        #   ones that have the specified version labels.
        #   @return [Array<String>]

      end

      # Request to describe one or more applications.
      # @note When making an API call, pass DescribeApplicationsMessage
      #   data as a hash:
      #
      #       {
      #         application_names: ["ApplicationName"],
      #       }
      class DescribeApplicationsMessage < Struct.new(
        :application_names)

        include Aws::Structure

        # @!attribute [rw] application_names
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to only include those with the specified names.
        #   @return [Array<String>]

      end

      # Result message containig a list of application version descriptions.
      # @note When making an API call, pass DescribeConfigurationOptionsMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName",
      #         template_name: "ConfigurationTemplateName",
      #         environment_name: "EnvironmentName",
      #         solution_stack_name: "SolutionStackName",
      #         options: [
      #           {
      #             resource_name: "ResourceName",
      #             namespace: "OptionNamespace",
      #             option_name: "ConfigurationOptionName",
      #           },
      #         ],
      #       }
      class DescribeConfigurationOptionsMessage < Struct.new(
        :application_name,
        :template_name,
        :environment_name,
        :solution_stack_name,
        :options)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application associated with the configuration
        #   template or environment. Only needed if you want to describe the
        #   configuration options associated with either the configuration
        #   template or environment.
        #   @return [String]

        # @!attribute [rw] template_name
        #   The name of the configuration template whose configuration options
        #   you want to describe.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the environment whose configuration options you want to
        #   describe.
        #   @return [String]

        # @!attribute [rw] solution_stack_name
        #   The name of the solution stack whose configuration options you want
        #   to describe.
        #   @return [String]

        # @!attribute [rw] options
        #   If specified, restricts the descriptions to only the specified
        #   options.
        #   @return [Array<Types::OptionSpecification>]

      end

      # Result message containing all of the configuration settings for a
      # specified solution stack or configuration template.
      # @note When making an API call, pass DescribeConfigurationSettingsMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         template_name: "ConfigurationTemplateName",
      #         environment_name: "EnvironmentName",
      #       }
      class DescribeConfigurationSettingsMessage < Struct.new(
        :application_name,
        :template_name,
        :environment_name)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The application for the environment or configuration template.
        #   @return [String]

        # @!attribute [rw] template_name
        #   The name of the configuration template to describe.
        #
        #   Conditional: You must specify either this parameter or an
        #   EnvironmentName, but not both. If you specify both, AWS Elastic
        #   Beanstalk returns an `InvalidParameterCombination` error. If you do
        #   not specify either, AWS Elastic Beanstalk returns a
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the environment to describe.
        #
        #   Condition: You must specify either this or a TemplateName, but not
        #   both. If you specify both, AWS Elastic Beanstalk returns an
        #   `InvalidParameterCombination` error. If you do not specify either,
        #   AWS Elastic Beanstalk returns `MissingRequiredParameter` error.
        #   @return [String]

      end

      # See the example below to learn how to create a request body.
      # @note When making an API call, pass DescribeEnvironmentHealthRequest
      #   data as a hash:
      #
      #       {
      #         environment_name: "EnvironmentName",
      #         environment_id: "EnvironmentId",
      #         attribute_names: ["Status"], # accepts Status, Color, Causes, ApplicationMetrics, InstancesHealth, All, HealthStatus, RefreshedAt
      #       }
      class DescribeEnvironmentHealthRequest < Struct.new(
        :environment_name,
        :environment_id,
        :attribute_names)

        include Aws::Structure

        # @!attribute [rw] environment_name
        #   Specifies the AWS Elastic Beanstalk environment name.
        #
        #   Condition: You must specify either this or an EnvironmentId, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] environment_id
        #   Specifies the AWS Elastic Beanstalk environment ID.
        #
        #   Condition: You must specify either this or an EnvironmentName, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] attribute_names
        #   Specifies the response elements you wish to receive. If no attribute
        #   names are specified, AWS Elastic Beanstalk only returns the name of
        #   the environment.
        #   @return [Array<String>]

      end

      # See the example below for a sample response.
      class DescribeEnvironmentHealthResult < Struct.new(
        :environment_name,
        :health_status,
        :status,
        :color,
        :causes,
        :application_metrics,
        :instances_health,
        :refreshed_at)

        include Aws::Structure

        # @!attribute [rw] environment_name
        #   The AWS Elastic Beanstalk environment name.
        #   @return [String]

        # @!attribute [rw] health_status
        #   Contains the response body with information about the health of the
        #   environment.
        #   @return [String]

        # @!attribute [rw] status
        #   Returns the health status value of the environment. For more
        #   information, see [Health Colors and Statuses][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
        #   @return [String]

        # @!attribute [rw] color
        #   Returns the color indicator that tells you information about the
        #   health of the environment. For more information, see [Health Colors
        #   and Statuses][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
        #   @return [String]

        # @!attribute [rw] causes
        #   Returns potential causes for the reported status.
        #   @return [Array<String>]

        # @!attribute [rw] application_metrics
        #   Represents the application metrics for a specified environment.
        #   @return [Types::ApplicationMetrics]

        # @!attribute [rw] instances_health
        #   Represents summary information about the health of an instance. For
        #   more information, see [Health Colors and Statuses][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
        #   @return [Types::InstanceHealthSummary]

        # @!attribute [rw] refreshed_at
        #   The date and time the information was last refreshed.
        #   @return [Time]

      end

      # Request to list completed and failed managed actions.
      # @note When making an API call, pass DescribeEnvironmentManagedActionHistoryRequest
      #   data as a hash:
      #
      #       {
      #         environment_id: "EnvironmentId",
      #         environment_name: "EnvironmentName",
      #         next_token: "String",
      #         max_items: 1,
      #       }
      class DescribeEnvironmentManagedActionHistoryRequest < Struct.new(
        :environment_id,
        :environment_name,
        :next_token,
        :max_items)

        include Aws::Structure

        # @!attribute [rw] environment_id
        #   The environment ID of the target environment.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the target environment.
        #   @return [String]

        # @!attribute [rw] next_token
        #   The pagination token returned by a previous request.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of items to return for a single request.
        #   @return [Integer]

      end

      # A result message containing a list of completed and failed managed
      # actions.
      class DescribeEnvironmentManagedActionHistoryResult < Struct.new(
        :managed_action_history_items,
        :next_token)

        include Aws::Structure

        # @!attribute [rw] managed_action_history_items
        #   A list of completed and failed managed actions.
        #   @return [Array<Types::ManagedActionHistoryItem>]

        # @!attribute [rw] next_token
        #   A pagination token that you pass to
        #   DescribeEnvironmentManagedActionHistory to get the next page of
        #   results.
        #   @return [String]

      end

      # Request to list an environment\'s upcoming and in-progress managed
      # actions.
      # @note When making an API call, pass DescribeEnvironmentManagedActionsRequest
      #   data as a hash:
      #
      #       {
      #         environment_name: "String",
      #         environment_id: "String",
      #         status: "Scheduled", # accepts Scheduled, Pending, Running, Unknown
      #       }
      class DescribeEnvironmentManagedActionsRequest < Struct.new(
        :environment_name,
        :environment_id,
        :status)

        include Aws::Structure

        # @!attribute [rw] environment_name
        #   The name of the target environment.
        #   @return [String]

        # @!attribute [rw] environment_id
        #   The environment ID of the target environment.
        #   @return [String]

        # @!attribute [rw] status
        #   To show only actions with a particular status, specify a status.
        #   @return [String]

      end

      # The result message containing a list of managed actions.
      class DescribeEnvironmentManagedActionsResult < Struct.new(
        :managed_actions)

        include Aws::Structure

        # @!attribute [rw] managed_actions
        #   A list of upcoming and in-progress managed actions.
        #   @return [Array<Types::ManagedAction>]

      end

      # Request to describe the resources in an environment.
      # @note When making an API call, pass DescribeEnvironmentResourcesMessage
      #   data as a hash:
      #
      #       {
      #         environment_id: "EnvironmentId",
      #         environment_name: "EnvironmentName",
      #       }
      class DescribeEnvironmentResourcesMessage < Struct.new(
        :environment_id,
        :environment_name)

        include Aws::Structure

        # @!attribute [rw] environment_id
        #   The ID of the environment to retrieve AWS resource usage data.
        #
        #   Condition: You must specify either this or an EnvironmentName, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the environment to retrieve AWS resource usage data.
        #
        #   Condition: You must specify either this or an EnvironmentId, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

      end

      # Request to describe one or more environments.
      # @note When making an API call, pass DescribeEnvironmentsMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName",
      #         version_label: "VersionLabel",
      #         environment_ids: ["EnvironmentId"],
      #         environment_names: ["EnvironmentName"],
      #         include_deleted: false,
      #         included_deleted_back_to: Time.now,
      #       }
      class DescribeEnvironmentsMessage < Struct.new(
        :application_name,
        :version_label,
        :environment_ids,
        :environment_names,
        :include_deleted,
        :included_deleted_back_to)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to include only those that are associated with this
        #   application.
        #   @return [String]

        # @!attribute [rw] version_label
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to include only those that are associated with this
        #   application version.
        #   @return [String]

        # @!attribute [rw] environment_ids
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to include only those that have the specified IDs.
        #   @return [Array<String>]

        # @!attribute [rw] environment_names
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to include only those that have the specified names.
        #   @return [Array<String>]

        # @!attribute [rw] include_deleted
        #   Indicates whether to include deleted environments:
        #
        #   `true`\: Environments that have been deleted after
        #   `IncludedDeletedBackTo` are displayed.
        #
        #   `false`\: Do not include deleted environments.
        #   @return [Boolean]

        # @!attribute [rw] included_deleted_back_to
        #   If specified when `IncludeDeleted` is set to `true`, then
        #   environments deleted after this date are displayed.
        #   @return [Time]

      end

      # Request to retrieve a list of events for an environment.
      # @note When making an API call, pass DescribeEventsMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName",
      #         version_label: "VersionLabel",
      #         template_name: "ConfigurationTemplateName",
      #         environment_id: "EnvironmentId",
      #         environment_name: "EnvironmentName",
      #         request_id: "RequestId",
      #         severity: "TRACE", # accepts TRACE, DEBUG, INFO, WARN, ERROR, FATAL
      #         start_time: Time.now,
      #         end_time: Time.now,
      #         max_records: 1,
      #         next_token: "Token",
      #       }
      class DescribeEventsMessage < Struct.new(
        :application_name,
        :version_label,
        :template_name,
        :environment_id,
        :environment_name,
        :request_id,
        :severity,
        :start_time,
        :end_time,
        :max_records,
        :next_token)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to include only those associated with this application.
        #   @return [String]

        # @!attribute [rw] version_label
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to those associated with this application version.
        #   @return [String]

        # @!attribute [rw] template_name
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to those that are associated with this environment
        #   configuration.
        #   @return [String]

        # @!attribute [rw] environment_id
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to those associated with this environment.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to those associated with this environment.
        #   @return [String]

        # @!attribute [rw] request_id
        #   If specified, AWS Elastic Beanstalk restricts the described events
        #   to include only those associated with this request ID.
        #   @return [String]

        # @!attribute [rw] severity
        #   If specified, limits the events returned from this call to include
        #   only those with the specified severity or higher.
        #   @return [String]

        # @!attribute [rw] start_time
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to those that occur on or after this time.
        #   @return [Time]

        # @!attribute [rw] end_time
        #   If specified, AWS Elastic Beanstalk restricts the returned
        #   descriptions to those that occur up to, but not including, the
        #   `EndTime`.
        #   @return [Time]

        # @!attribute [rw] max_records
        #   Specifies the maximum number of events that can be returned,
        #   beginning with the most recent event.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Pagination token. If specified, the events return the next batch of
        #   results.
        #   @return [String]

      end

      # See the example below to learn how to create a request body.
      # @note When making an API call, pass DescribeInstancesHealthRequest
      #   data as a hash:
      #
      #       {
      #         environment_name: "EnvironmentName",
      #         environment_id: "EnvironmentId",
      #         attribute_names: ["HealthStatus"], # accepts HealthStatus, Color, Causes, ApplicationMetrics, RefreshedAt, LaunchedAt, System, Deployment, AvailabilityZone, InstanceType, All
      #         next_token: "NextToken",
      #       }
      class DescribeInstancesHealthRequest < Struct.new(
        :environment_name,
        :environment_id,
        :attribute_names,
        :next_token)

        include Aws::Structure

        # @!attribute [rw] environment_name
        #   Specifies the AWS Elastic Beanstalk environment name.
        #   @return [String]

        # @!attribute [rw] environment_id
        #   Specifies the AWS Elastic Beanstalk environment ID.
        #   @return [String]

        # @!attribute [rw] attribute_names
        #   Specifies the response elements you wish to receive. If no attribute
        #   names are specified, AWS Elastic Beanstalk only returns a list of
        #   instances.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   Specifies the next token of the request.
        #   @return [String]

      end

      # See the example below for a sample response.
      class DescribeInstancesHealthResult < Struct.new(
        :instance_health_list,
        :refreshed_at,
        :next_token)

        include Aws::Structure

        # @!attribute [rw] instance_health_list
        #   Contains the response body with information about the health of the
        #   instance.
        #   @return [Array<Types::SingleInstanceHealth>]

        # @!attribute [rw] refreshed_at
        #   The date and time the information was last refreshed.
        #   @return [Time]

        # @!attribute [rw] next_token
        #   The next token.
        #   @return [String]

      end

      # Describes the properties of an environment.
      class EnvironmentDescription < Struct.new(
        :environment_name,
        :environment_id,
        :application_name,
        :version_label,
        :solution_stack_name,
        :template_name,
        :description,
        :endpoint_url,
        :cname,
        :date_created,
        :date_updated,
        :status,
        :abortable_operation_in_progress,
        :health,
        :health_status,
        :resources,
        :tier,
        :environment_links)

        include Aws::Structure

        # @!attribute [rw] environment_name
        #   The name of this environment.
        #   @return [String]

        # @!attribute [rw] environment_id
        #   The ID of this environment.
        #   @return [String]

        # @!attribute [rw] application_name
        #   The name of the application associated with this environment.
        #   @return [String]

        # @!attribute [rw] version_label
        #   The application version deployed in this environment.
        #   @return [String]

        # @!attribute [rw] solution_stack_name
        #   The name of the `SolutionStack` deployed with this environment.
        #   @return [String]

        # @!attribute [rw] template_name
        #   The name of the configuration template used to originally launch
        #   this environment.
        #   @return [String]

        # @!attribute [rw] description
        #   Describes this environment.
        #   @return [String]

        # @!attribute [rw] endpoint_url
        #   For load-balanced, autoscaling environments, the URL to the
        #   LoadBalancer. For single-instance environments, the IP address of
        #   the instance.
        #   @return [String]

        # @!attribute [rw] cname
        #   The URL to the CNAME for this environment.
        #   @return [String]

        # @!attribute [rw] date_created
        #   The creation date for this environment.
        #   @return [Time]

        # @!attribute [rw] date_updated
        #   The last modified date for this environment.
        #   @return [Time]

        # @!attribute [rw] status
        #   The current operational status of the environment:
        #
        #   * `Launching`\: Environment is in the process of initial deployment.
        #   * `Updating`\: Environment is in the process of updating its
        #     configuration settings or application version.
        #   * `Ready`\: Environment is available to have an action performed on
        #     it, such as update or terminate.
        #   * `Terminating`\: Environment is in the shut-down process.
        #   * `Terminated`\: Environment is not running.
        #   @return [String]

        # @!attribute [rw] abortable_operation_in_progress
        #   Indicates if there is an in-progress environment configuration
        #   update or application version deployment that you can cancel.
        #
        #   `true:` There is an update in progress.
        #
        #   `false:` There are no updates currently in progress.
        #   @return [Boolean]

        # @!attribute [rw] health
        #   Describes the health status of the environment. AWS Elastic
        #   Beanstalk indicates the failure levels for a running environment:
        #
        #   * `Red`\: Indicates the environment is not responsive. Occurs when
        #     three or more consecutive failures occur for an environment.
        #   * `Yellow`\: Indicates that something is wrong. Occurs when two
        #     consecutive failures occur for an environment.
        #   * `Green`\: Indicates the environment is healthy and fully
        #     functional.
        #   * `Grey`\: Default health for a new environment. The environment is
        #     not fully launched and health checks have not started or health
        #     checks are suspended during an `UpdateEnvironment` or
        #     `RestartEnvironement` request.
        #
        #   Default: `Grey`
        #   @return [String]

        # @!attribute [rw] health_status
        #   Returns the health status of the application running in your
        #   environment. For more information, see [Health Colors and
        #   Statuses][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
        #   @return [String]

        # @!attribute [rw] resources
        #   The description of the AWS resources used by this environment.
        #   @return [Types::EnvironmentResourcesDescription]

        # @!attribute [rw] tier
        #   Describes the current tier of this environment.
        #   @return [Types::EnvironmentTier]

        # @!attribute [rw] environment_links
        #   A list of links to other environments in the same group.
        #   @return [Array<Types::EnvironmentLink>]

      end

      # Result message containing a list of environment descriptions.
      class EnvironmentDescriptionsMessage < Struct.new(
        :environments)

        include Aws::Structure

        # @!attribute [rw] environments
        #   Returns an EnvironmentDescription list.
        #   @return [Array<Types::EnvironmentDescription>]

      end

      # The information retrieved from the Amazon EC2 instances.
      class EnvironmentInfoDescription < Struct.new(
        :info_type,
        :ec2_instance_id,
        :sample_timestamp,
        :message)

        include Aws::Structure

        # @!attribute [rw] info_type
        #   The type of information retrieved.
        #   @return [String]

        # @!attribute [rw] ec2_instance_id
        #   The Amazon EC2 Instance ID for this information.
        #   @return [String]

        # @!attribute [rw] sample_timestamp
        #   The time stamp when this information was retrieved.
        #   @return [Time]

        # @!attribute [rw] message
        #   The retrieved information.
        #   @return [String]

      end

      # A link to another environment, defined in the environment\'s manifest.
      # Links provide connection information in system properties that can be
      # used to connect to another environment in the same group. See
      # [Environment Manifest (env.yaml)][1] for details.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
      class EnvironmentLink < Struct.new(
        :link_name,
        :environment_name)

        include Aws::Structure

        # @!attribute [rw] link_name
        #   The name of the link.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the linked environment (the dependency).
        #   @return [String]

      end

      # Describes the AWS resources in use by this environment. This data is
      # live.
      class EnvironmentResourceDescription < Struct.new(
        :environment_name,
        :auto_scaling_groups,
        :instances,
        :launch_configurations,
        :load_balancers,
        :triggers,
        :queues)

        include Aws::Structure

        # @!attribute [rw] environment_name
        #   The name of the environment.
        #   @return [String]

        # @!attribute [rw] auto_scaling_groups
        #   The `AutoScalingGroups` used by this environment.
        #   @return [Array<Types::AutoScalingGroup>]

        # @!attribute [rw] instances
        #   The Amazon EC2 instances used by this environment.
        #   @return [Array<Types::Instance>]

        # @!attribute [rw] launch_configurations
        #   The Auto Scaling launch configurations in use by this environment.
        #   @return [Array<Types::LaunchConfiguration>]

        # @!attribute [rw] load_balancers
        #   The LoadBalancers in use by this environment.
        #   @return [Array<Types::LoadBalancer>]

        # @!attribute [rw] triggers
        #   The `AutoScaling` triggers in use by this environment.
        #   @return [Array<Types::Trigger>]

        # @!attribute [rw] queues
        #   The queues used by this environment.
        #   @return [Array<Types::Queue>]

      end

      # Result message containing a list of environment resource descriptions.
      class EnvironmentResourceDescriptionsMessage < Struct.new(
        :environment_resources)

        include Aws::Structure

        # @!attribute [rw] environment_resources
        #   A list of EnvironmentResourceDescription.
        #   @return [Types::EnvironmentResourceDescription]

      end

      # Describes the AWS resources in use by this environment. This data is
      # not live data.
      class EnvironmentResourcesDescription < Struct.new(
        :load_balancer)

        include Aws::Structure

        # @!attribute [rw] load_balancer
        #   Describes the LoadBalancer.
        #   @return [Types::LoadBalancerDescription]

      end

      # Describes the properties of an environment tier
      # @note When making an API call, pass EnvironmentTier
      #   data as a hash:
      #
      #       {
      #         name: "String",
      #         type: "String",
      #         version: "String",
      #       }
      class EnvironmentTier < Struct.new(
        :name,
        :type,
        :version)

        include Aws::Structure

        # @!attribute [rw] name
        #   The name of this environment tier.
        #   @return [String]

        # @!attribute [rw] type
        #   The type of this environment tier.
        #   @return [String]

        # @!attribute [rw] version
        #   The version of this environment tier.
        #   @return [String]

      end

      # Describes an event.
      class EventDescription < Struct.new(
        :event_date,
        :message,
        :application_name,
        :version_label,
        :template_name,
        :environment_name,
        :request_id,
        :severity)

        include Aws::Structure

        # @!attribute [rw] event_date
        #   The date when the event occurred.
        #   @return [Time]

        # @!attribute [rw] message
        #   The event message.
        #   @return [String]

        # @!attribute [rw] application_name
        #   The application associated with the event.
        #   @return [String]

        # @!attribute [rw] version_label
        #   The release label for the application version associated with this
        #   event.
        #   @return [String]

        # @!attribute [rw] template_name
        #   The name of the configuration associated with this event.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the environment associated with this event.
        #   @return [String]

        # @!attribute [rw] request_id
        #   The web service request ID for the activity of this event.
        #   @return [String]

        # @!attribute [rw] severity
        #   The severity level of this event.
        #   @return [String]

      end

      # Result message wrapping a list of event descriptions.
      class EventDescriptionsMessage < Struct.new(
        :events,
        :next_token)

        include Aws::Structure

        # @!attribute [rw] events
        #   A list of EventDescription.
        #   @return [Array<Types::EventDescription>]

        # @!attribute [rw] next_token
        #   If returned, this indicates that there are more results to obtain.
        #   Use this token in the next DescribeEvents call to get the next batch
        #   of events.
        #   @return [String]

      end

      # The description of an Amazon EC2 instance.
      class Instance < Struct.new(
        :id)

        include Aws::Structure

        # @!attribute [rw] id
        #   The ID of the Amazon EC2 instance.
        #   @return [String]

      end

      # Represents summary information about the health of an instance. For
      # more information, see [Health Colors and Statuses][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
      class InstanceHealthSummary < Struct.new(
        :no_data,
        :unknown,
        :pending,
        :ok,
        :info,
        :warning,
        :degraded,
        :severe)

        include Aws::Structure

        # @!attribute [rw] no_data
        #   **Grey.** AWS Elastic Beanstalk and the health agent are reporting
        #   no data on an instance.
        #   @return [Integer]

        # @!attribute [rw] unknown
        #   **Grey.** AWS Elastic Beanstalk and the health agent are reporting
        #   an insufficient amount of data on an instance.
        #   @return [Integer]

        # @!attribute [rw] pending
        #   **Grey.** An operation is in progress on an instance within the
        #   command timeout.
        #   @return [Integer]

        # @!attribute [rw] ok
        #   **Green.** An instance is passing health checks and the health agent
        #   is not reporting any problems.
        #   @return [Integer]

        # @!attribute [rw] info
        #   **Green.** An operation is in progress on an instance.
        #   @return [Integer]

        # @!attribute [rw] warning
        #   **Yellow.** The health agent is reporting a moderate number of
        #   request failures or other issues for an instance or environment.
        #   @return [Integer]

        # @!attribute [rw] degraded
        #   **Red.** The health agent is reporting a high number of request
        #   failures or other issues for an instance or environment.
        #   @return [Integer]

        # @!attribute [rw] severe
        #   **Red.** The health agent is reporting a very high number of request
        #   failures or other issues for an instance or environment.
        #   @return [Integer]

      end

      # Represents the average latency for the slowest X percent of requests
      # over the last 10 seconds.
      class Latency < Struct.new(
        :p999,
        :p99,
        :p95,
        :p90,
        :p85,
        :p75,
        :p50,
        :p10)

        include Aws::Structure

        # @!attribute [rw] p999
        #   The average latency for the slowest 0.1 percent of requests over the
        #   last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] p99
        #   The average latency for the slowest 1 percent of requests over the
        #   last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] p95
        #   The average latency for the slowest 5 percent of requests over the
        #   last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] p90
        #   The average latency for the slowest 10 percent of requests over the
        #   last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] p85
        #   The average latency for the slowest 15 percent of requests over the
        #   last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] p75
        #   The average latency for the slowest 25 percent of requests over the
        #   last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] p50
        #   The average latency for the slowest 50 percent of requests over the
        #   last 10 seconds.
        #   @return [Float]

        # @!attribute [rw] p10
        #   The average latency for the slowest 90 percent of requests over the
        #   last 10 seconds.
        #   @return [Float]

      end

      # Describes an Auto Scaling launch configuration.
      class LaunchConfiguration < Struct.new(
        :name)

        include Aws::Structure

        # @!attribute [rw] name
        #   The name of the launch configuration.
        #   @return [String]

      end

      # A list of available AWS Elastic Beanstalk solution stacks.
      class ListAvailableSolutionStacksResultMessage < Struct.new(
        :solution_stacks,
        :solution_stack_details)

        include Aws::Structure

        # @!attribute [rw] solution_stacks
        #   A list of available solution stacks.
        #   @return [Array<String>]

        # @!attribute [rw] solution_stack_details
        #   A list of available solution stacks and their
        #   SolutionStackDescription.
        #   @return [Array<Types::SolutionStackDescription>]

      end

      # Describes the properties of a Listener for the LoadBalancer.
      class Listener < Struct.new(
        :protocol,
        :port)

        include Aws::Structure

        # @!attribute [rw] protocol
        #   The protocol that is used by the Listener.
        #   @return [String]

        # @!attribute [rw] port
        #   The port that is used by the Listener.
        #   @return [Integer]

      end

      # Describes a LoadBalancer.
      class LoadBalancer < Struct.new(
        :name)

        include Aws::Structure

        # @!attribute [rw] name
        #   The name of the LoadBalancer.
        #   @return [String]

      end

      # Describes the details of a LoadBalancer.
      class LoadBalancerDescription < Struct.new(
        :load_balancer_name,
        :domain,
        :listeners)

        include Aws::Structure

        # @!attribute [rw] load_balancer_name
        #   The name of the LoadBalancer.
        #   @return [String]

        # @!attribute [rw] domain
        #   The domain name of the LoadBalancer.
        #   @return [String]

        # @!attribute [rw] listeners
        #   A list of Listeners used by the LoadBalancer.
        #   @return [Array<Types::Listener>]

      end

      # The record of an upcoming or in-progress managed action.
      class ManagedAction < Struct.new(
        :action_id,
        :action_description,
        :action_type,
        :status,
        :window_start_time)

        include Aws::Structure

        # @!attribute [rw] action_id
        #   A unique identifier for the managed action.
        #   @return [String]

        # @!attribute [rw] action_description
        #   A description of the managed action.
        #   @return [String]

        # @!attribute [rw] action_type
        #   The type of managed action.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the managed action. If the action is `Scheduled`, you
        #   can apply it immediately with ApplyEnvironmentManagedAction.
        #   @return [String]

        # @!attribute [rw] window_start_time
        #   The start time of the maintenance window in which the managed action
        #   will execute.
        #   @return [Time]

      end

      # The record of a completed or failed managed action.
      class ManagedActionHistoryItem < Struct.new(
        :action_id,
        :action_type,
        :action_description,
        :failure_type,
        :status,
        :failure_description,
        :executed_time,
        :finished_time)

        include Aws::Structure

        # @!attribute [rw] action_id
        #   A unique identifier for the managed action.
        #   @return [String]

        # @!attribute [rw] action_type
        #   The type of the managed action.
        #   @return [String]

        # @!attribute [rw] action_description
        #   A description of the managed action.
        #   @return [String]

        # @!attribute [rw] failure_type
        #   If the action failed, the type of failure.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the action.
        #   @return [String]

        # @!attribute [rw] failure_description
        #   If the action failed, a description of the failure.
        #   @return [String]

        # @!attribute [rw] executed_time
        #   The date and time that the action started executing.
        #   @return [Time]

        # @!attribute [rw] finished_time
        #   The date and time that the action finished executing.
        #   @return [Time]

      end

      # A regular expression representing a restriction on a string
      # configuration option value.
      class OptionRestrictionRegex < Struct.new(
        :pattern,
        :label)

        include Aws::Structure

        # @!attribute [rw] pattern
        #   The regular expression pattern that a string configuration option
        #   value with this restriction must match.
        #   @return [String]

        # @!attribute [rw] label
        #   A unique name representing this regular expression.
        #   @return [String]

      end

      # A specification identifying an individual configuration option.
      # @note When making an API call, pass OptionSpecification
      #   data as a hash:
      #
      #       {
      #         resource_name: "ResourceName",
      #         namespace: "OptionNamespace",
      #         option_name: "ConfigurationOptionName",
      #       }
      class OptionSpecification < Struct.new(
        :resource_name,
        :namespace,
        :option_name)

        include Aws::Structure

        # @!attribute [rw] resource_name
        #   A unique resource name for a time-based scaling configuration
        #   option.
        #   @return [String]

        # @!attribute [rw] namespace
        #   A unique namespace identifying the option\'s associated AWS
        #   resource.
        #   @return [String]

        # @!attribute [rw] option_name
        #   The name of the configuration option.
        #   @return [String]

      end

      # Describes a queue.
      class Queue < Struct.new(
        :name,
        :url)

        include Aws::Structure

        # @!attribute [rw] name
        #   The name of the queue.
        #   @return [String]

        # @!attribute [rw] url
        #   The URL of the queue.
        #   @return [String]

      end

      # @note When making an API call, pass RebuildEnvironmentMessage
      #   data as a hash:
      #
      #       {
      #         environment_id: "EnvironmentId",
      #         environment_name: "EnvironmentName",
      #       }
      class RebuildEnvironmentMessage < Struct.new(
        :environment_id,
        :environment_name)

        include Aws::Structure

        # @!attribute [rw] environment_id
        #   The ID of the environment to rebuild.
        #
        #   Condition: You must specify either this or an EnvironmentName, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the environment to rebuild.
        #
        #   Condition: You must specify either this or an EnvironmentId, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

      end

      # Request to retrieve logs from an environment and store them in your
      # Elastic Beanstalk storage bucket.
      # @note When making an API call, pass RequestEnvironmentInfoMessage
      #   data as a hash:
      #
      #       {
      #         environment_id: "EnvironmentId",
      #         environment_name: "EnvironmentName",
      #         info_type: "tail", # required, accepts tail, bundle
      #       }
      class RequestEnvironmentInfoMessage < Struct.new(
        :environment_id,
        :environment_name,
        :info_type)

        include Aws::Structure

        # @!attribute [rw] environment_id
        #   The ID of the environment of the requested data.
        #
        #   If no such environment is found, `RequestEnvironmentInfo` returns an
        #   `InvalidParameterValue` error.
        #
        #   Condition: You must specify either this or an EnvironmentName, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the environment of the requested data.
        #
        #   If no such environment is found, `RequestEnvironmentInfo` returns an
        #   `InvalidParameterValue` error.
        #
        #   Condition: You must specify either this or an EnvironmentId, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] info_type
        #   The type of information to request.
        #   @return [String]

      end

      # @note When making an API call, pass RestartAppServerMessage
      #   data as a hash:
      #
      #       {
      #         environment_id: "EnvironmentId",
      #         environment_name: "EnvironmentName",
      #       }
      class RestartAppServerMessage < Struct.new(
        :environment_id,
        :environment_name)

        include Aws::Structure

        # @!attribute [rw] environment_id
        #   The ID of the environment to restart the server for.
        #
        #   Condition: You must specify either this or an EnvironmentName, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the environment to restart the server for.
        #
        #   Condition: You must specify either this or an EnvironmentId, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

      end

      # Request to download logs retrieved with RequestEnvironmentInfo.
      # @note When making an API call, pass RetrieveEnvironmentInfoMessage
      #   data as a hash:
      #
      #       {
      #         environment_id: "EnvironmentId",
      #         environment_name: "EnvironmentName",
      #         info_type: "tail", # required, accepts tail, bundle
      #       }
      class RetrieveEnvironmentInfoMessage < Struct.new(
        :environment_id,
        :environment_name,
        :info_type)

        include Aws::Structure

        # @!attribute [rw] environment_id
        #   The ID of the data\'s environment.
        #
        #   If no such environment is found, returns an `InvalidParameterValue`
        #   error.
        #
        #   Condition: You must specify either this or an EnvironmentName, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the data\'s environment.
        #
        #   If no such environment is found, returns an `InvalidParameterValue`
        #   error.
        #
        #   Condition: You must specify either this or an EnvironmentId, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] info_type
        #   The type of information to retrieve.
        #   @return [String]

      end

      # Result message containing a description of the requested environment
      # info.
      class RetrieveEnvironmentInfoResultMessage < Struct.new(
        :environment_info)

        include Aws::Structure

        # @!attribute [rw] environment_info
        #   The EnvironmentInfoDescription of the environment.
        #   @return [Array<Types::EnvironmentInfoDescription>]

      end

      # A specification of a location in Amazon S3.
      # @note When making an API call, pass S3Location
      #   data as a hash:
      #
      #       {
      #         s3_bucket: "S3Bucket",
      #         s3_key: "S3Key",
      #       }
      class S3Location < Struct.new(
        :s3_bucket,
        :s3_key)

        include Aws::Structure

        # @!attribute [rw] s3_bucket
        #   The Amazon S3 bucket where the data is located.
        #   @return [String]

        # @!attribute [rw] s3_key
        #   The Amazon S3 key where the data is located.
        #   @return [String]

      end

      # Represents health information from the specified instance that belongs
      # to the AWS Elastic Beanstalk environment. Use the `InstanceId`
      # property to specify the application instance for which you\'d like to
      # return data.
      class SingleInstanceHealth < Struct.new(
        :instance_id,
        :health_status,
        :color,
        :causes,
        :launched_at,
        :application_metrics,
        :system,
        :deployment,
        :availability_zone,
        :instance_type)

        include Aws::Structure

        # @!attribute [rw] instance_id
        #   The ID of the Amazon EC2 instance.
        #   @return [String]

        # @!attribute [rw] health_status
        #   Returns the health status of the specified instance. For more
        #   information, see [Health Colors and Statuses][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
        #   @return [String]

        # @!attribute [rw] color
        #   Represents the color indicator that gives you information about the
        #   health of the EC2 instance. For more information, see [Health Colors
        #   and Statuses][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html
        #   @return [String]

        # @!attribute [rw] causes
        #   Represents the causes, which provide more information about the
        #   current health status.
        #   @return [Array<String>]

        # @!attribute [rw] launched_at
        #   The time at which the EC2 instance was launched.
        #   @return [Time]

        # @!attribute [rw] application_metrics
        #   Represents the application metrics for a specified environment.
        #   @return [Types::ApplicationMetrics]

        # @!attribute [rw] system
        #   Represents CPU utilization and load average information for
        #   applications running in the specified environment.
        #   @return [Types::SystemStatus]

        # @!attribute [rw] deployment
        #   Information about the most recent deployment to an instance.
        #   @return [Types::Deployment]

        # @!attribute [rw] availability_zone
        #   The availability zone in which the instance runs.
        #   @return [String]

        # @!attribute [rw] instance_type
        #   The instance\'s type.
        #   @return [String]

      end

      # Describes the solution stack.
      class SolutionStackDescription < Struct.new(
        :solution_stack_name,
        :permitted_file_types)

        include Aws::Structure

        # @!attribute [rw] solution_stack_name
        #   The name of the solution stack.
        #   @return [String]

        # @!attribute [rw] permitted_file_types
        #   The permitted file types allowed for a solution stack.
        #   @return [Array<String>]

      end

      # A specification for an environment configuration
      # @note When making an API call, pass SourceConfiguration
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName",
      #         template_name: "ConfigurationTemplateName",
      #       }
      class SourceConfiguration < Struct.new(
        :application_name,
        :template_name)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application associated with the configuration.
        #   @return [String]

        # @!attribute [rw] template_name
        #   The name of the configuration template.
        #   @return [String]

      end

      # Represents the percentage of requests over the last 10 seconds that
      # resulted in each type of status code response. For more information,
      # see [Status Code Definitions][1].
      #
      #
      #
      # [1]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html
      class StatusCodes < Struct.new(
        :status_2xx,
        :status_3xx,
        :status_4xx,
        :status_5xx)

        include Aws::Structure

        # @!attribute [rw] status_2xx
        #   The percentage of requests over the last 10 seconds that resulted in
        #   a 2xx (200, 201, etc.) status code.
        #   @return [Integer]

        # @!attribute [rw] status_3xx
        #   The percentage of requests over the last 10 seconds that resulted in
        #   a 3xx (300, 301, etc.) status code.
        #   @return [Integer]

        # @!attribute [rw] status_4xx
        #   The percentage of requests over the last 10 seconds that resulted in
        #   a 4xx (400, 401, etc.) status code.
        #   @return [Integer]

        # @!attribute [rw] status_5xx
        #   The percentage of requests over the last 10 seconds that resulted in
        #   a 5xx (500, 501, etc.) status code.
        #   @return [Integer]

      end

      # Swaps the CNAMEs of two environments.
      # @note When making an API call, pass SwapEnvironmentCNAMEsMessage
      #   data as a hash:
      #
      #       {
      #         source_environment_id: "EnvironmentId",
      #         source_environment_name: "EnvironmentName",
      #         destination_environment_id: "EnvironmentId",
      #         destination_environment_name: "EnvironmentName",
      #       }
      class SwapEnvironmentCNAMEsMessage < Struct.new(
        :source_environment_id,
        :source_environment_name,
        :destination_environment_id,
        :destination_environment_name)

        include Aws::Structure

        # @!attribute [rw] source_environment_id
        #   The ID of the source environment.
        #
        #   Condition: You must specify at least the `SourceEnvironmentID` or
        #   the `SourceEnvironmentName`. You may also specify both. If you
        #   specify the `SourceEnvironmentId`, you must specify the
        #   `DestinationEnvironmentId`.
        #   @return [String]

        # @!attribute [rw] source_environment_name
        #   The name of the source environment.
        #
        #   Condition: You must specify at least the `SourceEnvironmentID` or
        #   the `SourceEnvironmentName`. You may also specify both. If you
        #   specify the `SourceEnvironmentName`, you must specify the
        #   `DestinationEnvironmentName`.
        #   @return [String]

        # @!attribute [rw] destination_environment_id
        #   The ID of the destination environment.
        #
        #   Condition: You must specify at least the `DestinationEnvironmentID`
        #   or the `DestinationEnvironmentName`. You may also specify both. You
        #   must specify the `SourceEnvironmentId` with the
        #   `DestinationEnvironmentId`.
        #   @return [String]

        # @!attribute [rw] destination_environment_name
        #   The name of the destination environment.
        #
        #   Condition: You must specify at least the `DestinationEnvironmentID`
        #   or the `DestinationEnvironmentName`. You may also specify both. You
        #   must specify the `SourceEnvironmentName` with the
        #   `DestinationEnvironmentName`.
        #   @return [String]

      end

      # Represents CPU utilization and load average information for
      # applications running in the specified environment.
      class SystemStatus < Struct.new(
        :cpu_utilization,
        :load_average)

        include Aws::Structure

        # @!attribute [rw] cpu_utilization
        #   Represents CPU utilization information from the specified instance
        #   that belongs to the AWS Elastic Beanstalk environment. Use the
        #   `instanceId` property to specify the application instance for which
        #   you\'d like to return data.
        #   @return [Types::CPUUtilization]

        # @!attribute [rw] load_average
        #   Load average in the last 1-minute and 5-minute periods. For more
        #   information, see [Operating System Metrics][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-metrics.html#health-enhanced-metrics-os
        #   @return [Array<Float>]

      end

      # Describes a tag applied to a resource in an environment.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       }
      class Tag < Struct.new(
        :key,
        :value)

        include Aws::Structure

        # @!attribute [rw] key
        #   The key of the tag.
        #   @return [String]

        # @!attribute [rw] value
        #   The value of the tag.
        #   @return [String]

      end

      # Request to terminate an environment.
      # @note When making an API call, pass TerminateEnvironmentMessage
      #   data as a hash:
      #
      #       {
      #         environment_id: "EnvironmentId",
      #         environment_name: "EnvironmentName",
      #         terminate_resources: false,
      #         force_terminate: false,
      #       }
      class TerminateEnvironmentMessage < Struct.new(
        :environment_id,
        :environment_name,
        :terminate_resources,
        :force_terminate)

        include Aws::Structure

        # @!attribute [rw] environment_id
        #   The ID of the environment to terminate.
        #
        #   Condition: You must specify either this or an EnvironmentName, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the environment to terminate.
        #
        #   Condition: You must specify either this or an EnvironmentId, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] terminate_resources
        #   Indicates whether the associated AWS resources should shut down when
        #   the environment is terminated:
        #
        #   * `true`\: The specified environment as well as the associated AWS
        #     resources, such as Auto Scaling group and LoadBalancer, are
        #     terminated.
        #   * `false`\: AWS Elastic Beanstalk resource management is removed
        #     from the environment, but the AWS resources continue to operate.
        #
        #   For more information, see the [ AWS Elastic Beanstalk User Guide.
        #   ][1]
        #
        #   Default: `true`
        #
        #   Valid Values: `true` \| `false`
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/ug/
        #   @return [Boolean]

        # @!attribute [rw] force_terminate
        #   Terminates the target environment even if another environment in the
        #   same group is dependent on it.
        #   @return [Boolean]

      end

      # Describes a trigger.
      class Trigger < Struct.new(
        :name)

        include Aws::Structure

        # @!attribute [rw] name
        #   The name of the trigger.
        #   @return [String]

      end

      # Request to update an application.
      # @note When making an API call, pass UpdateApplicationMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         description: "Description",
      #       }
      class UpdateApplicationMessage < Struct.new(
        :application_name,
        :description)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application to update. If no such application is
        #   found, `UpdateApplication` returns an `InvalidParameterValue` error.
        #   @return [String]

        # @!attribute [rw] description
        #   A new description for the application.
        #
        #   Default: If not specified, AWS Elastic Beanstalk does not update the
        #   description.
        #   @return [String]

      end

      # @note When making an API call, pass UpdateApplicationVersionMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         version_label: "VersionLabel", # required
      #         description: "Description",
      #       }
      class UpdateApplicationVersionMessage < Struct.new(
        :application_name,
        :version_label,
        :description)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application associated with this version.
        #
        #   If no application is found with this name, `UpdateApplication`
        #   returns an `InvalidParameterValue` error.
        #   @return [String]

        # @!attribute [rw] version_label
        #   The name of the version to update.
        #
        #   If no application version is found with this label,
        #   `UpdateApplication` returns an `InvalidParameterValue` error.
        #   @return [String]

        # @!attribute [rw] description
        #   A new description for this release.
        #   @return [String]

      end

      # The result message containing the options for the specified solution
      # stack.
      # @note When making an API call, pass UpdateConfigurationTemplateMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         template_name: "ConfigurationTemplateName", # required
      #         description: "Description",
      #         option_settings: [
      #           {
      #             resource_name: "ResourceName",
      #             namespace: "OptionNamespace",
      #             option_name: "ConfigurationOptionName",
      #             value: "ConfigurationOptionValue",
      #           },
      #         ],
      #         options_to_remove: [
      #           {
      #             resource_name: "ResourceName",
      #             namespace: "OptionNamespace",
      #             option_name: "ConfigurationOptionName",
      #           },
      #         ],
      #       }
      class UpdateConfigurationTemplateMessage < Struct.new(
        :application_name,
        :template_name,
        :description,
        :option_settings,
        :options_to_remove)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application associated with the configuration
        #   template to update.
        #
        #   If no application is found with this name,
        #   `UpdateConfigurationTemplate` returns an `InvalidParameterValue`
        #   error.
        #   @return [String]

        # @!attribute [rw] template_name
        #   The name of the configuration template to update.
        #
        #   If no configuration template is found with this name,
        #   `UpdateConfigurationTemplate` returns an `InvalidParameterValue`
        #   error.
        #   @return [String]

        # @!attribute [rw] description
        #   A new description for the configuration.
        #   @return [String]

        # @!attribute [rw] option_settings
        #   A list of configuration option settings to update with the new
        #   specified option value.
        #   @return [Array<Types::ConfigurationOptionSetting>]

        # @!attribute [rw] options_to_remove
        #   A list of configuration options to remove from the configuration
        #   set.
        #
        #   Constraint: You can remove only `UserDefined` configuration options.
        #   @return [Array<Types::OptionSpecification>]

      end

      # Request to update an environment.
      # @note When making an API call, pass UpdateEnvironmentMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName",
      #         environment_id: "EnvironmentId",
      #         environment_name: "EnvironmentName",
      #         group_name: "GroupName",
      #         description: "Description",
      #         tier: {
      #           name: "String",
      #           type: "String",
      #           version: "String",
      #         },
      #         version_label: "VersionLabel",
      #         template_name: "ConfigurationTemplateName",
      #         solution_stack_name: "SolutionStackName",
      #         option_settings: [
      #           {
      #             resource_name: "ResourceName",
      #             namespace: "OptionNamespace",
      #             option_name: "ConfigurationOptionName",
      #             value: "ConfigurationOptionValue",
      #           },
      #         ],
      #         options_to_remove: [
      #           {
      #             resource_name: "ResourceName",
      #             namespace: "OptionNamespace",
      #             option_name: "ConfigurationOptionName",
      #           },
      #         ],
      #       }
      class UpdateEnvironmentMessage < Struct.new(
        :application_name,
        :environment_id,
        :environment_name,
        :group_name,
        :description,
        :tier,
        :version_label,
        :template_name,
        :solution_stack_name,
        :option_settings,
        :options_to_remove)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application with which the environment is
        #   associated.
        #   @return [String]

        # @!attribute [rw] environment_id
        #   The ID of the environment to update.
        #
        #   If no environment with this ID exists, AWS Elastic Beanstalk returns
        #   an `InvalidParameterValue` error.
        #
        #   Condition: You must specify either this or an EnvironmentName, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the environment to update. If no environment with this
        #   name exists, AWS Elastic Beanstalk returns an
        #   `InvalidParameterValue` error.
        #
        #   Condition: You must specify either this or an EnvironmentId, or
        #   both. If you do not specify either, AWS Elastic Beanstalk returns
        #   `MissingRequiredParameter` error.
        #   @return [String]

        # @!attribute [rw] group_name
        #   The name of the group to which the target environment belongs.
        #   Specify a group name only if the environment\'s name is specified in
        #   an environment manifest and not with the environment name or
        #   environment ID parameters. See [Environment Manifest (env.yaml)][1]
        #   for details.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html
        #   @return [String]

        # @!attribute [rw] description
        #   If this parameter is specified, AWS Elastic Beanstalk updates the
        #   description of this environment.
        #   @return [String]

        # @!attribute [rw] tier
        #   This specifies the tier to use to update the environment.
        #
        #   Condition: At this time, if you change the tier version, name, or
        #   type, AWS Elastic Beanstalk returns `InvalidParameterValue` error.
        #   @return [Types::EnvironmentTier]

        # @!attribute [rw] version_label
        #   If this parameter is specified, AWS Elastic Beanstalk deploys the
        #   named application version to the environment. If no such application
        #   version is found, returns an `InvalidParameterValue` error.
        #   @return [String]

        # @!attribute [rw] template_name
        #   If this parameter is specified, AWS Elastic Beanstalk deploys this
        #   configuration template to the environment. If no such configuration
        #   template is found, AWS Elastic Beanstalk returns an
        #   `InvalidParameterValue` error.
        #   @return [String]

        # @!attribute [rw] solution_stack_name
        #   This specifies the platform version that the environment will run
        #   after the environment is updated.
        #   @return [String]

        # @!attribute [rw] option_settings
        #   If specified, AWS Elastic Beanstalk updates the configuration set
        #   associated with the running environment and sets the specified
        #   configuration options to the requested value.
        #   @return [Array<Types::ConfigurationOptionSetting>]

        # @!attribute [rw] options_to_remove
        #   A list of custom user-defined configuration options to remove from
        #   the configuration set for this environment.
        #   @return [Array<Types::OptionSpecification>]

      end

      # A list of validation messages for a specified configuration template.
      # @note When making an API call, pass ValidateConfigurationSettingsMessage
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         template_name: "ConfigurationTemplateName",
      #         environment_name: "EnvironmentName",
      #         option_settings: [ # required
      #           {
      #             resource_name: "ResourceName",
      #             namespace: "OptionNamespace",
      #             option_name: "ConfigurationOptionName",
      #             value: "ConfigurationOptionValue",
      #           },
      #         ],
      #       }
      class ValidateConfigurationSettingsMessage < Struct.new(
        :application_name,
        :template_name,
        :environment_name,
        :option_settings)

        include Aws::Structure

        # @!attribute [rw] application_name
        #   The name of the application that the configuration template or
        #   environment belongs to.
        #   @return [String]

        # @!attribute [rw] template_name
        #   The name of the configuration template to validate the settings
        #   against.
        #
        #   Condition: You cannot specify both this and an environment name.
        #   @return [String]

        # @!attribute [rw] environment_name
        #   The name of the environment to validate the settings against.
        #
        #   Condition: You cannot specify both this and a configuration template
        #   name.
        #   @return [String]

        # @!attribute [rw] option_settings
        #   A list of the options and desired values to evaluate.
        #   @return [Array<Types::ConfigurationOptionSetting>]

      end

      # An error or warning for a desired configuration option value.
      class ValidationMessage < Struct.new(
        :message,
        :severity,
        :namespace,
        :option_name)

        include Aws::Structure

        # @!attribute [rw] message
        #   A message describing the error or warning.
        #   @return [String]

        # @!attribute [rw] severity
        #   An indication of the severity of this message:
        #
        #   * `error`\: This message indicates that this is not a valid setting
        #     for an option.
        #   * `warning`\: This message is providing information you should take
        #     into account.
        #   @return [String]

        # @!attribute [rw] namespace
        #   @return [String]

        # @!attribute [rw] option_name
        #   @return [String]

      end

    end
  end
end
