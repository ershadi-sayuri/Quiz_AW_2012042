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
        $query = $this->db->query("SELECT * FROM question WHERE category_id="
                . "(SELECT categoryid FROM category WHERE category_name='$category')");
        foreach ($query->result_array() as $row) {
            echo $row['questionname']."<br>";
            echo $row['answer1']."<br>";
            echo $row['answer2']."<br>";
            echo $row['answer3']."<br>";
            echo $row['answer4']."<br>";
            echo $row['correctanswer']."<br>";
        }
    }

    public function calculateScore() {
        
    }

}
