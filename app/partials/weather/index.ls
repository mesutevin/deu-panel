require! {
  '../../modules/aktos-dcs': {
    RactivePartial,
    IoActor,
  }
}

RactivePartial! .register ->
  $ \.weather .each !->
    actor = IoActor $ this
    get-weather = ->
      $ '.weather-temperature' .open-weather do
        city: 'Izmir, TR'
        lang: 'tr'
        customIcons: '/img/icons/weather/'
        descriptionTarget: '.weather-description'
        windSpeedTarget: '.weather-wind-speed'
        minTemperatureTarget: '.weather-min-temperature'
        maxTemperatureTarget: '.weather-max-temperature'
        humidityTarget: '.weather-humidity'
        sunriseTarget: '.weather-sunrise'
        sunsetTarget: '.weather-sunset'
        placeTarget: '.weather-place'
        iconTarget: '.weather-icon'
      set-timeout get-weather, 1800000
    get-weather!
