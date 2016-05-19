import Foundation
import UIKit


public func createContainer()->UIView{
    let view = UIView(frame: CGRectMake(0,0,400,400))
    view.backgroundColor = .whiteColor()
    
    return view
}

public func createShakeButton(title:String)->UIButton{
    let buttonWidth:CGFloat = 100
    let buttonHeight:CGFloat = 80
    
    let button = UIButton(frame: CGRectMake((400 - buttonWidth)/2,410 - buttonHeight,buttonWidth,buttonHeight))
    button.setTitle(title, forState: .Normal)
    button.setTitleColor(.blackColor(), forState: .Normal)
    return button
}

public func createEightBallImage(imageFileName:String)->UIImageView{
    let eightBallWidth:CGFloat = 350
    let eidthBallHeight:CGFloat = 350
    
    let eightBall = UIImageView(frame: CGRectMake((400-350)/2,(400-350)/2,eightBallWidth,eidthBallHeight))
    eightBall.image = UIImage(named: imageFileName)
    return eightBall
}

public func createPhraseLabel()->UILabel{
    let labelWidth:CGFloat = 110
    let labelHeight:CGFloat = 100
    
    let label = UILabel(frame: CGRectMake((350 - labelWidth)/2,(350 - labelHeight)/2,labelWidth,labelHeight))
    label.text = "Things look good!"
    label.textAlignment = .Center
    label.textColor = .whiteColor()
    label.numberOfLines = 0
    label.hidden = true
    
    return label
}