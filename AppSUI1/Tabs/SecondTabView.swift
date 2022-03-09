//
//  SecondTabView.swift
//  AppSUI1
//
//  Created by Семен Семенов on 08.03.2022.
//

import SwiftUI

struct Detail: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}

struct SecondTabView: View {

    @EnvironmentObject var contentViewModel: ContentViewModel

    let details: [Detail] = [
        Detail(name: "name 1", description: "description 1"),
        Detail(name: "name 2", description: "description 2"),
        Detail(name: "name 3", description: "description 3"),
        Detail(name: "name 4", description: "description 4")
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(details.indices, id: \.self) { index in
                    let detail = details[index]
                    if index == 0 && contentViewModel.isNavigate {
                        NavigationLink(destination: Text(detail.description), isActive: $contentViewModel.isNavigate) {
                            Text(detail.name)
                        }
                    } else {
                        NavigationLink(destination: Text(detail.description)) {
                            Text(detail.name)
                        }
                    }
                }
            }
            .navigationTitle("Lasso")
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {

    static var previews: some View {
        SecondTabView()
    }
}
