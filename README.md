# Active Recordの関連付けで遊んでみる 
  
DEMO    
[https://www.petitmonte.com/rails-demo/play_ar/](https://www.petitmonte.com/rails-demo/play_ar/)  
  
[mpp_play_arの意味]  
mpp = My Practice Project  
play = 遊ぶ
ar = Active Record     
    
## 1. 環境
・Ruby 2.6.5  
・Rails 6.0.3.2 (2020/6/17版)  
・Vue.js 2.6.11   
・vue-router 3.3.4    
・MariaDB 10.2.2以上 (MySQL5.5以上でも可)  
 
## 2. インストール方法
  
### bundle  
```rb
bundle install 
```
  
### 各種パッケージのインストール  
node_modulesフォルダ及びyarn.lockファイルを削除していますので次のコマンドでインストールします。  
```rb  
yarn install 
```
  
### database.yml  
config/database.ymlでデータベース設定を行います。  
  

### データベース系のコマンド  
```rb

// 各テーブルの作成
bin/rails db:migrate


```
  
### マスタキーの生成 
・/config/master.key  
・/config/credentials.yml.enc  
は削除しています。次のコマンドで再生成します。  
```rb
EDITOR=vi bin/rails credentials:edit   
```  
ファイル生成後、credentials.yml.encの編集画面が表示されるので:q!で終了します。

development.rb/production.rbの両方に  
```rb
config.require_master_key = true  
``` 
を定義しているのでマスタキーの生成は必須です。   
  
### フォルダの生成
```rb  
app/assetsにimagesフォルダを手動で生成する。 
```
※コレを行わないと「Completed 500 Internal Server Error」になりますのでご注意。  
    
### CSVのイン🅂ポート
各CSVはphpMyAdminなどを利用してインポートして下さい。 
    
### 実行する
```rb  
bin/rails s
```  

[http://localhost:3000/](http://localhost:3000/)  
      
## 3. Rails6プロジェクトの各種初期設定
その他は次の記事を参照してください。  
  
[Rails6プロジェクトの各種初期設定](https://www.petitmonte.com/ruby/rails6_project.html)  
