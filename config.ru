# This file is used by Rack-based servers to start the application.

require 'rack'      # uses the Rack gem
class App           # defines a class named App
  def call(env)     # defines method name call with env (environment variable) as argument
    puts env        # prints environmental variables to terminal
    [200,           # http 200 status means OK, standard reponse for successful HTTP requests
     {"Content-Type" => "text/html"},   # hash of content
     ["<body><h1>WWW</h1>Hello World</body>"]   # html that will appear on the webpage
    ]
  end
end
run App.new        # rack will run the application


# require 'rack'
#  class HelloRack
#     def call(env)
#     path = Dir.pwd + env["REQUEST_PATH"]
#     if File.exist?(path)
#        [200, {"Content-Type" => "text/html"}, [IO.read(path)]]
#     else
#        [404, {"Content-Type" => "text/html"}, ['Unknown File']]
#       end
#     end
#   end
#   run HelloRack.new
