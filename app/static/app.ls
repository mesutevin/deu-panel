require! {
  '../modules/aktos-dcs': {
    ProxyActor,
    RactivePartial,
    SwitchActor,
    RactiveApp, 
  }
}
  
# get scada layouts 
{widget-positions} = require './scada-layout'

# include widgets' initialize codes 
require '../partials/ractive-partials'
  
# Set Ractive.DEBUG to false when minified:
Ractive.DEBUG = /unminified/.test !-> /*unminified*/


app = new Ractive do
  el: 'container'
  template: '#app'
  data: {
    "rss": {
        "channel": {
            "title": "Announcements",
            "link": "http://eee.deu.edu.tr/moodle/mod/forum/view.php?f=4",
            "description": "General news and announcements",
            "generator": "Moodle",
            "language": "en",
            "copyright": "(c) 2015 D.E.Ü. Electrical and Electronics Engineering Department",
            "image": {
                "url": "http://eee.deu.edu.tr/moodle/theme/image.php/_s/deueee/core/1443125218/i/rsssitelogo",
                "title": "moodle",
                "link": "http://eee.deu.edu.tr/moodle",
                "width": "140",
                "height": "35"
            },
            "item": [
                {
                    "title": "Moodle Hesapları Hakkında",
                    "link": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1657",
                    "pubDate": "Mon, 28 Sep 2015 08:09:06 GMT",
                    "description": "by Serkan Koca. &nbsp;<p><span class=\"nolink\"><span class=\"filter_mathjaxloader_equation\"><p>Bölümümüze yeni kayıt yaptırmış olan öğrencilerin Moodle sistemi üzerinde hesaplarının oluşturulması için <b>02.10.2015</b> tarihi mesai bitimine kadar <b>Araş. Gör. Serkan KOCA</b>'ya aşağıda belirtilen formatta ve gerekli bilgileri içeren bir mail atmaları gerekmektedir. Ayrıca moodle hesabı olan ve moodle hesabıyla ilgili problem yaşayan öğrencilerinde aşağıda belirtilen formatta ve problemle ilgili açıklamayı içeren bir maili Araş. Gör. Serkan KOCA'ya göndermeleri gerekmektedir. </p><p><b>NOT: </b>Belirtilen Formata uymayan ve belirtilen tarihten sonraki mailller işleme alınmayacaktır !!!</p><p><br /></p><p><b>ALICI: </b><span>serkan.koca@deu.edu.tr </span></p><p><b>KONU:</b> Moodle Hesabı Talebi / Moodle Hesabı Problemi</p><p><b>İÇERİK:</b></p><p><b> </b>Bu kısımda  Hesap Talebi veya Yaşanan Problem konusunda açıklama yapılacaktır.</p><p>Ad         : .................................... </p><p>Soyad    : .................................</p><p>e- Posta : ..............................</p><p>No         : ....................................</p></span></span></p>",
                    "guid": {
                        "_isPermaLink": "true",
                        "__text": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1657"
                    }
                },
                {
                    "title": "eed4401",
                    "link": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1651",
                    "pubDate": "Mon, 21 Sep 2015 11:47:14 GMT",
                    "description": "by Mehmet Kuntalp. &nbsp;<p><span class=\"nolink\"><span class=\"filter_mathjaxloader_equation\"><p>enrollment key: biomedical2015</p></span></span></p>",
                    "guid": {
                        "_isPermaLink": "true",
                        "__text": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1651"
                    }
                },
                {
                    "title": "eed4401",
                    "link": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1650",
                    "pubDate": "Mon, 21 Sep 2015 07:50:41 GMT",
                    "description": "by Mehmet Kuntalp. &nbsp;<p><span class=\"nolink\"><span class=\"filter_mathjaxloader_equation\"><p>you should enroll to the course. enrollment key was put into the news forum of the course last week.<br /></p></span></span></p>",
                    "guid": {
                        "_isPermaLink": "true",
                        "__text": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1650"
                    }
                },
                {
                    "title": "tek ders sınavları (düzeltme)",
                    "link": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1646",
                    "pubDate": "Fri, 18 Sep 2015 10:10:06 GMT",
                    "description": "by Tolga Sürgevil. &nbsp;<p><span class=\"nolink\"><span class=\"filter_mathjaxloader_equation\"><div class=\"topic firstpost starter\"><div class=\"subject\">Dekanlık tarafından tek ders sınavlarının tarihi 29.09.2015 Salı günü olarak belirlenmiştir.</div><div class=\"subject\">EED 3001 Energy Conversion I, </div><div class=\"subject\">EED4203 Power System Analysis I ve </div><div class=\"subject\">EED4016 Power System Distribution and Protection </div><div class=\"subject\">derslerinin sınavları belirlenen tarihte saat 13.00' da Elektrik Makinaları Lab' ında yapılacaktır. Önceki duyuruyu dikkate almayınız.</div></div><p><br /></p></span></span></p>",
                    "guid": {
                        "_isPermaLink": "true",
                        "__text": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1646"
                    }
                },
                {
                    "title": "Burslar",
                    "link": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1644",
                    "pubDate": "Wed, 16 Sep 2015 17:54:26 GMT",
                    "description": "by Metin Sabuncu. &nbsp;<p><span class=\"nolink\"><span class=\"filter_mathjaxloader_equation\"><p>Degerli Ogrenciler,</p><p><br /></p><p>Bolumumuz ile ilgili burs duyurulari moodle sayfamizdan yapilmaktadir.</p><p>http://eee.deu.edu.tr/moodle/mod/forum/view.php?id=1689<br /></p><p>Bu duyurulari takip ediniz.</p><p><br /></p><p><span style=\"float:none;color:rgb(0,0,0);\"></span></p><p style=\"font-family:Verdana;margin-top:0px;margin-right:0px;margin-bottom:10px;margin-left:0px;\">Maddi durumu iyi olmayan Bölümümüz 1. sınıf öğrencileri bu hafta bana gelerek burs başvurusunda bulunabilirler.</p><p style=\"font-family:Verdana;margin-top:0px;margin-right:0px;margin-bottom:10px;margin-left:0px;\"> Perşembe öğleden sonra  ve cuma gunu ofisimde (-1. kat)  olacağım.</p><p style=\"font-family:Verdana;margin-top:0px;margin-right:0px;margin-bottom:10px;margin-left:0px;\"><br style=\"font-family:Verdana;\" /></p><p style=\"font-family:Verdana;margin-top:0px;margin-right:0px;margin-bottom:10px;margin-left:0px;\">Burs başvuruları değerlendirmeye alınacaktır.</p><p></p></span></span></p>",
                    "guid": {
                        "_isPermaLink": "true",
                        "__text": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1644"
                    }
                },
                {
                    "title": "tek ders sınavları",
                    "link": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1642",
                    "pubDate": "Wed, 16 Sep 2015 13:56:56 GMT",
                    "description": "by Tolga Sürgevil. &nbsp;<p><span class=\"nolink\"><span class=\"filter_mathjaxloader_equation\"><p>EED3001 Energy Conversion I, EED4203 Power System Analysis I ve EED4016 Power System Distribution and Protection derslerinin tek ders sınavları 28.09.2015 Pazartesi günü saat 13.00' da Elektrik Makinaları Lab' ında yapılacaktır.<br /></p></span></span></p>",
                    "guid": {
                        "_isPermaLink": "true",
                        "__text": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1642"
                    }
                },
                {
                    "title": "EED4303 ve EED4301 Laboratuvarları Hakkında",
                    "link": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1641",
                    "pubDate": "Wed, 16 Sep 2015 13:08:33 GMT",
                    "description": "by Zekeriya SARI. &nbsp;<p><span class=\"nolink\"><span class=\"filter_mathjaxloader_equation\"><p><b>EED4303  Control Systems Modelling and Simulations ve EED4301 Digital Control</b> laboratuvarlarının kuralları ve işleyişi ile ilgili <b>17 Eylül 2015 perşembe günü saat 13:00'da PCLAB 14'de </b>bilgilendirme yapılacaktır. Yoklama alınacaktır. </p><p><br /></p></span></span></p>",
                    "guid": {
                        "_isPermaLink": "true",
                        "__text": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1641"
                    }
                },
                {
                    "title": "EED 3009 Engineering Design II dersini alan öğrenciler",
                    "link": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1640",
                    "pubDate": "Wed, 16 Sep 2015 09:36:57 GMT",
                    "description": "by Haldun Sarnel. &nbsp;<p><span class=\"nolink\"><span class=\"filter_mathjaxloader_equation\"><p>Dersimizin ilk toplantısı 30 Eylül Çarşamba günü saat 15:00'da yapılacaktır. Dersi alan öğrencilerin en kısa sürede Moodle'a ders kaydını yapmaları gerekmektedir. Bütün duyurular ve gereken dökümanlar Moodle üzerinden iletilecektir.</p><p>Enrollment key: design</p></span></span></p>",
                    "guid": {
                        "_isPermaLink": "true",
                        "__text": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1640"
                    }
                },
                {
                    "title": "EED4093 Research Project ve EEE4094 Final Project alan öğrencilerin dikkatine",
                    "link": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1637",
                    "pubDate": "Wed, 16 Sep 2015 05:52:44 GMT",
                    "description": "by Serkan Günel. &nbsp;<p><span class=\"nolink\"><span class=\"filter_mathjaxloader_equation\"><p>2015 güz yarıyılında EED4093 Research Project ve EEE4094 Final Project derslerini alan öğrencilerin en geç 27.9.2015 23:55 tarihine dek ilgili derse (EED4093 alanların EED4093'e, EED4094 alanların EED4094'e) Moodle üzerinden kayıt olmaları gerekmektedir. Tüm süreç Moodle üzerinden yürüyeceğinden kaydın zamanında yapılması önemlidir. Bu tarihe kadar kaydını yapmamış öğrencilerin bitirme tezi almayacağı var sayılacaktır.<br /></p><p>Derse kayıt olur olmaz sitedeki tüm açıklamaları ve dokümanları dikkatlice okuyunuz.</p></span></span></p>",
                    "guid": {
                        "_isPermaLink": "true",
                        "__text": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1637"
                    }
                },
                {
                    "title": "EED2003 Logic Design Laboratuvar Uygulaması",
                    "link": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1638",
                    "pubDate": "Wed, 16 Sep 2015 07:10:06 GMT",
                    "description": "by Şebnem Seçkin Uğurlu. &nbsp;<p><span class=\"nolink\"><span class=\"filter_mathjaxloader_equation\"><p>17.09.2015 Perşembe günü EED2003 Logic Design Laboratuvar uygulaması yapılmayacaktır. İlk laboratuvar 01.10.2015 Perşembe günü yapılacaktır.</p></span></span></p>",
                    "guid": {
                        "_isPermaLink": "true",
                        "__text": "http://eee.deu.edu.tr/moodle/mod/forum/discuss.php?d=1638"
                    }
                }
            ]
        },
        "_version": "2.0"
        }
    }
