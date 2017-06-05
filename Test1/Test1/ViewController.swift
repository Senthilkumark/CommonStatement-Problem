//
//  ViewController.swift
//  Test1
//
//  Created by Senthil Kumar Kuppuraj on 6/3/17.
//  Copyright © 2017 venturacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        print("Final Answer = " ,calculateAreaOfRectangle(inputArray: [1,4,2,3,3,4,4,6]))
        
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK: Calculate Area Of Rectangle
    func calculateAreaOfRectangle(inputArray:[Int]) -> Int {
        
        print("Input Elements = ",inputArray)
        var finalNumber:Int = 0
        
        if inputArray.count == 0
        {
            print("No Entry Here")
            
        }else{
            
            // Take Second Value Only
            var graphData = Array<Int>()
            
            var i : Int = 1
            for input in inputArray{
                if(i%2 == 0){
                    graphData.append(input)
                }
                i = i + 1
            }
            
            // Width and Length
            let length:Int = graphData.min()!
            let width = inputArray.count/2
            print("Rect Width = ",width)
            print("Rect Length =",length)

            // Final Number
            finalNumber = length * width
            
        }
        
        return finalNumber

    }


}

