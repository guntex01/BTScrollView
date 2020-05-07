//
//  ScrollViewController.swift
//  BTScrollView
//
//  Created by guntex01 on 5/8/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    @IBOutlet weak var scrollView1: UIScrollView!
    
    @IBOutlet weak var scrollView2: UIScrollView!
    
    
    let screenWidth = UIScreen.main.bounds.width
    let screeHeight = UIScreen.main.bounds.height
    
    var views = [CustomView2]()
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView1.showsHorizontalScrollIndicator = false
        scrollView1.bounces = false
        scrollView1.isPagingEnabled = true
        
        bongHoa()
        setupScrollView(views)
        
    }
    func bongHoa(){
    
        let bong1 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        bong1.imageView1.image = UIImage(named: "bong1")
        let bong2 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        bong2.imageView1.image = UIImage(named: "bong2")
        let bong4 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        bong4.imageView1.image = UIImage(named: "bong4")
        let bong3 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        bong3.imageView1.image = UIImage(named: "bong3")
        let bong5 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        bong5.imageView1.image = UIImage(named: "bong5")
        let bong6 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        bong6.imageView1.image = UIImage(named: "bong6")
        let bong7 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        bong7.imageView1.image = UIImage(named: "bong7")
        let bong8 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        bong8.imageView1.image = UIImage(named: "bong8")
        let bong9 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        bong9.imageView1.image = UIImage(named: "bong9")
        let bong10 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        bong10.imageView1.image = UIImage(named: "bong10")
        views.append(contentsOf: [bong1, bong2, bong3, bong4, bong5, bong6,bong7, bong8, bong9, bong10])

    }
    func setupScrollView(_ arrs: [CustomView2]){
        for (index, item) in arrs.enumerated() {
            item.frame = CGRect(x: screenWidth * CGFloat(index), y: 0, width: screenWidth, height: screeHeight)
            scrollView1.addSubview(item)
        }
        scrollView1.contentSize = CGSize(width: screenWidth * CGFloat(arrs.count), height: screeHeight)
    
    }
    func loHoa(){
        let lo1 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        lo1.imageView2.image = UIImage(named: "lo1")
        let lo2 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        lo2.imageView2.image = UIImage(named: "lo2")
        let lo3 = Bundle.main.loadNibNamed("CustomView2", owner: self, options: nil)?.first as! CustomView2
        lo3.imageView2.image = UIImage(named: "lo3")
        views.append(contentsOf: [lo1, lo2, lo3])
        
    }
    func setupScrollView2(_ arrs: [CustomView2]){
        for (index, item) in arrs.enumerated() {
            item.frame = CGRect(x: 0, y: screeHeight * CGFloat(index), width: screenWidth, height: screeHeight)
            scrollView2.addSubview(item)
        }
        scrollView2.contentSize = CGSize(width: screenWidth , height: screeHeight * CGFloat(arrs.count))
    
    }

}
