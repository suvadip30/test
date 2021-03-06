# encoding: utf-8
#
# Cookbook Name:: visibility_win
# Spec:: chef_client_config

# THIS IS NOT A WORKING EXAMPLE.
# This is more of a stub to conceptualize what to test from
# chef_client_config.rb
require 'spec_helper'

describe 'visibility_win::chef_client_config' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'Creates the config.d directory' do
    expect(chef_run).to create_directory('c:\chef\config.d')
  end

  it 'Creates the visibility_ingest.rb cookbook file' do
    expect(chef_run).to create_template('c:/chef/client.d/\
    visibility_ingest.rb')
  end
end
