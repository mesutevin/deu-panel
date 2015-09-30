require! {
  '../../modules/aktos-dcs': {
    RactivePartial,
    IoActor,
  }
}

RactivePartial! .register ->
  $ '.rss-notification-box' .each !->
    elem = $ this
    actor = IoActor elem
