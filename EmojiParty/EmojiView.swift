//
//  EmojiView.swift
//  EmojiParty
//
//  Created by T Krobot on 23/7/22.
//

import SwiftUI
import Subsonic

struct EmojiView: View {
    
    var emojiSet: EmojiSet
    @State var selectedEmojis: [String] = []
    
    
    var body: some View {
        
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
            
            ForEach(emojiSet.emojis, id: \.self) { emoji in
                
                Button {
                    
                    selectedEmojis.append(emoji)
                    
                } label: {
                    
                    Text(emoji)
                        .font(.system(size: 100))
                }
                .font(.system(size: 100))
            }
        }
    }
    
}


struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(emojiSet: EmojiSet(name: "Fruits",  emojis: ["🍌", "🍎"]))
    }
}
