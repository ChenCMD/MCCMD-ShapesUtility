# MCCMD-ShapesUtility
図形生成/出力に特化したライブラリ  
基本的な線,図形はもちろん 2次,3次ベジェ曲線や2次ベジェ曲線を使用した図形の生成  
上記の図形を視点先への出力もサポートしています

入力データ: Entity+Score or Score or Storage+Score  
出力データ: Entity

1. [DL](#howToDL)
1. [使い方](#howToUse)
	1. [plane.*とrotate.*のfunctionの違い](#plane.or.rotate)
	1. [線](#line)
	1. [円/楕円](#circle)
	1. [多角形](#polygon)
	1. [2次ベジェ曲線](#bezier.line.2)
	1. [3次ベジェ曲線](#bezier.line.3)
	1. [ベジェ曲線利用多角形](#bezier.polygon)
	1. [その他function](#util.function)
1. [注意点](#warning)
1. [ざっくりライセンス](#license)
1. [使用例](#ex)
1. [開発者向け情報](#forDev)
1. [連絡](#contact)

---
<a id="howToDL"></a>
### DL方法
[こちら](https://github.com/ChenCMD/MCCMD-ShapesUtility/releases)からAssets -> ShapesUtility.zip をDLしてください

---
<a id="howToUse"></a>
## 使い方
#### Entityから座標を入力する場合
1. 対象のEntityに必要なtag(それぞれに記載)を付与
2. オブジェクト名`CB03_Input`のスコアボードに必要な引数を設定後 function(from-entity)を実行
#### Scoreから座標を入力する場合
1. オブジェクト名`CB03_Input`のスコアボードの要求ダミープレイヤー(それぞれに記載)に100倍した値を入力
2. オブジェクト名`CB03_Input`のスコアボードに必要な引数を設定後 function(from-score)を実行
#### Storageから座標を入力する場合
1. 名前空間`chenbr:shapes_util`のInputPosに次の構造でそれぞれに記載された順に値を入力  
`{InputPos:[[X1,Y1,Z1],[X2,Y2,Z2]...]} (double型)`
2. オブジェクト名`Input`のスコアボードに必要な引数を設定後 function(from-storage)を実行

---
<a id="howToUse2"></a>
#### 出力Entityの扱い方
functionを実行後出力されるarea_effect_cloudの持っている情報:  
tag:`chenbr_shapes_util-output`の付与  
出力順に振られるスコア(`CB03_SummonOrder`)  
何回目の実行で出力されたEntityかのスコア(`CB03_RunID`)  

---
<a id="plane.or.rotate"></a>
### plane.*とrotate.*のfunctionの違い
plane.*は実行座標に平面に出力します  
rotate.*は実行座標から視点方向(score/storageの場合指定方向)に出力します その際下記の引数/入力情報が追加で必要になります。
##### Entityから座標を入力する場合
自動でEntityのyawとpitchが使用されます
##### Scoreから座標を入力する場合
ダミープレイヤー名`$angle-Yaw`,`$angle-Pitch`に指定してください
##### Storageから座標を入力する場合
名前空間`chenbr:shapes_util`のInputRotationに次の構造で指定してください
`{InputRotation:[yaw,pitch]} (float型)`

必要な引数: 
* `$distance`: どのくらい離れた位置に出力するか  
**10倍**した数値での入力

---
<a id="line"></a>
### 線
fromからtoにかけて線を出力します  
※ toの座標には点が出力されません

出力される点の視点方向: 次の点の方角


Entityから入力する際のtag名:  
* 始点: `chenbr_shapes_util-from`
* 終点: `chenbr_shapes_util-to`

Scoreから入力する際のダミープレイヤー名:  
* 始点: `$from-X`,`$from-Y`,`$from-Z`
* 終点: `$to-X`,`$to-Y`,`$to-Z`

Storageから入力する際の順番:
* InputPos[0]: 始点
* InputPos[1]: 終点

必要な引数: 
* `$count`: 点の数

実行function:  
`chenbr_shapes_util:api/generate/line/*`

![2020-05-29_20 17 02](https://user-images.githubusercontent.com/46134240/83254247-71fbca00-a1e9-11ea-8b9e-00876b99b2e0.png)

---
<a id="circle"></a>
### 円/楕円
centerを中心とした円/楕円を出力します

出力される点の視点方向: 中心点の反対


Entityから入力する際のtag名:  
* 中心点: `chenbr_shapes_util-center`

Scoreから入力する際のダミープレイヤー名:  
* 中心点: `$center-X`,`$center-Y`,`$center-Z`

Storageから入力する際の順番:
* InputPos[0]: 中心点

必要な引数: 
* `$count`: 点の数
* `$radius`: 円の半径  
**100倍**した数値での入力
* `$start`: 円の点の出力の開始角  
**10倍**した数値での入力
* `$ellipse-modifier`: 楕円化に使用 X座標への補正 %での指定  
100%をデフォルトとして入力
* `$ellipse-rotate`: 楕円の回転角 ここでの回転は出力の開始角には影響しません  
**10倍**した数値での入力

実行function:  
`chenbr_shapes_util:api/generate/circle/*`

![2020-05-29_18 27 24](https://user-images.githubusercontent.com/46134240/83249561-b71bfe00-a1e1-11ea-94a0-bf5711507809.png)
![2020-05-29_19 19 10](https://user-images.githubusercontent.com/46134240/83249576-bf743900-a1e1-11ea-9679-0bfb3d24a7d2.png)

---
<a id="polygon"></a>
### 多角形
centerを中心とした多角形を出力します

出力される点の視点方向: 次の点の方角


Entityから入力する際のtag名:  
* 中心点: `chenbr_shapes_util-center`

Scoreから入力する際のダミープレイヤー名:  
* 中心点: `$center-X`,`$center-Y`,`$center-Z`

Storageから入力する際の順番:
* InputPos[0]: 中心点

必要な引数: 
* `$count`: 各線の点の数 最終的な点の数は`$count * $corner`で求めることが出来ます。
* `$radius`: 多角形の角の中心点からの距離  
**100倍**した数値での入力
* `$corner`: 角の数
* `$jump`: 線をいくつ先の角と繋げるか  
1で通常の多角形, 2以上で☆などの図形を出力できます
* `$start`: 多角形の角の出力の開始角  
**10倍**した数値での入力
* `$ellipse-modifier`: 楕円化に使用 X座標への補正 %での指定  
100%をデフォルトとして入力
* `$ellipse-rotate`: 楕円の回転角 ここでの回転は出力の開始角には影響しません  
**10倍**した数値での入力

実行function:  
`chenbr_shapes_util:api/generate/polygon/*`

![2020-05-29_18 27 50](https://user-images.githubusercontent.com/46134240/83249565-ba16ee80-a1e1-11ea-8772-03d84b9a1082.png)

---
<a id="bezier.line.2"></a>
### 2次ベジェ曲線
fromからtoにかけて制御点に引っ張られた線(ベジェ曲線)を出力します  
※ toの座標には点が出力されません

出力される点の視点方向: 次の点の方角


Entityから入力する際のtag名:  
* 始点: `chenbr_shapes_util-from`
* 制御点: `chenbr_shapes_util-control-a`
* 終点: `chenbr_shapes_util-to`

Scoreから入力する際のダミープレイヤー名:  
* 始点: `$from-X`,`$from-Y`,`$from-Z`
* 制御点: `$control-a-X`,`$control-a-Y`,`$control-a-Z`
* 終点: `$to-X`,`$to-Y`,`$to-Z`

Storageから入力する際の順番:
* InputPos[0]: 始点
* InputPos[1]: 制御点
* InputPos[2]: 終点

必要な引数: 
* `$count`: 点の数

実行function:  
`chenbr_shapes_util:api/generate/bezier/line/quadratic/*`

![2020-05-29_18 30 57](https://user-images.githubusercontent.com/46134240/83249567-bbe0b200-a1e1-11ea-8952-9e45e3b7a125.png)

---
<a id="bezier.line.3"></a>
### 3次ベジェ曲線
fromからtoにかけて制御点a,bに引っ張られた線(ベジェ曲線)を出力します  
※ toの座標には点が出力されません

出力される点の視点方向: 次の点の方角


Entityから入力する際のtag名:  
* 始点: `chenbr_shapes_util-from`
* 制御点a: `chenbr_shapes_util-control-a`
* 制御点b: `chenbr_shapes_util-control-b`
* 終点: `chenbr_shapes_util-to`

Scoreから入力する際のダミープレイヤー名:  
* 始点: `$from-X`,`$from-Y`,`$from-Z`
* 制御点a: `$control-a-X`,`$control-a-Y`,`$control-a-Z`
* 制御点b: `$control-b-X`,`$control-b-Y`,`$control-b-Z`
* 終点: `$to-X`,`$to-Y`,`$to-Z`

Storageから入力する際の順番:  
* InputPos[0]: 始点
* InputPos[1]: 制御点a
* InputPos[2]: 制御点b
* InputPos[3]: 終点

必要な引数:  
* `$count`: 点の数

実行function:  
`chenbr_shapes_util:api/generate/bezier/line/cubic/*`

![2020-05-29_18 38 57](https://user-images.githubusercontent.com/46134240/83249569-bd11df00-a1e1-11ea-8ebf-0b5654e07df2.png)

---
<a id="bezier.polygon"></a>
### 2次ベジェ曲線を使用した多角形
centerを中心とした多角形を出力します  
各線をベジェ曲線として補正を掛けることが可能です

出力される点の視点方向: 次の点の方角


Entityから入力する際のtag名:  
* 中心点: `chenbr_shapes_util-center`

Scoreから入力する際のダミープレイヤー名:  
* 中心点: `$center-X`,`$center-Y`,`$center-Z`

Storageから入力する際の順番:
* InputPos[0]: 中心点

必要な引数: 
* `$count`: 各線の点の数 最終的な点の数は`$count * $corner`で求めることが出来ます。
* `$radius`: 多角形の角の中心点からの距離  
**100倍**した数値での入力
* `$corner`: 角の数
* `$jump`: 線をいくつ先の角と繋げるか  
1で通常の多角形, 2以上で☆などの図形を出力できます
* `$start`: 多角形の角の出力の開始角  
**10倍**した数値での入力
* `$vezier-modifier`: 各点に対する制御点の配置位置  
各線の1:1の内分点から正数の数の場合中心方向へ, 負数の場合外側に数値の距離分離れた位置に制御点を配置します  
**100倍**した数値での入力
* `$ellipse-modifier`: 楕円化に使用 X座標への補正 %での指定  
100%をデフォルトとして入力
* `$ellipse-rotate`: 楕円の回転角 ここでの回転は出力の開始角には影響しません  
**10倍**した数値での入力

実行function:  
`chenbr_shapes_util:api/generate/bezier/polygon/quadratic/*`

![2020-05-29_19 17 30](https://user-images.githubusercontent.com/46134240/83249572-be430c00-a1e1-11ea-8425-e592b30e91d8.png)

---
<a id="util.function"></a>
### UtilityFunctionの解説
* `chenbr_shapes_util:api/util/all_delete`  
全てのoutputEntityをkillします。
* `chenbr_shapes_util:api/util/latest_delete`  
最後に実行した回のoutputEntityをkillします。
* `chenbr_shapes_util:api/util/debug/view_output_enable`  
outputEntityの座標に10tick毎にend_rodのparticleを召喚します。
* `chenbr_shapes_util:api/util/debug/view_output_disable`  
上記のparticle召喚を無効にします。

---
<a id="warning"></a>
## 注意点
* 不具合が起きる可能性が高いため、`chenbr_shapes_util:core/*`のfunctionを直接実行しないでください。
* 上記に使用されている画像は`chenbr_shapes_util:api/util/debug/view_output_enable`を使用して撮影されたものです。  
本来はarea_effect_cloudの出力のみでparticleは自動で召喚されません。

---
<a id="license"></a>
### ざっくりとしたライセンス
* LICENSEファイルをそのまま入れっぱなしにしてね
* 再配布, 改変, 商用/私的利用ok
* このライブラリ使ったことによって何か起きてもちぇんは責任も保証もしないよ

---
<a id="ex"></a>
### 使用例
#### 自身の視点先に星型の魔法陣を出力
```mcfunction
#自身を実行元に
    tag @s add chenbr_shapes_util-center
#出力される点の数を線1本あたり10個に
    scoreboard players set $count CB03_Input 10
#出力される図形の大きさを100(半径1ブロック)に
    scoreboard players set $radius CB03_Input 100
#出力される図形の角の数を5に
    scoreboard players set $corner CB03_Input 5
#出力される図形の点を2点先と繋ぐように
    scoreboard players set $jump CB03_Input 2
#出力される点の角度を0度に
    scoreboard players set $start CB03_Input 0
#楕円補正を100%(補正無し)に
    scoreboard players set $ellipse-modifier CB03_Input 100
#楕円回転補正を0度に
    scoreboard players set $ellipse-rotate CB03_Input 0
#視点から図形の距離を15(1.5ブロック)に
    scoreboard players set $distance CB03_Input 15
#図形の生成
    function chenbr_shapes_util:api/generate/polygon/rotate.from-entity
#その他の引数を変更せずに出力される点を数を50個に設定
    scoreboard players set $count CB03_Input 50
#今度は円の生成
    function chenbr_shapes_util:api/generate/circle/rotate.from-entity
#出力されたEntityの座標にflameを召喚
    execute at @e[tag=chenbr_shapes_util-output] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal
#出力されたEntityのkill
    function chenbr_shapes_util:api/util/all_delete
#自身のタグを消去
    tag @s remove chenbr_shapes_util-center
```
---
<a id="forDev"></a>
### 開発者向けの情報
* 使用UUID: 8体  
Most:661415, Least:844424930131968 ~ 844424930131976  
0-a-17a7-3-0 ~ 0-a-17a7-3-8  
* 使用scoreboard: 4個  
`CB03_Input`, `CB03_SummonOrder`, `CB03_RunID`, `CB03_Core`  
* 使用storage: 1個  
`chenbr:shapes_util`
* 使用tag: 8個  
`chenbr_shapes_util-from`, 
`chenbr_shapes_util-to`, 
`chenbr_shapes_util-control-a`, 
`chenbr_shapes_util-control-b`, 
`chenbr_shapes_util-center`, 
`chenbr_shapes_util-output`, 
`chenbr_shapes_util-unfinished`, 
`chenbr_shapes_util-temp`

---
<a id="contact"></a>
### 連絡先
[Twitter](https://twitter.com/Chen__TS)

---
supported: AETHERNOTE
