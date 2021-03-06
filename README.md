[Demo video](https://vimeo.com/106757336)
[Demo Video Page](https://medium.com/sketch-app/mastering-the-bezier-curve-in-sketch-4da8fdf0dbbb)
[Snippet](https://www.bignerdranch.com/blog/core-graphics-part-4-a-path-a-path/)
# BezierPath.Curve

In this tutorial series we will go through lots and lots of custom drawing with bezier curve.

## Line

**Line drawing from point A to Point B**
![](https://github.com/tigerraj32/BezierPath.Curve/blob/master/BezierCurve/assets/line1.png)

```swift 
Path { path in
	path.move(to: CGPoint(x: 10, y: 100))
	path.addLine(to: CGPoint(x: 200, y:100))
}
```

**Modify Line Width and Color**

![](https://github.com/tigerraj32/BezierPath.Curve/blob/master/BezierCurve/assets/line2.png)

```swift
Path { path in
	path.move(to: CGPoint(x: 10, y: 100))
	path.addLine(to: CGPoint(x: 200, y:100))
}.stroke(Color.red, lineWidth: 10)
```

**Adding style to line: Dash line**


![](https://github.com/tigerraj32/BezierPath.Curve/blob/master/BezierCurve/assets/line3.png)

```swift
Path { path in
	path.move(to: CGPoint(x: 10, y: 100))
	path.addLine(to: CGPoint(x: 200, y:100))
}
.stroke(Color.red, style: StrokeStyle(lineWidth: 2, dash: [2]))
```


## Triangle / Rectangle

![](https://github.com/tigerraj32/BezierPath.Curve/blob/master/BezierCurve/assets/rect.png)

```swift
Path { path in
        path.move(to: CGPoint(x: 10, y: 100))
        path.addLine(to: CGPoint(x: 200, y:100))
        path.addLine(to: CGPoint(x:200,y: 200))
        path.addLine(to: CGPoint(x: 10, y: 200))
        path.addLine(to: CGPoint(x: 10, y : 100))
    }.stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .square, lineJoin: .miter))
           
```

## Circle

![](https://github.com/tigerraj32/BezierPath.Curve/blob/master/BezierCurve/assets/circle.png)

```swift
Path { path in
        path.move(to: CGPoint(x:0, y: 200))
        path.addCurve(to: CGPoint(x:200, y:0), control1: CGPoint(x: 0, y:100), control2: CGPoint(x:100, y:0))
        path.addCurve(to: CGPoint(x: 400, y: 200), control1: CGPoint(x: 300, y: 0), control2: CGPoint(x: 400, y: 100))
        path.addCurve(to: CGPoint(x: 200, y: 400), control1: CGPoint(x: 400, y: 300), control2: CGPoint(x:300, y: 400))
        path.addCurve(to: CGPoint(x: 0, y: 200), control1: CGPoint(x: 100, y: 400), control2: CGPoint(x: 0, y: 300))
        
        }.stroke(Color.red, lineWidth: 3) 
```



## Heart

![](https://github.com/tigerraj32/BezierPath.Curve/blob/master/BezierCurve/assets/heart.png)

**Option 1**

```swift
ZStack {
    Rectangle().frame(width: 200, height: 200)
    
    Circle().frame(width: 200, height:200).offset(x:100)
    
    Circle().frame(width: 200, height: 200).offset(y:-100)
    
    }.rotationEffect(.degrees(-45))
    .foregroundColor(Color.red)
    .scaleEffect(0.5)
```


**Option 2**
```swift
Path { path in
        
        path.move(to: CGPoint(x: 200, y:80))
        path.addCurve(to: CGPoint(x: 200, y: 350), control1: CGPoint(x: 380,y:20), control2: CGPoint(x:380,y: 200))
        path.addCurve(to: CGPoint(x: 200, y: 80), control1: CGPoint(x: 20, y:200), control2: CGPoint(x: 20, y: 20))
    }.foregroundColor(Color.red).scaleEffect(0.5)
```


