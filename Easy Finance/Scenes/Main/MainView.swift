//
//  MainView.swift
//  Easy Finance
//
//  Created by Shuhrat Nurov on 25/06/23.
//

import SwiftUI

struct MainView: View {
    private let screenWidth = UIScreen.main.bounds.width - 32
    @State var progress:Double = 0.5
    @StateObject var router = UniversalRouter()
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink("", destination: router.scene, isActive: $router.startRouting)
                
                LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.03, green: 0.12, blue: 0.35), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.2, green: 0.4, blue: 0.85), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 1)
                )
                .edgesIgnoringSafeArea(.top)
                
                VStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.clear)

                    Spacer()

                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(20, corners: [.topLeft, .topRight])
                }
                .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Hayrli kun!")
                                .font(Font.custom("Montserrat", size: 14))
                                .foregroundColor(.white)
                            
                            Text("Abdullaev A. A.")
                                .font(Font.custom("Montserrat-Bold", size: 20))
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Button(action: {
                            router.scene = AnyView(NotificationsView())
                        }, label: {
                            Image("Notification")
                        })
                    }
                    .padding(.horizontal)
                    ScrollView {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Umumiy qarz")
                                
                                    .font(Font.custom("Montserrat", size: 14))
                                    .foregroundColor(.white.opacity(0.75))
                                
                                Text("1 200 000.00")
                                    .font(
                                        Font.custom("Montserrat", size: 45)
                                            .weight(.bold)
                                    )
                                    .lineLimit(1)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .minimumScaleFactor(0.5)
                            }
                            .padding()
                            
                            Spacer()
                        }
                        
                        VStack(alignment: .leading) {
                            ZStack(alignment: .leading) {
                                Rectangle()
                                    .foregroundColor(Color(red: 0.98, green: 0.65, blue: 0.16))
                                    .frame(width: (UIScreen.main.bounds.width - 32)*progress)
                                    .frame(height: 10)
                                
                                    .cornerRadius(7)
                                
                                Rectangle()
                                    .foregroundColor(Color.white.opacity(0.3))
                                    .frame(width: (UIScreen.main.bounds.width - 32))
                                    .frame(height: 10)
                                    .cornerRadius(7)
                            }
                            Text("To'lovlarning ohirgi sanasi: 05.07.2023")
                                .font(Font.custom("Montserrat", size: 14))
                                .foregroundColor(Color.white.opacity(0.75))
                        }
                        
                        HStack {
                            Button {
                                print("Kreditni to'lash")
                            } label: {
                                HStack {
                                    Image("sendIcon")
                                        .resizable()
                                        .frame(width: 46, height: 46)
                                    Text("Kreditni to'lash")
                                        .foregroundColor(.black)
                                        .font(Font.custom("Montserrat", size: 16))
                                }
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .cornerRadius(30)
                                .padding(.trailing, 14)
                            }
                            
                            Button {
                                print("Pul olish")
                            } label: {
                                HStack {
                                    Image("getIcon")
                                        .resizable()
                                        .frame(width: 46, height: 46)
                                    Text("Pul olish")
                                        .foregroundColor(.black)
                                        .font(Font.custom("Montserrat", size: 16))
                                }
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .cornerRadius(30)
                                .padding(.trailing, 14)
                            }
                            
                        }
                        .padding()
                        .background(
                            Image("Union")
                        )
                        
                        VStack {
                            HStack {
                                Text("Faqat Siz uchun")
                                    .font(
                                        Font.custom("Montserrat", size: 14)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(Color(red: 0.03, green: 0.12, blue: 0.35).opacity(0.7))
                                Spacer()
                            }
                            .padding()
                            
                            HStack {
                                Button {
                                    //
                                } label: {
                                    VStack {
                                        Image("applicationsIcon")
                                        Text("Arizalar")
                                            .font(
                                                Font.custom("Montserrat", size: 12)
                                                    .weight(.semibold)
                                            )
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 0.03, green: 0.12, blue: 0.35).opacity(0.3))
                                    }
                                }
                                
                                Button {
                                    //
                                } label: {
                                    VStack {
                                        Image("paymentsIcon")
                                        Text("To'lovlar")
                                            .font(
                                                Font.custom("Montserrat", size: 12)
                                                    .weight(.semibold)
                                            )
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 0.03, green: 0.12, blue: 0.35).opacity(0.3))
                                    }
                                }
                                
                                Button {
                                    //
                                } label: {
                                    VStack {
                                        Image("conditionsIcon")
                                        Text("Shartlar")
                                            .font(
                                                Font.custom("Montserrat", size: 12)
                                                    .weight(.semibold)
                                            )
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 0.03, green: 0.12, blue: 0.35).opacity(0.3))
                                    }
                                }
                                
                                Button {
                                    //
                                } label: {
                                    VStack {
                                        Image("settingsIcon")
                                        Text("Sozlamalar")
                                            .font(
                                                Font.custom("Montserrat", size: 12)
                                                    .weight(.semibold)
                                            )
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 0.03, green: 0.12, blue: 0.35).opacity(0.3))
                                    }
                                }
                            }
                            
                            HStack {
                                Text("Kredit tafsilotlari")
                                    .font(
                                        Font.custom("Montserrat", size: 14)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(Color(red: 0.03, green: 0.12, blue: 0.35).opacity(0.7))
                                Spacer()
                            }
                            .padding()
                            
                            DetailsItemView(type: .custom, text: "1 000 000")
                            
                            DetailsItemView(type: .credit, text: "2 000 000")
                        }
                        .padding(.vertical)
                        .background(Color.white)
                        .cornerRadius(20, corners: [.topLeft, .topRight])
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


fileprivate struct DetailsItemView: View {
    
    enum DetailType {
        case credit
        case custom
        
        var title: String {
            switch self {
            case .credit:
                return "Sizning kredit limitingiz"
            case .custom:
                return "Siz uchun mavjud pul miqdori"
            }
        }
        
        var color: Color {
            switch self {
            case .credit:
                return Color(red: 0.98, green: 0.65, blue: 0.16)
            case .custom:
                return Color(red: 0.33, green: 0.5, blue: 0.89)
            }
        }
    }
    
    let type:DetailType
    let text:String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 0.03, green: 0.12, blue: 0.35).opacity(0.05))
                .cornerRadius(25)
            
            VStack {
                HStack {
                    Text(text)
                        .font(
                            Font.custom("Montserrat", size: 24)
                                .weight(.semibold)
                        )
                        .foregroundColor(type.color)
                    Spacer()
                }
                
                HStack {
                Text(type.title)
                    .font(
                        Font.custom("Montserrat", size: 10)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.03, green: 0.12, blue: 0.35).opacity(0.3))
                    Spacer()
                }
                
            }
            .padding()
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        
    }
}
