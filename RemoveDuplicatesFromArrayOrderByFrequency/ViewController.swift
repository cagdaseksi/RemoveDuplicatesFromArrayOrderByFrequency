//
//  ViewController.swift
//  RemoveDuplicatesFromArrayOrderByFrequency
//
//  Created by MAC on 11.03.2019.
//  Copyright © 2019 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tags = ["Animals", "Food", "Computer", "Movies", "Animals", "Food", "Animals", "Nature", "Animals", "Food", "Travel", "Computer", "Swift", "Swift", "Nature", "Fruits"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // 1. reduce
        let reduce = tags.reduce(into: [:], { $0[$1, default:0] += 1})
        print(reduce)
        
        // 2. sort
        let sorted = reduce.sorted(by: {$0.value > $1.value  })
        print(sorted)
        
        // 3. map
        let map = sorted.map({$0.key})
        print(map)
        
    }


}

