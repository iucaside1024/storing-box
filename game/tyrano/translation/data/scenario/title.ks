
[cm]

@clearstack
@bg storage ="title.jpg" time=100
@wait time = 200

*start 
[if exp="TYRANO.kag.lang==='ch'" ]
[button x=135 y=230 graphic="title/button_start-ch.png" enterimg="title/button_start-ch2.png"  target="gamestart" keyfocus="1"]
[button x=135 y=320 graphic="title/button_load-ch.png" enterimg="title/button_load-ch2.png" role="load" keyfocus="2"]
[button x=135 y=500 graphic="title/button_config-ch.png" enterimg="title/button_config-ch2.png" role="sleepgame" storage="config.ks" keyfocus="3"]
[button x=135 y=590 graphic="title/button_lang-ch.png" enterimg="title/button_lang-ch2.png" target="language_select" keyfocus="4"]

[else]
[button x=135 y=230 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart" keyfocus="1"]
[button x=135 y=320 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" keyfocus="2"]
[button x=135 y=500 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" keyfocus="3"]
[button x=135 y=590 graphic="title/button_lang.png" enterimg="title/button_lang2.png" target="language_select" keyfocus="3"]
[endif]

[s]

*language_select
;在标题画面选择游戏语言
[cm  ]
[clearfix]

[if exp="TYRANO.kag.lang==='ch'" ]
[bg storage="langselect-ch.png" time="100"]

[else]
[bg storage="langselect.png" time="100"]
[endif]

[button x=50 y=50 graphic="config/c_btn_back.png" enterimg="config/c_btn_back2.png"  target=""]
;选项
[glink target="set_ja" text="日本語" shadow="0xe5e5e5" size=25 x=513 y=350 graphic="button/select.png" font_color="black" width=154 height=21]
[glink target="set_ch" text="简体中文" shadow="0xe5e5e5" size=25 x=513 y=470 graphic="button/select.png" font_color="black" width=154 height=21]

[s]

*set_ja
[eval exp="sf.select_lang = 'defult'"]
[lang_set name="defult" ]
[jump  storage="title.ks"  target="language_select"  ]
[s]

*set_ch
[eval exp="sf.select_lang = 'ch'"]
[lang_set name="ch" ]
[jump  storage="title.ks"  target="language_select"  ]
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"























































































































































































