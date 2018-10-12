//
//  ViewController.swift
//  TicTacToe
//
//  Created by Jessie Dong on 10/10/18.
//  Copyright © 2018 Jessie Dong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var game_stat: UILabel!
    @IBOutlet weak var ChessBoard: UIImageView!
    @IBOutlet weak var im1: UIImageView!
    @IBOutlet weak var im2: UIImageView!
    @IBOutlet weak var im3: UIImageView!
    @IBOutlet weak var im4: UIImageView!
    @IBOutlet weak var im5: UIImageView!
    @IBOutlet weak var im6: UIImageView!
    @IBOutlet weak var im7: UIImageView!
    @IBOutlet weak var im8: UIImageView!
    @IBOutlet weak var im9: UIImageView!
    
    @IBOutlet weak var oScore: UILabel!
    @IBOutlet weak var xScore: UILabel!
    
    var xTurn = true //default x goes first
    var buttons = Array(repeating:"", count:9) //keep list of clicked
    
    //initiate the scores
    var scoreX = 0
    var scoreY = 0
    
    var cl = "" //current letter
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ChessBoard.image = UIImage(named: "Board")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func ButtonWork(_ sender: UIButton) {
        var clicked = 0
        let sent = sender.currentTitle
        if(sent != nil){
            clicked = Int(sender.currentTitle!.suffix(1))!
        }else{
            clicked = 1
        }
        
        if(xTurn){
            cl = "X"
        }else{
            cl = "O"
        }
        
        xScore.text = cl + " \(clicked)"
        
        if(buttons[clicked-1] == ""){
            if(clicked == 1){
                self.im1.image = UIImage(named:cl)
            }else if(clicked == 2){
                self.im2.image = UIImage(named:cl)
            }else if(clicked == 3){
                self.im3.image = UIImage(named:cl)
            }else if(clicked == 4){
                self.im4.image = UIImage(named:cl)
            }else if(clicked == 5){
                self.im5.image = UIImage(named:cl)
            }else if(clicked == 6){
                self.im6.image = UIImage(named:cl)
            }else if(clicked == 7){
                self.im7.image = UIImage(named:cl)
            }else if(clicked == 8){
                self.im8.image = UIImage(named:cl)
            }else{
                self.im9.image = UIImage(named:cl)
            }
        buttons[clicked-1] = cl
        }
        
        //check winning condition
        
        
        //switch player
        xTurn = !xTurn
        if(xTurn){
            game_stat.text = "X's turn"
        }else{
            game_stat.text = "O's turn"
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        xTurn = true //default x goes first
        buttons = Array(repeating:"", count:9) //keep list of clicked
        
        //initiate the scores
        scoreX = 0
        scoreY = 0
        self.im1.image = nil
        self.im2.image = nil
        self.im3.image = nil
        self.im4.image = nil
        self.im5.image = nil
        self.im6.image = nil
        self.im7.image = nil
        self.im8.image = nil
        self.im9.image = nil
    }
    
    
}
