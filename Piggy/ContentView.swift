
import SwiftUI
struct ContentView: View {
    @State var Myp: String = "24"
    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.99, green: 0.82, blue: 0.82), Color(red: 0.93, green: 0.89, blue: 0.88)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(Myp)
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                    
                Text("Hello, Piggy!")
                    .font(.system(size: 42, weight: .bold))
                    .foregroundColor(Color(red: 0.63, green: 0.28, blue: 0.46))
                    .padding(50)
                
                Spacer()
                
                Button(action: {if Myp == "24" {Myp = "23" }
                    else { Myp = "24" }}) {
                        Text("Change")
                            .font(.system(size: 44, weight: .bold))
                            .padding(20)
                            .background(Color(red: 1.00, green: 0.97, blue: 0.88))
                            .clipShape(Capsule())
                            .overlay(Capsule().stroke(Color.gray, lineWidth: 6))
                            .foregroundColor(Color(red: 0.91, green: 0.35, blue: 0.38))
                    }
                Spacer()
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}


