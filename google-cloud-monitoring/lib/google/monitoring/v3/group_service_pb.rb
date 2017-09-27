# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/group_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/monitored_resource_pb'
require 'google/monitoring/v3/common_pb'
require 'google/monitoring/v3/group_pb'
require 'google/protobuf/empty_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.monitoring.v3.ListGroupsRequest" do
    optional :name, :string, 7
    optional :page_size, :int32, 5
    optional :page_token, :string, 6
    oneof :filter do
      optional :children_of_group, :string, 2
      optional :ancestors_of_group, :string, 3
      optional :descendants_of_group, :string, 4
    end
  end
  add_message "google.monitoring.v3.ListGroupsResponse" do
    repeated :group, :message, 1, "google.monitoring.v3.Group"
    optional :next_page_token, :string, 2
  end
  add_message "google.monitoring.v3.GetGroupRequest" do
    optional :name, :string, 3
  end
  add_message "google.monitoring.v3.CreateGroupRequest" do
    optional :name, :string, 4
    optional :group, :message, 2, "google.monitoring.v3.Group"
    optional :validate_only, :bool, 3
  end
  add_message "google.monitoring.v3.UpdateGroupRequest" do
    optional :group, :message, 2, "google.monitoring.v3.Group"
    optional :validate_only, :bool, 3
  end
  add_message "google.monitoring.v3.DeleteGroupRequest" do
    optional :name, :string, 3
  end
  add_message "google.monitoring.v3.ListGroupMembersRequest" do
    optional :name, :string, 7
    optional :page_size, :int32, 3
    optional :page_token, :string, 4
    optional :filter, :string, 5
    optional :interval, :message, 6, "google.monitoring.v3.TimeInterval"
  end
  add_message "google.monitoring.v3.ListGroupMembersResponse" do
    repeated :members, :message, 1, "google.api.MonitoredResource"
    optional :next_page_token, :string, 2
    optional :total_size, :int32, 3
  end
end

module Google
  module Monitoring
    module V3
      ListGroupsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListGroupsRequest").msgclass
      ListGroupsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListGroupsResponse").msgclass
      GetGroupRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.GetGroupRequest").msgclass
      CreateGroupRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateGroupRequest").msgclass
      UpdateGroupRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.UpdateGroupRequest").msgclass
      DeleteGroupRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.DeleteGroupRequest").msgclass
      ListGroupMembersRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListGroupMembersRequest").msgclass
      ListGroupMembersResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListGroupMembersResponse").msgclass
    end
  end
end