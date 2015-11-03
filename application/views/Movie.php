<?php
/**
 * Created by IntelliJ IDEA.
 * User: Ushan
 * Date: 10/15/2015
 * Time: 10:53 AM
 */
class Movie{
    var $title;
    var $rating;
    var $gerne;
    var $starting_date;
    var $ending_date;

    function __construct($in_title,$in_rating,$in_gerne,$in_starting_date,$in_ending_date) {
        $this->title = $in_title;
        $this->rating = $in_rating;
        $this->gerne = $in_gerne;
        $this->starting_date = $in_starting_date;
        $this->ending_date = $in_ending_date;

    }

    function setTitle($in_title) {
        $this->title = $in_title;
    }

    function getTitle() {
        return $this->title;
    }

    function setRating($in_rating) {
        $this->rating = $in_rating;
    }

    function getRating() {
        return $this->rating;
    }

    function setGerne($in_gerne) {
        $this->gerne = $in_gerne;
    }

    function getGerne() {
        return $this->gerne;
    }

    function setStartingDate($in_starting_date) {
        $this->starting_date = $in_starting_date;
    }

    function getStartingDate() {
        return $this->starting_date;
    }

    function setEndingDate($in_ending_date) {
        $this->ending_date = $in_ending_date;
    }

    function getEndingDate() {
        return $this->ending_date;
    }
}