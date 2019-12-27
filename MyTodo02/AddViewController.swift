//
//  AddViewController.swift
//  MyTodo02
//
//  Created by higuchiryunosuke on 2019/12/26.
//  Copyright © 2019年 higuchiryunosuke. All rights reserved.
//

import UIKit

var TodoKobetsunakami = [String]()

class AddViewController: UIViewController {
    
    @IBOutlet weak var TodoTextField: UITextField!
    
    @IBAction func TodoAddButton(_ sender: Any) {
        //変数に入力内容を入れる
        TodoKobetsunakami.append(TodoTextField.text!)
        //追加ボタンを押したらフィールドを空にする
        TodoTextField.text = ""
        //変数の中身をUDに追加
        //UserDefaultとはDBを作るほどじゃないけどDBを使いたい時に使うもの
        UserDefaults.standard.set( TodoKobetsunakami, forKey: "TodoList" )
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func closeModal(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
