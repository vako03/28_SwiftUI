//
//  ContentViewModel.swift
//  28_SwiftUI
//
//  Created by valeri mekhashishvili on 22.05.24.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var contentInfos: [ContentInfo] = [
        ContentInfo(title: "რა დაუწუნა ბარბარემ ნიკის?", description: "ნიკის ამაზე ჯერ განცხადება არ გაუკეთებია, ფანები ელოდებიან რომ რომელიმე მალე სიჩუმეს გაფანტავს"),
        ContentInfo(title: "რა ზომის ფეხი აქვს ვასოს?", description: "დეველოპერებმა განაცხადეს რომ თუ მას 42 და მეტი ზომა ფეხი აქვს მის მოსმენას აზრი არ აქვს და კომენტარის გარეშე დატოვებენ ლექციას"),
        ContentInfo(title: "რა სიმაღლისაა ანჟელა ew?", description: "ანჟელა ew არის მეტრაოთხმოცი, რაც ნიშნავს რომ ის დაახლოებით ტეილორ Swift-ის სიმაღლისაა და დიდი ფეხი აქვს"),
        ContentInfo(title: "რატომ გაებუტა ბარბარეს ჭეპეტე?", description: "ამჟამინდელი მონაცემებით ისინი 2 დღე არ ესაუბრებოდნენ ერთმანეთს და როგორც გაირკვა ანიგნორებს აიგნორებდნენ რაღაც იგნორში."),
        ContentInfo(title: "MVC vs MVVM", description: "აი ეს MVC გასაგებია, მაგრამ MVVM ჩემამდე არ დადის რა, ამ სვიბთ იუაიში სად ვიყენებთ მაგას?"),
        ContentInfo(title: "ნეტავ რამდენი ხანი გაგრძელდება ეს?", description: "აღმოჩნდა რომ დეველოპერები ძალიან გახარებულები არიან SwiftUI-ით. ნეტავ რამდენი ხანი გაგრძელდება Honeymoon phase?"),
        ContentInfo(title: "Title 1", description: "Description 1"),
        ContentInfo(title: "Title 2", description: "Description 2"),
        ContentInfo(title: "Title 1", description: "Description 1"),
        ContentInfo(title: "Title 2", description: "Description 2"),
        ContentInfo(title: "Title 1", description: "Description 1"),
        ContentInfo(title: "Title 2", description: "Description 2"),
        ContentInfo(title: "Title 1", description: "Description 1"),
        ContentInfo(title: "Title 2", description: "Description 2"),
        ContentInfo(title: "Title 1", description: "Description 1"),
        ContentInfo(title: "Title 2", description: "Description 2"),
        ContentInfo(title: "Title 1", description: "Description 1"),
        ContentInfo(title: "Title 2", description: "Description 2"),
        
        // Add more contentInfos as needed
    ]
}
