import SwiftUI

struct FriendList: View {
    
    let friends = Friend.all()
    
    var body: some View {
        NavigationView {
            List(self.friends, id: \.name) { friend in
                NavigationLink(destination: FriendDetail(friend: friend)) {
                    FriendCell(friend: friend)
                        .padding(.all, 10)
                }
            }.navigationBarTitle("Friends", displayMode: .inline)
        }
    }
}

struct FriendList_Previews: PreviewProvider {
    static var previews: some View {
        FriendList()
    }
}
