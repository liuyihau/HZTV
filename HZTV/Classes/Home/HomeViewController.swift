//
//  HomeViewController.swift
//  HZTV
//
//  Created by LiuYihua on 2017/9/25.
//  Copyright © 2017年 coderwhy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}



//MARK:- 设置UI界面
extension HomeViewController{
    
    fileprivate func setupUI(){
        setNavigationBar()
        
    }
    
    private func setNavigationBar(){
        //1.左侧logoItem
        let logoImage = UIImage(named:"home-logo")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: logoImage, style:.plain, target: nil, action: nil)
        
        //2.设置右侧收藏的item
        let collectImage = UIImage(named: "search_btn_follow")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: collectImage, style: .plain, target: self, action: #selector(followItemClick))
        
        //3.搜索框
        let searchFrame = CGRect(x:0,y:0,width:200,height:32)
        let searchBar = UISearchBar(frame:searchFrame)
        searchBar.placeholder = "主播昵称/房间号/链接"
        navigationItem.titleView = searchBar
        searchBar.searchBarStyle = .minimal
        let searchFiled = searchBar.value(forKey: "_searchField") as? UITextField
        searchFiled?.textColor = UIColor.white
        
    }
    
    
}


extension HomeViewController{
    
    @objc fileprivate func followItemClick() {
        
        print("---------")
        
    }
    
}

















