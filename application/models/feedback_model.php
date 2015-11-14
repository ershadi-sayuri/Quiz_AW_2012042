<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of feedback
 *
 * @author Ushan
 */
class feedback_model extends CI_Model {
 
    public function  calculateScore($questions,$answers){
        $score  =0;
        for($i=0;$i<count($questions);$i++){
            if($questions[$i]["correctanswer"] == $answers[$i]){
                $score = $score+10;
            }
        }
        return $score;
    }
    
}
