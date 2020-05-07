//
//  ViewController.swift
//  BTScrollView
//
//  Created by guntex01 on 5/7/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
   
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    let screenWidth = UIScreen.main.bounds.width
    let screeHeight = UIScreen.main.bounds.height
    
    var views = [CustomView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.bounces = false
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        
        pageControl.currentPage = 0
        pageControl.numberOfPages = views.count
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        cacBuocRuaTay()
        setupScrollView(views)
        setupView(view: views)
        
    }

    func cacBuocRuaTay(){
    
        let buoc1 = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! CustomView
        buoc1.imageView.image = UIImage(named: "buoc1")
        buoc1.nameLabel.text = "Bước 1: Làm ướt hai bàn tay bằng nước sạch. Thoa xà phòng vào lòng bàn tay. Chà xát hai lòng bàn tay vào nhau."
        buoc1.nameLabel.numberOfLines = 0
        let buoc2 = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! CustomView
        buoc2.imageView.image = UIImage(named: "buoc2")
        buoc2.nameLabel.text = " Bước 2: Dùng ngón tay và lòng bàn tay này cuốn và xoay lần lượt từng ngón của bàn tay kia và ngược lại."
        buoc2.nameLabel.numberOfLines = 0
        let buoc3 = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! CustomView
        buoc3.imageView.image = UIImage(named: "buoc3")
        buoc3.nameLabel.text = " Bước 3: Dùng lòng bàn tay này chà xát chéo lên mu bàn tay kia và ngược lại."
        buoc3.nameLabel.numberOfLines = 0
        let buoc4 = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! CustomView
        buoc4.imageView.image = UIImage(named: "buoc4")
        buoc4.nameLabel.text = " Bước 4: Dùng đầu ngón tay của bàn tay này miết vào kẽ giữa các ngón của bàn tay kia và ngược lại."
        buoc4.nameLabel.numberOfLines = 0
        let buoc5 = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! CustomView
        buoc5.imageView.image = UIImage(named: "buoc5")
        buoc5.nameLabel.text = " Bước 5: Chụm 5 đầu ngón tay của tay này cọ vào lòng bàn tay kia bằng cách xoay đi, xoay lại."
        buoc5.nameLabel.numberOfLines = 0
        let buoc6 = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! CustomView
        buoc6.imageView.image = UIImage(named: "buoc6")
        buoc6.nameLabel.text = " Bước 6: Xả cho tay sạch hết xà phòng dưới nguồn nước sạch. Lau khô tay bằng khăn hoặc giấy sạch."
        buoc6.nameLabel.numberOfLines = 0
        
        views.append(contentsOf: [buoc1, buoc2, buoc3, buoc4, buoc5, buoc6])
        
    }
    
    func setupScrollView(_ arrs: [CustomView]){
        for (index, item) in arrs.enumerated() {
            item.frame = CGRect(x: screenWidth * CGFloat(index), y: 0, width: screenWidth, height: screeHeight)
            scrollView.addSubview(item)
        }
        scrollView.contentSize = CGSize(width: screenWidth * CGFloat(arrs.count), height: screeHeight)
    
    }
    
    func setupView(view: [CustomView]){
        scrollView.frame = CGRect(x: 0,
                                  y: 0,
                                  width: screenWidth,
                                  height: screeHeight - 100)
        scrollView.contentSize = CGSize(width: screenWidth * CGFloat(view.count),
                                        height: screeHeight - 100)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< view.count{
            view[i].frame = CGRect(x: screenWidth * CGFloat(i),
                                   y: 0,
                                   width: screenWidth,
                                   height: screeHeight - 100)
        }
    }
    
}

extension ViewController: UIScrollViewDelegate{
      func scrollViewDidSrcoll(_scrollView: UIScrollView){
          let pageIndex = round(scrollView.contentOffset.x/screenWidth)
          pageControl.currentPage = Int(pageIndex)
      }
  }

