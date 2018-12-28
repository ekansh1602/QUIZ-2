//
//  ViewController.swift
//  QUIZZER
//
//  Created by Ekansh Anand Srivastava on 05/10/18.
//  Copyright © 2018 Avi Srivastava. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        questions()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var progress: UILabel!
    
    var correct: Bool = true
    var points:Int = 0
    var progressbvalue:Int = 1
    var player : AVAudioPlayer?
    
    @IBAction func button1(_ sender: Any) {
        if correct == true{
            points+=1
            score.text = String(points)
        }
        else{
            points-=1
            score.text = String(points)
        }
        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            self.player = sound
            sound.numberOfLoops = 0
            sound.prepareToPlay()
            sound.play()
        } catch {
            print("error loading file")
            // couldn't load file :(
        }
        next()
    }
    
    @IBAction func button2(_ sender: Any) {
        if correct == false{
            points+=1
            score.text = String(points)
        }
        else{
            points-=1
            score.text = String(points)
        }
        let url = Bundle.main.url(forResource: "note2", withExtension: "wav")!
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            self.player = sound
            sound.numberOfLoops = 0
            sound.prepareToPlay()
            sound.play()
        } catch {
            print("error loading file")
            // couldn't load file :(
        }
        next()
    }
    
    @IBAction func reset(_ sender: Any) {
        points = 0
        score.text = String(points)
    }
    
    

    
    
    func next(){
        questions()
        progressbvalue+=1
        progress.text = String(progressbvalue)
    }
    
    func questions(){
    var number = arc4random() % 4
        number+=1
        switch(number) {
        case 1:
            question.text = "IS HUMAN A MAMMEL"
            correct = true
            progress.text = String(progressbvalue)
            break
        case 2:
            question.text = "IS DOG A MAMMEL"
            correct = false
            progress.text = String(progressbvalue)
            break
        case 3:
            question.text = "IS WHALE A MAMMEL"
            correct = true
            progress.text = String(progressbvalue)
            break
        case 4:
            question.text = "IS BAT A MAMMEL"
            correct = false
            progress.text = String(progressbvalue)
            break
        default:
            break
        }
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
