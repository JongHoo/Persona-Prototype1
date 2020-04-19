import SwiftUI

struct FriendCell: View {
    
    let friend: Friend
    
    var body: some View {
        HStack(spacing: 30) {
            Image(friend.imageUrl)
                .resizable()
                .frame(width:50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(friend.name).font(.title)
                Text("\(friend.memo)")
            }
        }
    }
}


struct FriendCell_Previews: PreviewProvider {
    static let previewMaker = Friend(name: "Jay", imageUrl: "chicks", memo: "ddd")
    static var previews: some View {
        FriendCell(friend: previewMaker)
    }
}
