require 'cuba'
require 'cuba/safe'
require 'cuba/render'
require 'erb'
require 'pry'

Cuba.plugin Cuba::Safe
Cuba.plugin Cuba::Render

Agencias = []

Cuba.define do
  on 'agencias' do
    on get do
      render('agencias', agencias: Agencias)
    end

    on post do
      params = req.params
      Agencias << { nombre: params.fetch('nombre'),
                    cuit: params.fetch('cuit') }
      res.redirect '/agencias'
    end
  end
end
