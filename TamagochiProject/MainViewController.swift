//
//  ViewController.swift
//  TamagochiProject
//
//  Created by 양승혜 on 6/12/24.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHierarchy()
        configureLayout()
        configureUI()
        
    }
    
    private func configureHierarchy() {
        print(#function)
        
    }
    
    private func configureLayout() {
        print(#function)
        
    }
    
    private func configureUI() {
        print(#function)
        view.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItem?.tintColor = .darkGray
        self.navigationItem.title = "대장님의 다마고치"
        
    }
    

}

