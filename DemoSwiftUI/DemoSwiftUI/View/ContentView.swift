//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by BeLocum-6 on 27/05/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var networkData: UserViewModel
    
    var body: some View {
        ScrollView {
            Text("All users")
                .font(.title).bold()
            cellUserData(network: _networkData)
        }
        .padding(.vertical)
        .onAppear {
            networkData.getUsers()
        }
    }
}

struct cellUserData : View {
    @EnvironmentObject var network: UserViewModel
    @State private var willMoveToNextScreen = false

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(network.users) { user in
//                NavigationView {
//                    NavigationLink {
//                        // destination view to navigation to
//                        DetailContentView()
//                    } label: {
                        HStack(alignment:.top) {
                            Text("\(user.id)")
                            
                            VStack(alignment: .leading) {
                                Text(user.name)
                                    .bold()
                                
                                Text(user.email.lowercased())
                                
                                Text(user.phone)
                            }
                        }
                    }
                    
                    .frame(width: 300, alignment: .leading)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.6667672396, green: 0.7527905703, blue: 1, alpha: 0.2662717301)))
                    .cornerRadius(20)
                }
//            }
//        }
    }
}
