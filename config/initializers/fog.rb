require 'fog/openstack'

params = {
	openstack_auth_url: 'http://10.10.41.20:5000/v2.0/tokens', 
	openstack_username: 'admin', 
	openstack_api_key: 'bac916e827964ce5', 
	openstack_project_name: 'admin'
}

COMPUTE  = Fog::Compute::OpenStack.new(params)
IDENTITY = Fog::Identity::OpenStack.new(params) 

