//
//  ThirdTabView.swift
//  AppSUI1
//
//  Created by Семен Семенов on 08.03.2022.
//

import SwiftUI

struct ThirdTabView: View {

    @State private var isShowing = false

    var body: some View {
        Button("Открыть модальное окно") {
            isShowing.toggle()
        }
        .sheet(isPresented: $isShowing) {
            Text("Открыто")
        }

    }
}

struct ThirdTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabView()
    }
}
