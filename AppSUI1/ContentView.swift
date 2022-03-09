//
//  ContentView.swift
//  AppSUI1
//
//  Created by Семен Семенов on 08.03.2022.
//

import SwiftUI

final class ContentViewModel: ObservableObject {

    @Published var isNavigate: Bool = false
}

struct ContentView: View {

    @StateObject var viewModel: ContentViewModel = .init()

    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection) {
            FirstTabView(action: {
                selection = 1
                viewModel.isNavigate.toggle()
            })
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
                .tag(0)
            SecondTabView()
                .environmentObject(viewModel)
                .tabItem {
                    Image(systemName: "lasso")
                    Text("lasso")
                }
                .tag(1)
            ThirdTabView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("profile")
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
