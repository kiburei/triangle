require('sinatra')
require('./lib/triangle.rb')
    require('sinatra/reloader')
    also_reload('.lib/**/*.rb')

    get('/') do
        erb(:index)
    end

    get('/get_triangle')do
        a = params.fetch('a')
        b = params.fetch('b')
        c = params.fetch('c')
        triangle = Triangle.new(a,b,c)
        @triangle = triangle.check()
        erb(:index)
    end