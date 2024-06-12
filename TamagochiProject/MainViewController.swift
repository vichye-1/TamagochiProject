//
//  ViewController.swift
//  TamagochiProject
//
//  Created by 양승혜 on 6/12/24.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    private let bubbleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "bubble")
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHierarchy()
        configureLayout()
        configureUI()
    }
    
    private func configureHierarchy() {
        view.addSubview(bubbleImageView)
        
    }
    
    private func configureLayout() {
        bubbleImageView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(70)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(50)
            make.height.equalTo(170)
        }
        
    }
    
    private func configureUI() {
        print(#function)
        view.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItem?.tintColor = .darkGray
        self.navigationItem.title = "대장님의 다마고치"
        
    }
    

}

