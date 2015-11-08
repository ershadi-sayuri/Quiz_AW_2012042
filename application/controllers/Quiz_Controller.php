<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Question_Controller
 *
 * @author Ushan
 */
class Quiz_Controller extends CI_Controller{
    
    public function  searchQuetionFromCategory(){
        $this->load->model('quiz_model');
        $quitions = $this->quiz_model->getQuestions('Sport');
        $this->load->view('welcome_message');
    }
    
    public function getScore(){
        
    }
    
}
