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
class Quiz_Controller extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
    }

    public function index()
    {
        $data = array();
        $data["question"] = NULL;
        $this->load->view('question_view', $data);
    }

    public function getQuestionFromCategory()
    {
        $category = $this->input->post("category_name");
        $this->load->model('quiz_model');
        $questions = $this->quiz_model->getQuestions($category);
        $this->session->set_userdata('questions', $questions);
        $this->session->set_userdata('question_count', 0);
        $this->getNextQuestions(true);
    }

    public function getNextQuestions($isFirstQuestion = FALSE)
    {
        //inizializing models
        $this->load->model('quiz_model');
        $this->load->model('answer_model');
        $this->load->model('feedback_model');
        $data = array();
        if ($isFirstQuestion) {
            $data["question"] = $this->buildQuestionData(0);
            $this->load->view('question_view', $data);
        } else {
            $count = $this->session->userdata('question_count');
            $answer = $this->input->post("answer");
            if ($answer != NULL) {
                if ($count == 0) {
                    //intializing answer array
                    $answers = array();
                } else {
                    $answers = $this->session->userdata('answers');
                }
                $answers[$count] = $answer;
                $this->session->set_userdata('answers', $answers);
                if ($count == 9) {
                    //end of the 10 question
                    $questions = $this->session->userdata('questions');
                    $answers = $this->session->userdata("answers");
                    $score = $this->feedback_model->calculateScore($questions, $answers);
                    $this->clearSession();
                    $data["score"] = $score;
                    $this->load->view('question_view', $data);
                } else {
                    //itterate  question
                    $count = $count + 1;
                    $this->session->set_userdata('question_count', $count);
                    $questions = $this->session->userdata('questions');
                    $data["question"] = $this->buildQuestionData($count);
                    $this->load->view('question_view', $data);
                }
            } else {
                //if user didnt input any answer
                $data["question"] = $this->buildQuestionData($count);
                $data["error"] = true;
                $this->load->view('question_view', $data);
            }
        }
    }

    private function buildQuestionData($index)
    {
        $this->load->model('quiz_model');
        $this->load->model('answer_model');
        $questions = $this->session->userdata('questions');
        $question = $this->quiz_model->getQuestion($questions[$index]["question_id"]);
        $question_answers = $this->answer_model->getAnswer($questions[$index]["question_id"]);
        $question[0]["answers"] = $question_answers;
        return $question;
    }

    private function clearSession()
    {
        $this->session->unset_userdata("questions");
        $this->session->unset_userdata("question_count");
        $this->session->unset_userdata("answers");
    }

}
