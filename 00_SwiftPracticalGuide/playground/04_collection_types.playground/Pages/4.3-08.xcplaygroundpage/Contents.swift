// 更新
var dictionary1 = ["key": 1]
dictionary1["key"] = 2
dictionary1 // ["key": 2]

// 追加
var dictionary2 = ["key1": 1]
dictionary2["key2"] = 2
dictionary2 // ["key1": 1, "key2": 2]

// 削除
var dictionary3 = ["key": 1]
dictionary3["key"] = nil
dictionary3 // [:]