RactiveApp!set app

# Create the actor which will connect to the server
proxy-actor = ProxyActor!

app.on 'complete', !->
  #console.log "window.location: ", window.location
  if not window.location.hash
    window.location = '#home-page'
   
  # create actors and init widgets
  RactivePartial! .init!

  # debugging purposes
  #test = SwitchActor 'test-actor'

  $ document .ready ->
    console.log "document is ready..."
    RactivePartial! .init-for-document-ready!
        
    RactivePartial! .init-for-dynamic-pos widget-positions
    # debug 
    /*
    test.send IoMessage:
      pin_name: 'test-pin'
      val: on
    */
  
  # Update all I/O on init
  proxy-actor.update-connection-status!
  
  console.log "ractive app completed..."

                    
                    
  /*
  console.log "Testing sending data to table from app.ls"
  test = SwitchActor 'test-actor'
  test.send IoMessage:
    pin_name: \test-table
    table_data:
      * <[ bir iki üç dört beş ]>
      * <[ 1bir 1iki 1üç 1dört 1beş ]>
      * <[ 2bir 2iki 2üç 2dört 2beş ]>
  */
  
  /*
  
  console.log "Performance testing via gauge-slider pin"
      
  test2 = SwitchActor \gauge-slider
  
  i = 0
  j = +1
  up = -> 
    test2.gui-event i
    #app.set \abc, i
    if i >= 100 
      j := -1 
    if i <= 0 
      j := +1
    i := i + j
    set-timeout up, 1000
    
  set-timeout up, 2000
  
  test3 = SwitchActor \gauge-slider2
  
  k = 0
  l = +1
  up2 = -> 
    test3.gui-event k
    #app.set \abc, k
    if k >= 100 
      l := -1 
    if k <= 0 
      l := +1
    k := k + l
    set-timeout up2, 1000
    
  set-timeout up2, 2000
    
  */
  
  drag-move-listener = (event) -> 
    target = event.target
    x = ((parse-float target.get-attribute \data-x) or 0) + event.dx
    y = ((parse-float target.get-attribute \data-y) or 0) + event.dy
    
    a = 'translate(' + x + 'px, ' + y + 'px)'
    target.style.webkit-transform = a
    target.style.transform = a

    target.set-attribute \data-x, x 
    target.set-attribute \data-y, y
  
  interact \.draggable .draggable do
    snap: 
      targets: 
        * interact.createSnapGrid({ x: 10, y: 10 })
        ...
      range: Infinity,
      relativePoints: 
        * { x: 0, y: 0 } 
        ...
    inertia: true
    restrict: 
      restriction: \.scada-drawing-area
      end-only: true
      element-rect: {top: 0, left: 0, bottom: 1, right: 1}
      
    onmove: drag-move-listener
    onend: (event) -> 
      console.log "moved: x: #{event.dx} y: #{event.dy}"
    
  .resizable edges: { left: no, right: yes, bottom: yes, top: no }
  .on \resizemove, (event) -> 
    target = event.target
    x = ((parse-float target.get-attribute \data-x) or 0) + event.dx
    y = ((parse-float target.get-attribute \data-y) or 0) + event.dy
    
    # update the element's style
    target.style.width  = event.rect.width + 'px'
    target.style.height = event.rect.height + 'px'
  
    
    
    # translate when resizing from top or left edges
    x += event.deltaRect.left
    y += event.deltaRect.top
    
    console.log "event.delta-rect: ", event.deltaRect.left, event.delta-rect.right
    
    a = 'translate(' + x + 'px, ' + y + 'px)'
    target.style.webkit-transform = a
    target.style.transform = a
    
    #target.set-attribute \data-x, x 
    #target.set-attribute \data-y, y
    
    console.log "resized: ", event.rect.width + '×' + event.rect.height
  

RactivePartial! .register-for-document-ready ->   
  # lock scada
  lock = SwitchActor \lock-scada
  
  lock.add-callback (msg) -> 
    if msg.val is true 
      $ \.draggable .each -> 
        $ this .remove-class \draggable 
        $ this .add-class \draggable-locked
    else
      $ \.draggable-locked .each -> 
        $ this .remove-class \draggable-locked 
        $ this .add-class \draggable
    
  # lock scada externally 
  #SwitchActor \lock-scada .gui-event on
  
  
# TODO: remove this
# workaround for seamless page refresh
$ '#reload' .click -> location.reload!



    
  