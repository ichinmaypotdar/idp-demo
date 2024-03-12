terraform {
	required_providers {
		port = {
			source  = "port-labs/port-labs"
			version = "~> 1.2.3"
		}
	}
}

provider "port" {
	client_id = "R9IIRgs83snUfBbKmQtKfZ6ay19NE1Sm" # or set the env var PORT_CLIENT_ID
	secret    = "HfzxCeiXcRB1TR0r42ZQY1CzO04FOgRv4k0nTBnBviSdVDvY1AM3yNpIWTLsBskI" # or set the env var PORT_CLIENT_SECRET
	base_url  = "https://api.getport.io" # or set the env var PORT_BASE_URL
}

resource "port_entity" "some_identifier" {
    title      = "Some Title"
    identifier = "some_identifier"
    blueprint  = "service"
	properties = {
		string_props = {
			readme = "string"
			url = "https://example.com"
			language = "string"
			slack = "https://example.com"
			tier = "Mission Critical"
		}
	}
	relations = {}
