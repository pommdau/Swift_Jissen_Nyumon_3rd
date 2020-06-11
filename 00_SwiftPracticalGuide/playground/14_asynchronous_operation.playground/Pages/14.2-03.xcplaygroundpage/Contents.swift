import Dispatch

// com.my_company.my_app.upload_queueという名前の並列ディスパッチキューを生成
let queue = DispatchQueue(
    label: "com.my_company.my_app.upload_queue",
    qos: .default,
    attributes: [.concurrent])