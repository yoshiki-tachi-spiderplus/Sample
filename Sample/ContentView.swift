//
//  ContentView.swift
//  Sample
//
//  Created by sp_user on 2025/02/05.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    let optionalString = Optional<String>("test")
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button {
                print(optionalString ?? "")
                if let optionalString = optionalString {
                    print(optionalString)
                }
            } label: {
                Text(optionalString ?? "")
            }
        }
        .padding()
        .onAppear {
            var hoge: Hoge? = Hoge()
            hoge = nil
            //testMethod()
        }
    }
}

extension ContentView {
//    func testMethod() {
//        var count = 0
//        var count2 = 0
//        var count3 = 0
//        var count4 = 0
//        
//        if count == 0 {
//            count += 1
//            if count2 == 1 {
//                count += 1
//                if count3 == 2 {
//                    count += 1
//                    if count4 == 3 {
//                        count += 1
//                    } else {
//                        count -= 1
//                    }
//                }
//            }
//        }
//        print("\(count)")
//        
//        testMethod2(a: 1, b: 2, c: 3, d: 1, e: 2, f: 3, g: 1)
//    }
    
    func testMethod2(a: Int, b: Int, c: Int, d: Int, e: Int, f: Int, g: Int) {
        if a == 0 {
            if b == 1 {
                if c == 2 {
                    if d == 3 {
                        print("aaa")
                    } else {
                        print("vvv")
                    }
                    
                    if e == 0 {
                        if f == 0 {
                            if g == 0 {
                                print("vvv")
                            }
                        }
                    }
                }
            }
        }
    }
    
    class Hoge {
        private var closure: (() -> Void)?
        private var count = 0
        
        init() {
            closure = createClosure()
        }
        
        func createClosure() -> (() -> Void) {
            return { [self] in self.count += 1 }
        }
    }
}

#Preview {
    ContentView()
}
