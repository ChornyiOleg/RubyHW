# frozen_string_literal: true

require 'erb'
require './app/lib/logic'
require 'rack'

class Pet
  include Logic

  def self.call(env)
    new(env).response&.finish
  end

  def initialize(env)
    @req = Rack::Request.new(env)
    @health = 100
    @horror = 10
    @calm = 100
    @die = 10
    @lives = 5
    @say = 'Hi! I want to die!'
  end

  def response
    case @req.path
    when '/'
      Rack::Response.new(render('form.html.erb'))
    when '/init'
      Rack::Response.new do |response|
        response.set_cookie('health', @health)
        response.set_cookie('horror', @horror)
        response.set_cookie('calm', @calm)
        response.set_cookie('die', @die)
        response.set_cookie('name', @req.params['name'])
        response.set_cookie('image', @req.params['image'])
        response.set_cookie('say', @say)
        response.redirect('/start')
      end
    when '/watch'
      Logic.change_params(@req)
    when '/relax'
      Logic.change_params(@req)
    when '/psycho'
      Logic.change_params(@req)
    when '/died'
      Logic.change_params(@req)
    when '/start'
      Rack::Response.new(render('index.html.erb'))
    when '/end'
      Rack::Response.new('The end', 404)
      Rack::Response.new(render('end.html.erb'))
    end
  end

  def get(attr)
    @req.cookies[attr.to_s].to_i
  end

  def name
    name = @req.cookies['name'].delete(' ')
    name.empty? ? 'Pet' : @req.cookies['name']
  end

  def image
    @req.cookies['image']
  end

  def say
    @req.cookies['say']
  end

  def render(template)
    path = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
