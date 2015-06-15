//
//  ViewController.swift
//  signals-swift-helloworld
//
//  Created by Pi R Square on 6/15/2558 BE.
//  Copyright (c) 2558 Debokeh. All rights reserved.
//

import UIKit
import Signals

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        no_argument_test()
        with_argument_test()
        with_arguments_test()
    }
    
    func no_argument_test() {
        // init
        let foo = Signal<()>()
        
        // watch
        foo.listen(self) {
            println("no_argument_test : HelloWorld")
        }
        
        // fire
        foo.fire()
    }
    
    func with_argument_test() {
        // init
        let foo = Signal<String>()
        
        // watch
        foo.listen(self) { bar in
            println("with_argument_test : bar : " + bar)
        }
        
        // fire
        foo.fire("Hello")
    }
    
    func with_arguments_test() {
        // init
        let foo = Signal<(id: Int, bar: String)>()
        
        // watch
        foo.listen(self) { (id, bar) in
            println("with_arguments_test : bar [\(id)] : " + bar)
        }
        
        // fire
        foo.fire(id:0, bar:"Hello")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

