//
//  ContentView.swift
//  BezierCurve
//
//  Created by javra on 11/21/19.
//  Copyright © 2019 javra. All rights reserved.
//

import SwiftUI


struct CustomShape {
    static func path1() -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 20, y: 20))
            path.addLine(to: CGPoint(x:60, y: 20))
            path.addLine(to: CGPoint(x: 60, y: 60))
        }
    }
    
    static func path2() -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 20, y: 20))
            path.addLine(to: CGPoint(x:60, y: 20))
            path.addLine(to: CGPoint(x: 60, y: 60))
            path.addLine(to: CGPoint(x: 20, y: 60))
            path.addLine(to: CGPoint(x: 20, y: 20))
        }
    }
    
    static func circle() -> Path {
        return
            Path { path in
                path.move(to: CGPoint(x:0, y: 200))
                path.addCurve(to: CGPoint(x:200, y:0), control1: CGPoint(x: 0, y:100), control2: CGPoint(x:100, y:0))
                path.addCurve(to: CGPoint(x: 400, y: 200), control1: CGPoint(x: 300, y: 0), control2: CGPoint(x: 400, y: 100))
                path.addCurve(to: CGPoint(x: 200, y: 400), control1: CGPoint(x: 400, y: 300), control2: CGPoint(x:300, y: 400))
                path.addCurve(to: CGPoint(x: 0, y: 200), control1: CGPoint(x: 100, y: 400), control2: CGPoint(x: 0, y: 300))
                
        }
    }
    
    static func heart() -> Path {
        return
            
            Path { path in
                
                path.move(to: CGPoint(x: 200, y:80))
                path.addCurve(to: CGPoint(x: 200, y: 350), control1: CGPoint(x: 380,y:20), control2: CGPoint(x:380,y: 200))
                path.addCurve(to: CGPoint(x: 200, y: 80), control1: CGPoint(x: 20, y:200), control2: CGPoint(x: 20, y: 20))
        }
    }
    
    static func dashLine() -> Path {
        return
        Path { path in
            
            path.move(to: CGPoint(x: 10, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 100))
            
        }
        //.stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [10]))
    }
    
}

struct Heart: View {
    var body: some View {
        ZStack {
            Rectangle().frame(width: 200, height: 200)
            
            Circle().frame(width: 200, height:200).offset(x:100)
            
            Circle().frame(width: 200, height: 200).offset(y:-100)
            
        }
    }
}

//struct ContentView: View {
//    var body: some View {
//        VStack{
//            //CustomShape.path1().stroke(Color.red)
//            //CustomShape.path2().stroke(Color.red)
//            //CustomShape.circle().stroke()
//            //CustomShape.heart().foregroundColor(Color.red).scaleEffect(0.5)
//            //Heart().rotationEffect(.degrees(-45)).foregroundColor(Color.red).scaleEffect(0.5)
//
//            Path { path in
//                path.move(to: CGPoint(x: 10, y: 100))
//                path.addLine(to: CGPoint(x: 200, y: 100))
//            }
//
//            .stroke(style: StrokeStyle(lineWidth: 1, lineCap: .round, lineJoin: .round, dash: [2], dashPhase: 0))
//
//
//
//        }
//    }
//}










struct ContentView: View {
    var body: some View {
        VStack{
            Text("Line Drawing")
            
            Path { path in
                path.move(to: CGPoint(x: 10, y: 100))
                path.addLine(to: CGPoint(x: 200, y:100))
                path.addLine(to: CGPoint(x:200,y: 200))
                path.addLine(to: CGPoint(x: 10, y: 200))
                path.addLine(to: CGPoint(x: 10, y : 100))
            }.stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .square, lineJoin: .miter))
            
        
            
           
                
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
