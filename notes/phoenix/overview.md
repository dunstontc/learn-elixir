# [Phoenix](https://hexdocs.pm/phoenix/overview.html)


## Endpoint
- the start and end of the request lifecycle
- handles all aspects of requests up until the point where the router takes over
- provides a core set of plugs to apply to all requests
- dispatches requests into a designated router


##Router
- parses incoming requests and dispatches them to the correct controller/action, passing parameters as needed
- provides helpers to generate route paths or urls to resources
- defines named pipelines through which we may pass our requests
- Pipelines - allow easy application of groups of plugs to a set of routes


## Controllers
- provide functions, called actions, to handle requests
- actions:
  - prepare data and pass it into views
  - invoke rendering via views
  - perform redirects


## Views
- render templates
- act as a presentation layer
- define helper functions, available in templates, to decorate data for presentation


## Templates
- files containing the contents that will be served in a response
- provide the basic structure for a response, and allow dynamic data to be substituted in
- are precompiled and fast


## Channels
- manage sockets for easy realtime communication
- are analogous to controllers except that they allow bi-directional communication with persistent connections


## PubSub
- underlies the channel layer and allows clients to subscribe to topics
- abstracts the underlying pubsub adapter for third-party pubsub integration
