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
    
    private let speechLabel: UILabel = {
        let label = UILabel()
        label.text = "눈이 빠질 것 같아요...😇"
        label.textColor = .darkGray
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    private let characterImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "1-1")
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
        view.addSubview(speechLabel)
        view.addSubview(characterImageView)
    }
    
    private func configureLayout() {
        bubbleImageView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(70)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(50)
            make.height.equalTo(170)
        }
        
        characterImageView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(90)
            make.top.equalTo(bubbleImageView.snp.bottom)
            make.height.equalTo(characterImageView.snp.width)
        }
        
        speechLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(bubbleImageView).inset(16)
            make.verticalEdges.equalTo(bubbleImageView).inset(32)
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

