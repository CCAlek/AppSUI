//
//  FirstTabView.swift
//  AppSUI1
//
//  Created by Семен Семенов on 08.03.2022.
//

import SwiftUI

struct FirstTabView: View {

    let action: () -> Void

    var body: some View {
        Button(action: action, label: {
            Text("Переход на второй tab")
        })
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView {
        }
    }
}
