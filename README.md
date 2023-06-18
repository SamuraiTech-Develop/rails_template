# rails_template
Ruby on Railsのテンプレートリポジトリ

# Version
| name  | version |
|-------|---------|
| Ruby  | 3.2.2   |
| Rails | 7.0.4.3 |
| MySQL | 8.0.33  |

# 環境構築
## Docker
```bash
# 起動
$ make up

# 停止
$ make stop
```

## Railsコンテナ
エディターにRubyMineを使用している場合にはデバッグ機能を使用することができます。
```bash
# Railsのコンテナに入る
$ make shell

# Railsサーバー起動（コンテナ内で実行）
$ make rails

# RubyMine用RemoteDebug起動（コンテナ内で実行）
$ make debug
```

## Webpack
```bash
# インストール
$ npm install

# 開発用ビルド
$ npm run dev

# 監視モード
$ npm run watch
```