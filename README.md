# weaver-consul - Weaver PDF Conversion with automatic registration

## Available Tags

* ```latest``` (/Dockerfile)

## Description
A Debian based container loaded with AthenaPDF and accompanying Weaver conversion microservice that is setup to automatically register with Consul and perform regular health/reachability checks.

## Environment Variables
In additi

* ```CONSUL_ADDRESS``` sets the address of the Consul instance to register against. This should be in the form of ```hostname:8500``` such as ```discovery.provider.com:8500```. 
* ```GIN_MODE=debug``` 
* ```WEAVER_AUTH_KEY=arachnys-weaver``` shared key that must be included in HTTP requests to the Weaver service
* ```WEAVER_ATHENA_CMD=athenapdf -S``` command used to invoke the underlying Athena converter
* ```WEAVER_MAX_WORKERS=10``` maximum number of worker conversion processes to start
* ```WEAVER_MAX_CONVERSION_QUEUE=50``` maximum conversion queue size
* ```WEAVER_WORKER_TIMEOUT=90``` converstion timeout in seconds
* ```SENTRY_DSN=``` Sentry DSN to use for log/error reporting
* ```GIN_MODE=debug``` Web server operating environment

## Important Ports

* ```tcp/8080``` Web UI/Administration console