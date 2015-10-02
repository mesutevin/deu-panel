require! {
  '../../modules/aktos-dcs': {
    RactivePartial,
    RactiveApp,
    IoActor,
  }
}

RactivePartial! .register ->
  $ '.rss-notification-box' .each !->
    elem = $ this
    actor = IoActor elem

    console.log "naber"
