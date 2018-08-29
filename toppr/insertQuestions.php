<?php
require_once("mysql.php"); 

function clean($string) {
   $string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.

   return preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.
}

function fetchData($url,$count=1)
{  
 // $url = "https://www.toppr.com/api/v5.0/class-5/practice/evs/super-senses/question-bank/?format=json&page=1&goal=0";
  $ch = curl_init(); 
  $main_url = "https://www.toppr.com/api/v5.0/".$url["cls_name"]."/practice/".$url["sub_name"]."/".$url["tps_name"]."/question-bank/?format=json&page=".$count."&goal=0";
  echo "URL=".$main_url;
  curl_setopt($ch,CURLOPT_URL,$main_url);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  $tmpfname = dirname(__FILE__).'/cookie.txt';
  curl_setopt($ch, CURLOPT_COOKIEFILE, $tmpfname);
  $out = json_decode(curl_exec($ch));  
  $total_q = $out->data->n_questions;
  $total_pages = $total_q / 10;
  if ($total_pages>$count) {
          
         //save questions in database
         savePlease($out,$url["tps_id"]); 
         sleep(1);
         //call it again 
         fetchData($url,2);
  }
  else{
         echo "";
  }
  //return $out->data->n_questions;
}


function savePlease($data,$topic_id){
    $sqlStr='';
    $sql1 = "INSERT INTO questions (q_id, tps_id , q_text) values "; 
    $sql2 = "INSERT INTO options (`opt_id`, `q_id`, `opt_text`, `opt_is_answer`) values";
    $valuesArr = array();
    for($i=0;$i<count($data->data->questions);$i++){ 
        $question_id = mysql_real_escape_string($data->data->questions[$i]->question_id);
        $question    = mysql_real_escape_string( $data->data->questions[$i]->question );
        $valuesArr[] = "('$question_id' , '$topic_id', '$question   ')";

        $opt_id      =  $data->data->questions[$i]->choices[0]->choice_id;  
        $q_id        =  $question_id;
        $opt_text    =  $data->data->questions[$i]->choices[0]->choice;
        $is_right    =  $data->data->questions[$i]->choices[0]->is_right; 
        $valuesArr2[] = "('$opt_id' , '$q_id', '$opt_text', '$is_right')";
    }

        $sql1 .= implode(',', $valuesArr);
        $sql2 .= implode('.', $valuesArr2);
         // echo $sql1;
          echo $sql2;
}


//test
//var_dump(fetchData("https://www.toppr.com/api/v5.0/class-5/practice/evs/super-senses/question-bank/?format=json&page=1&goal=0"));
//var_dump(scrapdetails());

function getUrlComponents($className){

    $arr = array();
    $sql = "SELECT class.cls_id,class.cls_name,subjects.sub_id,subjects.sub_name ,topics.tps_id,topics.tps_name FROM class , subjects ,topics where class.cls_name='".$className."' AND class.sub_id = subjects.sub_id and topics.cls_id = class.cls_id";
    $res = mysqli_query($GLOBALS['mysql'],$sql);
    while ($data = mysqli_fetch_assoc($res)) {
          array_push($arr ,array('cls_id' => $data["cls_id"],'cls_name'=>strtolower($data["cls_name"]),'sub_id'=>$data["sub_id"],'sub_name'=>strtolower($data["sub_name"]),'tps_id'=>$data["tps_id"],'tps_name'=>strtolower(clean($data["tps_name"]))));
    }
    return $arr;

}
 
function init(){
    $url_comps = getUrlComponents('CLASS-5'); 
     for ($i=0; $i < count($url_comps) ; $i++) { 
          fetchData($url_comps[$i],1);
          sleep(1);
     }
} 

//test
init();
