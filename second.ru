require 'rack'

class Myserver
    def call(env)
        return [ 200, {'Contenet Type' => 'text/html'}, pretty_response]
    end

    def pretty_response
        (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"]:["<strong>Hello</strong>"]
    end
end

run Myserver.new