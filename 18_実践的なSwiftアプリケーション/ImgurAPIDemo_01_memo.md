# API動作の確認
- https://api.imgur.com/oauth2/addclient
    - APIの登録
- [POST Image Upload ](https://apidocs.imgur.com/?version=latest#c85c9dfc-7487-4de2-9ecd-66f727cf3139)
- https://app.quicktype.io/
    - JSON文字列からstructのコードを作成する
    - 必要なところを抜き出す
- [curl コマンド 使い方メモ \- Qiita](https://qiita.com/yasuhiroki/items/a569d3371a66e365316f#http-header%E3%82%92%E7%A2%BA%E8%AA%8D%E3%81%99%E3%82%8B--i--i--v)

# ターミナルからアップロード
- 画像をbase64文字列化する
- あまりにbase64文字列が長いとエラーになるので、単色の小さいスクリーンショットを撮ってこれを使用した。

``` JavaScript
my_image=`base64 "/Users/ikeuchihiroki/Desktop/images/desktop 12.png"`
```

``` JavaScript
curl --location --request POST 'https://api.imgur.com/3/image' \
--header 'Authorization: Client-ID e6d8ea34904ab93' \
--form "image=${my_image}"
```

- 成功時


``` JavaScript
{
	"data": {
		"id": "qZCWKxg",
		"title": null,
		"description": null,
		"datetime": 1595172252,
		"type": "image/png",
		"animated": false,
		"width": 23,
		"height": 23,
		"size": 1020,
		"views": 0,
		"bandwidth": 0,
		"vote": null,
		"favorite": false,
		"nsfw": null,
		"section": null,
		"account_url": null,
		"account_id": 0,
		"is_ad": false,
		"in_most_viral": false,
		"has_sound": false,
		"tags": [],
		"ad_type": 0,
		"ad_url": "",
		"edited": "0",
		"in_gallery": false,
		"deletehash": "c2LANLNUeU0UANa",
		"name": "",
		"link": "https://i.imgur.com/qZCWKxg.png"
	},
	"success": true,
	"status": 200
}
```

- エラー（クライアントID不正）

``` JavaScript
{
	"data": {
		"error": "Invalid client_id",
		"request": "/3/image",
		"method": "POST"
	},
	"success": false,
	"status": 403
}
```

- URLを`https://api.imgur.com/3/upload`にしてみる

``` JavaScript
{
	"status": 500,
	"success": false,
	"data": {
		"error": "An unexpected error has occurred",
		"request": "/3/upload",
		"method": "POST"
	}
}
```

## 画像の削除（非認証）
- [DEL Image Deletion \(Un\-Authed\)](https://apidocs.imgur.com/?version=latest#949d6cb0-5e55-45f7-8853-8c44a108399c)

```sh
curl --location --request DELETE 'https://api.imgur.com/3/image/6QAdDyO5HYTBDHU' \
--header 'Authorization: Client-ID e6d8ea34904ab93'
```

- 成功時

``` JavaScript
{
	"data": true,
	"success": true,
	"status": 200
}
```

- エラー（クライアントID不正）

```sh
{
	"data": {
		"error": "Invalid client_id",
		"request": "/3/image/6QAdDyO5HYTBDHU",
		"method": "DELETE"
	},
	"success": false,
	"status": 403
}
```

- アクセストークンの更新

```swift
let dic = try? JSONSerialization.jsonObject(with: data ?? Data(), options: []) as? [String: Any]

if let dic = dic {
    for (key, value) in dic {
        print("\(key):\(value)")
    }
}
```

```
account_id:104356397
scope:<null>
refresh_token:f235fb7a192f035ab72dea28d5f64b444c7672fc
token_type:bearer
access_token:ae75b7b75182f24a95813feb999a00394e330a9a
account_username:IKEH1024
expires_in:315360000
```



