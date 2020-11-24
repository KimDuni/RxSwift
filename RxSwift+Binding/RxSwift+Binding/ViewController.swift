//
//  ViewController.swift
//  RxSwift+Binding
//
//  Created by 성준 on 2020/11/24.
//

import UIKit
import RxSwift
import RxCocoa


class ViewController: UIViewController {
    
    @IBOutlet weak var valueLabel:UILabel!
    @IBOutlet weak var valueTextField:UITextField!

    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        valueTextField.rx.text
//
//            .subscribe(onNext: { [weak self] str in
//                self?.valueLabel.text = str
//            })
//            .disposed(by: disposeBag)
            
        valueTextField.rx.text
            .bind(to: valueLabel.rx.text) // <얘 뭐야 ? 
            .disposed(by: disposeBag)
        
    }
}

