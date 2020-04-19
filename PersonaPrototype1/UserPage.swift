import SwiftUI

struct UserPage: View {
    
    let carMaker: CarMaker
    @State var isClicked: Bool = false
    var body: some View {
        
        VStack {
            Image(carMaker.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture(count: 2, perform: {
                    self.isClicked = true
                })
            Text(carMaker.name)
        }.alert(isPresented: $isClicked, content: {
            Alert(title: Text("더블클릭"), message: Text("하셨습니다!"), dismissButton: .default(Text("OK")))
        })
    }
}

struct CarMarkerDetail_Previews: PreviewProvider {
    
    //view 내부에서의 참조를 위해 정적변수로 선언합니다.
    static let previewMaker = CarMaker(name: "현대자동차", imageUrl: "chicks", numberOfStore: 10000)
    static var previews: some View {
        CarMakerDetail(carMaker: previewMaker)
    }
}

