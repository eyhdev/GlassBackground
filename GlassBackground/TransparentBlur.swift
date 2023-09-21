//
//  TransparentBlur.swift
//  GlassBackground
//
//  Created by eyh.mac on 20.09.2023.
//

import SwiftUI

struct TransparentBlur: UIViewRepresentable {
  
    var removeAllFilters: Bool = false
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialDark))
        
        return view
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        DispatchQueue.main.async {
            if let backdropLayer = uiView.layer.sublayers?.first {
                if removeAllFilters {
                    backdropLayer.filters = []
                }else{
                    backdropLayer.filters?.removeAll(where: { filter in
                        String(describing: filter) != "gaussianBlur"
                        
                    })
                }
            }
        }
    }
}

#Preview {
    TransparentBlur()
        .padding(15)
        
}
