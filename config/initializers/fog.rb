require 'fog/openstack'

params = {
	openstack_auth_url: 'http://10.10.41.21:5000/v2.0/tokens', 
	openstack_username: 'admin', 
	openstack_api_key: 'eb3d66737bb74372', 
	openstack_project_name: 'admin'
}

COMPUTE  = Fog::Compute::OpenStack.new(params)
IDENTITY = Fog::Identity::OpenStack.new(params) 
NETWORK  = Fog::Network::OpenStack.new(params)
