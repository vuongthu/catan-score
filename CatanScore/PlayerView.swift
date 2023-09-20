import SwiftUI

struct PlayerView: View {
    let player: Player
    var body: some View {
        VStack(alignment: .center) {
            Text(player.name)
                .font(.system(size: 80, weight: .bold, design: .rounded))
                .kerning(10)
                .padding(.top, 25)
            HStack {
                Button(action: player.decrement) {
                    Text("-")
                        .frame(width: 50, height: 50)
                        .font(.system(size: 40))
                        .background(player.color.mainColor.opacity(0.2))
                        .clipShape(Circle())
                }
                Text("\(player.points)")
                    .font(.system(size: 80, weight: .bold, design: .rounded))
                    .padding()
                Button(action: player.increment) {
                    Text("+")
                        .frame(width: 50, height: 50)
                        .font(.system(size: 40))
                        .background(player.color.mainColor.opacity(0.2))
                        .clipShape(Circle())
                }
            }
            Spacer()
        }
        .padding()
        .background(Color.clear)
        .foregroundColor(player.color.mainColor)
        
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var player = Player.sampleData[0]
    static var previews: some View {
        PlayerView(player: player)
            .previewLayout(.fixed(width: 400, height: 400))
    }
}
