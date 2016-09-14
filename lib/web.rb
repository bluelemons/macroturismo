require 'cuba'
require 'cuba/safe'
require 'cuba/render'
require 'erb'

Cuba.plugin Cuba::Safe
Cuba.plugin Cuba::Render

Cuba.define do
  on get do
    on 'hello' do
      render('hello')
    end

    on root do
      res.redirect '/hello'
    end
  end
end
