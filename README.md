# uchinoco.com

## サービス概要 ##
<p>uchinoco.comは、日々ペットと過ごしている中で撮影したペットたちの可愛い姿や面白い姿を共有できる写真投稿サービスです。</p>
<br />

## このサービスへの思い・作りたい理由 ##
<p>uchinoco.comは、ペットの写真に特化した写真投稿・共有アプリケーションです。<p>
<p>私は現在、猫を４匹飼っています。みんな個性豊かで、日々、面白い姿を見せてくれます。その度、写真を撮影していますが、撮影するだけでなく、他の猫好きの方と共有したいと思いこのアプリを考案しました。</p>
<p>他にもペット１匹ずつプロフィール登録や写真投稿できるため、思い出の写真を管理するのにも役立ちます。<p>
<p>また、ペットを飼っていない方でも、写真投稿一覧により、動物たちの可愛い姿を楽しめます。</p>
<br />

## ユーザー層について ##
<p>ペットを飼っている方／ペットを飼っていない動物好きの方</p>
<br />

## サービスの利用イメージ ##
<li>スマホやPCでの利用</li>
<li>ペットの可愛い写メ、面白い写メが撮影できたとき、スマホから投稿する。</li>
<li>空いた時間に推しを見つけて、可愛い姿に癒される。</li>
<br />

## サービスの差別化ポイント・推しポイント ##
<b>1.レスポンシブ対応</b>
<p>スマホで撮影した写真をスマホから投稿する利用イメージを意識して、レスポンシブ対応しています。</p>
<b>2.ペットごとにプロフィール登録ができます（予定）</b>
<p>ペットごとに、性別や性格、プロフィール画像を投稿することができます。</p>
<b>3.ランキング機能（予定）</b>
<p>いいね！の数を集計し、ランキングします。</p>
<br />

## 機能候補 ##
### 〜MVPリリース〜 ###
<b><認証></b>
<ul>
  <li>ユーザー登録</li>
  <li>ログイン・ログアウト機能</li>
</ul>
<b><検索></b>
<ul>
  <li>動物名検索</li>
  <li>キーワード検索</li>
  <li>タグ検索</li>
  <li>コメント内容検索</li>
</ul>
<b><メイン></b>
<ul>
  <li>写真投稿機能</li>
  <li>写真投稿一覧</li>
</ul>

### 〜今後追加予定の機能〜 ###
<b><認証></b>
<ul>
  <li>パスワードリセット機能</li>
  <li>ユーザー情報編集機能</li>
</ul>
<b><メイン></b>
<ul>
  <li>いいね！機能</li>
  <li>ブックマーク機能</li>
  <li>コメント機能</li>
  <li>うちの子（ペット）フォロー機能</li>
</ul>
<b><マイページ></b>
<ul>
  <li>ユーザープロフィール表示</li>
  <li>ユーザープロフィール投稿機能</li>
  <li>ユーザープロフィール編集機能</li>
  <li>投稿一覧</li>
  <li>うちの子（ペット）プロフィール表示機能</li>
   <li>うちの子（ペット）のプロフィール投稿</li>
  <li>うちの子（ペット）のプロフィール編集機能</li>
  <li>ブックマーク一覧</li>
</ul>
<b><ランキング></b>
<ul>
  <li>いいね！数によるランキング機能</li>
</ul>
<b><その他></b>
<ul>
  <li>お問い合わせフォーム</li>
  <li>利用規約</li>
  <li>プライバシーポリシー</li>
</ul>

## 機能の実装方針予定 ##
| カテゴリ      | 技術                    |
| ------------ | ---------------------- |
| フロントエンド | TailwindCSS,JavaScript |
| バックエンド  | Rails(Ruby)            |
| インフラ     | Heroku                 |
| データベース　| PostgreSQL             |
| 開発環境    | Docker                  |
| 認証       | sorcery                 |

## 画面遷移図 ##
https://www.figma.com/design/bJjRqUxVkxfU9gNAMGaWp0/Web%E3%82%A2%E3%83%97%E3%83%AA%E9%96%8B%E7%99%BA(%E5%B1%B1%E5%86%85)?node-id=13-69&t=8XeYgWVKZ9na0aP0-1

## ER図
https://dbdiagram.io/d/uchinoco-com-67c40167263d6cf9a0ec7db4