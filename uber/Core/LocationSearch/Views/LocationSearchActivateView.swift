//
//  LocationSearchActivateView.swift
//  uber
//
//  Created by sasharomanes on 23.01.2024.
//

import SwiftUI

struct LocationSearchActivateView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
                .padding(.horizontal)
            
            Text("Where to?")
                .foregroundStyle(Color(.darkGray))
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 64,
        height: 50)
        .background(
            Rectangle()
                .fill(Color.white)
                .shadow(color: .black, radius: 6))
    }
}

#Preview {
    LocationSearchActivateView()
}
