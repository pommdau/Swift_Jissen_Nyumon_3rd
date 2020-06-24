class InheritableClass {}

class ValidSubClass : InheritableClass {}

final class FinalClass {}

// 継承不可能なためコンパイルエラー
// class InvalidSubClass : FinalClass {}