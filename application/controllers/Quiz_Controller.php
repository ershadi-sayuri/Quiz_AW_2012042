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
    
    public function  index(){
        $data = array();
        $data["question"] = NULL;        
        $this->load->view('question_view',$data);
    }
    
    public function getQuestionFromCategory(){
        $go_btn  = $this->input->post("go_btn");
        $category = $this->input->post("category_name");
        $this->load->model('quiz_model');
        $this->getNextQuestions($category);
    }
    
    public function getNextQuestions($category = NULL){
        $next_btn = $this->input->post("next_btn");
        $this->load->library('session');
        $this->load->model('Quiz_Model');
         $data = array();
        if (!$this->session->userdata('questions')) {
            $questions = $this->Quiz_Model->getQuestions($category);
            $this->session->set_userdata('questions',$questions);
            $this->session->set_userdata('question_count',0);
            $question = $this->Quiz_Model->getQuestion($questions[0]["question_id"]);
            echo $question[0]["questionname"] ;
            $data["question"]=$question;
            $this->load->view('question_view',$data);
        } else {
            $count = $this->session->userdata('question_count');
            echo $count;
            if($count == 9){
                echo "done";
            }else{
                $count = $count+1;
                $this->session->set_userdata('question_count',$count);
                $questions = $this->session->userdata('questions');
                $question = $this->Quiz_Model->getQuestion($questions[$count]["question_id"]);
                $data["question"]=$question;
                $this->load->view('question_view',$data);
            }
        }
        
        
    } 

    public function getScore(){
        
    }
    
}
