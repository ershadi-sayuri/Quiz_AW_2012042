<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of answer
 *
 * @author Ushan
 */
class answer_model extends CI_Model{
    public function __construct() {
        $this->load->database();
    }
    
    public function getAnswer($question_id){
        $query = $this->db->get_where('answer', array('question_id' => $question_id),0, 0);
        return $query->result_array();
    }
    
}
