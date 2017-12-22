//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport



extension UIColor{
    func getDeiredColor() -> String {
        return "UIColor.red"
    }
}
extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()
class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window

//*********** computed properties
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    
        var qqq: String?
        var myName : String {
            mutating get {
            return qqq!
        }
        set(aaa)
        {
              qqq = aaa + "kumar S"
        }
    }
}

var react = Rect()
react.myName = "Sarath "



var myClosure = { (name:String,age:Int) ->String  in
    print("My Name is:\(name) and age is:\(age)")
    return "My Name is:\(name) and age is:\(age)"
}
myClosure("sarath", 25)


struct myprofile
{
    static let sharedInstance = myprofile()
    private init()
    {
        
    }
    func  doSomething() {
        print("saratgh")
    }
}
myprofile.sharedInstance.doSomething()

DispatchQueue.global(qos: .default).async {
    print("GCD global")
    DispatchQueue.main.async {
        print("main thread")
    }
}


let addoperation = BlockOperation {
    print("operation queue backgroung")
}

let queue = OperationQueue()
queue.addOperation(addoperation)

let addoperation1 = BlockOperation {

    print("method1")
}
let addoperation2 = BlockOperation {
   
    print("method2")
}
let operationQueue: OperationQueue = OperationQueue()
operationQueue.addOperation(addoperation1)
operationQueue.addOperation(addoperation2)
addoperation.addDependency(addoperation1)
operationQueue.cancelAllOperations()




