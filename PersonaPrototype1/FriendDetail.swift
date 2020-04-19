import SwiftUI

struct FriendDetail: View {
    
    let friend: Friend
    
    var body: some View {
        VStack {
            Image(friend.imageUrl)
                .resizable()
                .frame(width:200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Text(friend.name)
                .font(.largeTitle)
            Text(friend.memo)
        }
    }
}

struct FriendDetail_Previews: PreviewProvider {
    static let previewMaker = Friend(name: "Jay", imageUrl: "chicks", memo: "dd")
    static var previews: some View {
        FriendDetail(friend: previewMaker)
    }
}
