;一番最初に呼び出されるファイル

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;言語（システム変数）                                   
[iscript]

if(!sf.select_lang){
    
    //定義されていない場合はデフォルトで初期化
    sf.select_lang="default";

}

[endscript]

[lang_set name="&sf.select_lang"]

[if exp="TYRANO.kag.lang==='ch'" ]
[title name="Tyrano Script解说"]

[else]
[title name="ティラノスクリプト解説"]

[endif]



;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"

[s]














































































































