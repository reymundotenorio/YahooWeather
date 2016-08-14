class HomeController < ApplicationController
  def show

    require 'rubygems'
    require 'weather-api'

    # look up WOEID via http://weather.yahoo.com; enter location by city
    # name or zip and WOEID is at end of resulting page url.
    # https://rubygems.org/gems/weather-api
    response = Weather.lookup(152852, Weather::Units::CELSIUS)

    @Titulo = response.title
    @Temperatura = response.condition.temp
    @Condicion = response.condition.text
    @Imagen = response.image.url


  end
end
