struct Friend {
    let name: String
    let imageUrl: String
    let memo: String
}

extension Friend {
    static func all () -> [Friend] {
        return [
            Friend(name: "Yogno", imageUrl: "chicks", memo: "ㅎㅇㅎㅇ"),
            Friend(name: "Conan", imageUrl: "conan", memo: "안녕하세요"),
            Friend(name: "Jay", imageUrl: "beans", memo: "띠용")
        ]
    }
}
