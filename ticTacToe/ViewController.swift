//
//  ViewController.swift
//  ticTacToe
//
//  Created by Grace Liu on 1/11/17.
//  Copyright © 2017 Grace Shieh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var winnerLabel: UILabel!
    

    var playerTurn = 1
    var rounds = 0
    var reds: [String: Int] = [
        "row1": 0,
        "row2": 0,
        "row3": 0,
        "row4": 0,
        "row5": 0,
        "row6": 0,
        "row7": 0,
        "row8": 0
    ]
    var blues: [String: Int] = [
        "row1": 0,
        "row2": 0,
        "row3": 0,
        "row4": 0,
        "row5": 0,
        "row6": 0,
        "row7": 0,
        "row8": 0
    ]
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        for x in 0...buttons.count-1 {
            buttons[x].backgroundColor = UIColor.lightGray
            buttons[x].isEnabled = true
        }
        reds["row1"] = 0
        reds["row2"] = 0
        reds["row3"] = 0
        reds["row4"] = 0
        reds["row5"] = 0
        reds["row6"] = 0
        reds["row7"] = 0
        reds["row8"] = 0
        reds["row9"] = 0
        blues["row1"] = 0
        blues["row2"] = 0
        blues["row3"] = 0
        blues["row4"] = 0
        blues["row5"] = 0
        blues["row6"] = 0
        blues["row7"] = 0
        blues["row8"] = 0
        blues["row9"] = 0
        winnerLabel.isHidden = true
        rounds = 0
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        if playerTurn == 1 {
            sender.backgroundColor = UIColor.red
            sender.isEnabled = false
            playerTurn = 2
            checkWin(player: "reds", button: sender)
        }
        else{
            sender.backgroundColor = UIColor.blue
            sender.isEnabled = false
            checkWin(player: "blues", button: sender)
            playerTurn = 1
        }
        rounds += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winnerLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func draw(){
        winnerLabel.text = "We have a draw"
        winnerLabel.isHidden = false
    }
    
    func checkWin(player: String, button: UIButton) {
        if player == "reds" {
            if button.tag == 1 {
                reds["row1"]! += 1
                if reds["row1"] == 3 {
                    win(winner: player)
                }
                reds["row4"]! += 1
                if reds["row4"] == 3 {
                    win(winner: player)
                }
                reds["row7"]! += 1
                if reds["row7"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 2{
                reds["row1"]! += 1
                if reds["row1"] == 3 {
                    win(winner: player)
                }
                reds["row5"]! += 1
                if reds["row5"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 3 {
                reds["row1"]! += 1
                if reds["row1"] == 3 {
                    win(winner: player)
                }
                reds["row6"]! += 1
                if reds["row6"] == 3 {
                    win(winner: player)
                }
                reds["row8"]! += 1
                if reds["row8"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 4 {
                reds["row2"]! += 1
                if reds["row2"] == 3 {
                    win(winner: player)
                }
                reds["row4"]! += 1
                if reds["row4"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 5 {
                reds["row2"]! += 1
                if reds["row2"] == 3 {
                    win(winner: player)
                }
                reds["row5"]! += 1
                if reds["row5"] == 3 {
                    win(winner: player)
                }
                reds["row7"]! += 1
                if reds["row7"] == 3 {
                    win(winner: player)
                }
                reds["row8"]! += 1
                if reds["row8"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 6 {
                reds["row2"]! += 1
                if reds["row2"] == 3 {
                    win(winner: player)
                }
                reds["row6"]! += 1
                if reds["row6"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 7 {
                reds["row3"]! += 1
                if reds["row3"] == 3 {
                    win(winner: player)
                }
                reds["row4"]! += 1
                if reds["row4"] == 3 {
                    win(winner: player)
                }
                reds["row8"]! += 1
                if reds["row8"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 8 {
                reds["row3"]! += 1
                if reds["row3"] == 3 {
                    win(winner: player)
                }
                reds["row5"]! += 1
                if reds["row5"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 9 {
                reds["row3"]! += 1
                if reds["row3"] == 3 {
                    win(winner: player)
                }
                reds["row6"]! += 1
                if reds["row6"] == 3 {
                    win(winner: player)
                }
                reds["row7"]! += 1
                if reds["row7"] == 3 {
                    win(winner: player)
                }
            }
            if rounds == 9 {
                draw()
            }
        }
        if player == "blues" {
            if button.tag == 1 {
                blues["row1"]! += 1
                if blues["row1"] == 3 {
                    win(winner: player)
                }
                blues["row4"]! += 1
                if blues["row4"] == 3 {
                    win(winner: player)
                }
                blues["row7"]! += 1
                if blues["row7"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 2{
                blues["row1"]! += 1
                if blues["row1"] == 3 {
                    win(winner: player)
                }
                blues["row5"]! += 1
                if blues["row5"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 3 {
                blues["row1"]! += 1
                if blues["row1"] == 3 {
                    win(winner: player)
                }
                blues["row6"]! += 1
                if blues["row6"] == 3 {
                    win(winner: player)
                }
                blues["row8"]! += 1
                if blues["row8"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 4 {
                blues["row2"]! += 1
                if blues["row2"] == 3 {
                    win(winner: player)
                }
                blues["row4"]! += 1
                if blues["row4"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 5 {
                blues["row2"]! += 1
                if blues["row2"] == 3 {
                    win(winner: player)
                }
                blues["row5"]! += 1
                if blues["row5"] == 3 {
                    win(winner: player)
                }
                blues["row7"]! += 1
                if blues["row7"] == 3 {
                    win(winner: player)
                }
                blues["row8"]! += 1
                if blues["row8"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 6 {
                blues["row2"]! += 1
                if blues["row2"] == 3 {
                    win(winner: player)
                }
                blues["row6"]! += 1
                if blues["row6"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 7 {
                blues["row3"]! += 1
                if reds["row3"] == 3 {
                    win(winner: player)
                }
                blues["row4"]! += 1
                if reds["row4"] == 3 {
                    win(winner: player)
                }
                blues["row8"]! += 1
                if reds["row8"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 8 {
                blues["row3"]! += 1
                if reds["row3"] == 3 {
                    win(winner: player)
                }
                blues["row5"]! += 1
                if reds["row5"] == 3 {
                    win(winner: player)
                }
            }
            if button.tag == 9 {
                blues["row3"]! += 1
                if blues["row3"] == 3 {
                    win(winner: player)
                }
                blues["row6"]! += 1
                if blues["row6"] == 3 {
                    win(winner: player)
                }
                blues["row7"]! += 1
                if blues["row7"] == 3 {
                    win(winner: player)
                }
            }
            if rounds == 9 {
                draw()
            }
        }

        
    }
    
    func win(winner: String){
        if winner == "reds" {
            winnerLabel.text = "Red has won!"
            winnerLabel.isHidden = false
        }
        if winner == "blues" {
            winnerLabel.text = "Blue has won!"
            winnerLabel.isHidden = false
        }
        for x in 0...buttons.count-1 {
            buttons[x].isEnabled = false
        }
        
    }

}

