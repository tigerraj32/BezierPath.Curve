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


** Modify line width and color **
![](https://github.com/tigerraj32/BezierPath.Curve/blob/master/BezierCurve/assets/line2.png)

```swift
Path { path in
	path.move(to: CGPoint(x: 10, y: 100))
	path.addLine(to: CGPoint(x: 200, y:100))
}.stroke(Color.red, lineWidth: 10)
```


**Dash line : Adding style to line **

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
