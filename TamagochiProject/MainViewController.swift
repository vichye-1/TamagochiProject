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
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.lightGray.cgColor
        label.layer.cornerRadius = 4
        label.text = "방실방실 다마고치"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 15)
        label.textAlignment = .center
        return label
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
        view.addSubview(nameLabel)
    }
    
    private func configureLayout() {
        bubbleImageView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(70)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(50)
            make.height.equalTo(150)
        }
        
        speechLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(bubbleImageView).inset(16)
            make.verticalEdges.equalTo(bubbleImageView).inset(32)
        }
        
        characterImageView.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(90)
            make.top.equalTo(bubbleImageView.snp.bottom)
            make.height.equalTo(characterImageView.snp.width)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(characterImageView.snp.bottom).offset(8)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(120)
            make.height.equalTo(34)
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

