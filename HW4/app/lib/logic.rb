# frozen_string_literal: true

require './app/pet'
module Logic
  module_function

  OPTION = { watch: { "health": -20, "horror": 20, "calm": -20, "die": 20 },
             relax: { "health": 10, "horror": 10, "calm": 10, "die": 10 },
             psycho: { "health": 10, "horror": -5, "calm": -20, "die": -5 },
             died: { "health": -100, "horror": 20, "calm": -20, "die": 100 } }.freeze

  def change_params(req)
    Rack::Response.new do |response|
      request = req.path[1..-1].to_sym
      check_path(request)
      num = {}
      new_data = set_value(request, req, num)
      set_cookies(response, req, new_data)
      check_life(req, num, response)
    end
  end

  def check_path(request)
    return unless OPTION.keys.include?(request)
  end

  def set_value(request, req, num)
    OPTION[request].each do |k, v|
      num[k] = req.cookies[k.to_s].to_i + v
    end
    num
    check_value(num)
  end

  def set_cookies(response, req, new_data)
    new_data.each do |key, value|
      response.set_cookie(key.to_s, value)
    end
    add_message(response, req)
    response.redirect('/start')
  end

  def add_message(response, req)
    response.set_cookie('say', 'Pet: Oh! I like it as Lecter likes flesh juice!') if req.path.include?('/watch')
    response.set_cookie('say', "Pet: I'm slightly calmed down! But... I'm not sure") if req.path.include?('/relax')
    if req.path.include?('/psycho')
      response.set_cookie('say',
                          "Pet: I hate state doctors who bought a degree for a pig, but I'm thinking about Rorschach test now")
    end
    if req.path.include?('/died')
      response.set_cookie('say',
                          "Pet: I'm tired of waiting for you to tell me the best way to die... Farewell!")
    end
  end

  def check_value(num)
    num.each do |key, _value|
      if num[key] >= 100
        num[key] = 100
      elsif (num[key]).negative?
        num[key] = 0
      else
        num[key]
      end
    end
    num
  end

  def check_life(req, num, response)
    count = req.cookies['lives'].to_i
    if num.value?(0) && count.positive?
      count = req.cookies['lives'].to_i - 1
      redirected = '/start'
    elsif num.value?(0) && count.zero?
      count = 0
      redirected = '/end'
    else
      count = req.cookies['lives'].to_i
      redirected = '/start'
    end
    response.set_cookie('lives', count)
    check_redirect(redirected, response)
  end

  def check_redirect(redirected, response)
    if redirected == '/end'
      response.redirect('/end')
    else
      response.redirect('/start')
    end
  end
end
