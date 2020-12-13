# 42_cub3D_error_test

# 基本の使い方
リポジトリをクローンしたら、その中に、cub3D（実行ファイル）をコピーします。
`sh error_test.sh`
を実行します。

# 特定のテストだけをしたい場合
`sh error_test.sh "文字列(チェックしたいエラー)"`
を実行すると、入力した文字列をファイル名に含むテストファイルのみが実行されます。

例）
`sh error_test.sh window`
windowに関するエラーだけを実行することができます。

# おまけ
`sh error_test.sh sub`
を実行すると、サブディレクトリの中にcubファイルがある場合についても確認してくれます。

# おまけ2
自分でエラーファイルを新たに作った場合は、map_filesディレクトリに、
`error_`で始まるファイル名にして保存すると自動的に拾ってくれます。

# 注意点
ファイル名が".cub"のみのファイルや、存在しないファイルを引数にとる場合のエラーについては、
`sh error_test.sh`
でのみ確認できます。
このエラーだけを確認したい場合は、以下のコマンドを実行することをおすすめします。
`./cub3D map_files/.cub`
`./cub3D map_files/nothing.cub`

# チェックしてくれているエラー一覧
現在、以下エラーに対応しています。（ファイル名順）
```
error_3.cub　　　　　　　　　　　mapに012以外が含まれている。
error_corner_start.cub　　　　スタート位置がmapの角（外）にある（mapが閉じていないエラー）
error_elemC_alpha.cub　　　　　C（天井の色）にアルファベットが含まれている
error_elemC_char.cub　　　　　 C（天井の色）にアルファベットでも数字でもない文字が含まれている
error_elemC_large.cub　　　　　C（天井の色）に255より大きな数字が含まれている
error_elemC_less.cub　　　　　 C（天井の色）がRGBのうち2つしか指定されていない（カンマが1つしかない）
error_elemC_many.cub　　　　　 C（天井の色）を表す数値が4つある
error_elemC_minus.cub　　　　　C（天井の色）に0より小さな数字が含まれている
error_elemC_null.cub　　　　　 C（天井の色）に空文字が指定されている（カンマは2つある）
error_elemF_alpha.cub　　　　　Cで試したことのFバージョン
error_elemF_char.cub　　　　　 Cで試したことのFバージョン
error_elemF_large.cub　　　　　Cで試したことのFバージョン
error_elemF_less.cub　　　　　 Cで試したことのFバージョン
error_elemF_many.cub　　　　　 Cで試したことのFバージョン
error_elemF_minus.cub　　　　　Cで試したことのFバージョン
error_elemF_null.cub　　　　　 Cで試したことのFバージョン
error_elem_under_map.cub　　　エレメント（R,NO,SO,WE,EA,S,F,C）の一部がmapより下で定義されている
error_elemcode.cub　　　　　　 存在しないエレメントの指定子が定義されている
error_elemdevided.cub　　　　 pathを書くべきエレメントの内容がスペースで分割されてしまっている
error_elem_less_but.cub　　 　エレメントが足りないが、重複があり個数はあっている
error_img_missing_EA.cub　　　EAの画像ファイルが見つからない（存在しないファイルを指定している）
error_img_missing_NO.cub　　　NOの画像ファイルが見つからない（存在しないファイルを指定している）
error_img_missing_S.cub　　　 Sの画像ファイルが見つからない（存在しないファイルを指定している）
error_img_missing_SO.cub　　　SOの画像ファイルが見つからない（存在しないファイルを指定している）
error_img_missing_WE.cub　　　WEの画像ファイルが見つからない（存在しないファイルを指定している）
error_img_no_xpm.cub　　　　　 画像ファイルの拡張子がxpmでない
error_map_devided.cub　　　　　mapの途中に改行がある（mapのしたにまだ012のみの文字列が続いている）
error_multiple_elemC.cub　　　Cが2つある
error_multiple_elemEA.cub　　 EAが2つある
error_multiple_elemF.cub　　　Fが2つある
error_multiple_elemNO.cub　　 NOが2つある
error_multiple_elemR.cub　　　Rが2つある
error_multiple_elemS.cub　　　Sが2つある
error_multiple_elemSO.cub　　 SOが2つある
error_multiple_elemWE.cub　　 WEが2つある
error_multiple_player.cub　　 スタート位置が2つある
error_no_cub.txt　　　　　　　　cubファイルの拡張子が.cubでない
error_no_player.cub　　　　　　スタート位置がmap内にない
error_open_map.cub　　　　　　　mapが閉じていない
error_permission.cub　　　　　　cubファイルの権限がない（000）
error_read_permission.cub　　　cubファイルの読み取り権限がない（333）
error_too_big_mapx.cub　　　　　x軸方向にmapが大きすぎる（500以上）　→人によってはエラーにならないです
error_too_big_mapy.cub　　　　　y軸方向にmapが大きすぎる（500以上）　→人によってはエラーにならないです
error_under_map_something.cub マップより下にまだ何か書いてある
error_window_over_int.cub　　  windowのサイズがintの最大値を超えている　→人によってはエラーにならないです
error_window_alpha.cub　　　　　windowサイズの指定にアルファベットが含まれている
error_window_char.cub　　　　　 windowサイズの指定にアルファベットでも数字でもない文字が含まれている
error_window_less.cub　　　　　 windowサイズを指定する数字が1つしかない
error_window_many.cub　　　　　 windowサイズを指定する数字が3つある
error_window_minus.cub　　　　  windowサイズの数字の片方が負の数（x * y < 0）
error_window_minus2.cub　　　　 windowサイズの数字の両方が負の数（x * y > 0）
error_window_zero.cub　　　　　　windowサイズの数字の片方が0
error_directry.cub　　　　　　　　.cubがディレクトリ
```
