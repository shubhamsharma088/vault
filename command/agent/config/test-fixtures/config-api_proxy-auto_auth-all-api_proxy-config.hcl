pid_file = "./pidfile"

auto_auth {
	method {
		type = "aws"
		config = {
			role = "foobar"
		}
	}
}

api_proxy {
	use_auto_auth_token = "force"
	enforce_consistency = "always"
	when_inconsistent = "forward"
}

listener "tcp" {
    address = "127.0.0.1:8300"
    tls_disable = true
}
