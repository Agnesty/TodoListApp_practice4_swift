import SwiftUI

struct ItemModel: Identifiable, Codable {
    let id: String 
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    // Jadi kalau mau update datanya sesuai dengan idnya, dan tidak buat id baru dibuatlah function updateCompletion
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}
