# Aquatan Hugo Theme

あくあたん工房をベースにしたモダンなHugoテーマです。

## 特徴

- レスポンシブデザイン
- Bootstrap 4 + Paper Kit CSS
- 日本語対応
- メイカーコミュニティに適したレイアウト

## インストール

1. Hugoサイトのルートディレクトリで以下のコマンドを実行：

```bash
git submodule add https://github.com/yourname/aquatan-theme.git themes/aquatan
```

2. `hugo.toml`で以下を設定：

```toml
theme = "aquatan"
```

## 設定

### 必要なパラメーター

```toml
[params]
  description = "サイトの説明"
  author = "著者名"
  twitter = "@TwitterID"
  github = "GitHubID"
  joinUs = "参加フォームのURL"
  aboutLink = "紹介ページのURL"
  contactForm = "連絡フォームのURL"
  wiki = "WikiのURL"
```

### 機能セクション

```toml
[[params.features]]
  title = "タイトル"
  description = "説明文"
  icon = "アイコンクラス"
```

### メニュー

```toml
[menu]
  [[menu.main]]
    name = "メニュー名"
    url = "/url/"
    weight = 1
```

## 使用方法

1. コンテンツファイルを作成：
   - `content/_index.md` - ホームページ
   - `content/products/_index.md` - プロダクト一覧
   - `content/members/_index.md` - メンバー紹介
   - `content/news/_index.md` - ニュース

2. 静的ファイルを配置：
   - `static/images/` - 画像ファイル
   - `static/css/` - カスタムCSS
   - `static/js/` - カスタムJS

## 開発

```bash
hugo server -D
```

## ライセンス

MIT License
