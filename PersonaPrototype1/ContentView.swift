import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Text("Main View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
                .tag(0)
            
            Text("Camera View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "camera")
                        Text("Find")
                    }
                }
                .tag(1)
            
            FriendList()
                .tabItem {
                    VStack {
                        Image(systemName: "person.3")
                        Text("Friends")
                    }
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
