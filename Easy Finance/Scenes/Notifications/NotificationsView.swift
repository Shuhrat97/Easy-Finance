//
//  NotificationsView.swift
//  Easy Finance
//
//  Created by Shuhrat Nurov on 25/06/23.
//

import SwiftUI

struct NotificationsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            LinearGradient(
                stops: [
                    Gradient.Stop(color: Color(red: 0.03, green: 0.12, blue: 0.35), location: 0.00),
                    Gradient.Stop(color: Color(red: 0.2, green: 0.4, blue: 0.85), location: 1.00),
                ],
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 1)
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image("arrow-left")
                            .foregroundColor(.white)
                            .frame(width: 22, height: 22)
                    }
                    .padding(.trailing)


                    Text("Bildirishnomalar")
                      .font(
                        Font.custom("Montserrat", size: 18)
                          .weight(.semibold)
                      )
                      .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding()
                
                List {
                    ForEach(0...10, id: \.self) { i in
                        if #available(iOS 15.0, *) {
                            NotificationItemView()
                                .listRowBackground(Color.clear)
                                .listRowSeparator(.hidden)
                        } else {
                            NotificationItemView()
                        }
                    }
                }
                .listStyle(.plain)
            }
            .navigationBarHidden(true)
            
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}

fileprivate struct NotificationItemView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Ariza rad etildi")
                  .font(
                    Font.custom("Montserrat", size: 16)
                      .weight(.semibold)
                  )
                  .foregroundColor(.white)
                Spacer()
                HStack(alignment: .center, spacing: 10) {
                    Text("O'qilgan")
                      .font(
                        Font.custom("Montserrat", size: 10)
                          .weight(.medium)
                      )
                      .multilineTextAlignment(.trailing)
                      .foregroundColor(Color(red: 0.55, green: 0.68, blue: 1))
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 4)
                .background(Color(red: 0.33, green: 0.5, blue: 0.89).opacity(0.15))
                .cornerRadius(15)
            }
            .padding(.top)
            .padding(.horizontal)
            
            HStack {
                Text("06.06.2023  12:30")
                    .font(
                        Font.custom("Montserrat", size: 12)
                            .weight(.semibold)
                    )
                    .foregroundColor(.white.opacity(0.3))
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                Text("Lorem ipsum dolor sit amet consectetur. Dui integer in amet...")
                    .font(
                        Font.custom("Montserrat", size: 12)
                            .weight(.medium)
                    )
                    .foregroundColor(.white)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding()
            
            
        }
        .padding(.leading)
        .frame(maxWidth: .infinity)
        .background(
            ZStack (alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color.white.opacity(0.15))
                  .cornerRadius(30)

                Image("Intersect")
            }
        )
        
    }
}

