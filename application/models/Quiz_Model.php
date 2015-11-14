<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Quiz_Model
 *
 * @author 
 */
class Quiz_Model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function getQuestions($category) {
        $query = $this->db->query("SELECT question_id,correctanswer FROM question WHERE category_id= "
        ."(SELECT categoryid FROM category WHERE category_name='$category')" 
        ."ORDER BY RAND() LIMIT 10");
        $array =  array_values($query->result_array());
        echo $array[0]["question_id"];
        return $array;
    }
    
    public function getQuestion($question_id){
        $query = $this->db->query("SELECT questionname "
                . " FROM question WHERE question_id='$question_id'");
        return $query->result_array();
    }
   
}
