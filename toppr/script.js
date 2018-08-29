var QWERTYUIOP={data:[]};
var params = {topic:'',sub_id:'',class_name:''};

QWERTYUIOP.parseTopics= function(div_id,sub_id,class_name){
//var div= document.getElementsByClassName("chapterTile_arrowContainer");
//div[0].firstElementChild.innerHTML
  var div= document.getElementsByClassName(div_id);
  for (var i = 0; i < div.length; i++) {
   	   QWERTYUIOP.data.push({topic:div[i].firstElementChild.innerHTML,sub_id:sub_id,class_name:class_name});
   } 

}
QWERTYUIOP.feedTopics = function(div_id,sub_id,class_name){
   QWERTYUIOP.parseTopics(div_id,sub_id,class_name);
   QWERTYUIOP.callAjax(QWERTYUIOP.data,QWERTYUIOP.data.length-1);	
}

QWERTYUIOP.callAjax = function(data , length){
        if (length<0) {}
        else{
            var topic = data[length].topic;
            var sub_id = data[length].sub_id;
            var class_name=data[length].class_name;
            var url,http;
            url = "https://localhost/qriyo_work/toppr/insertTopics.php?topic="+topic+"&sub_id="+sub_id+"&class_name="+class_name;
            console.log(url);
            http = new XMLHttpRequest();
            http.open("GET",url);
            http.onreadystatechange = function(){
            	if (http.status==200&&http.readyState==4) {
            		console.log(http.responseText);
            		QWERTYUIOP.callAjax(QWERTYUIOP.data,length-1);
            	}
            }  
            http.send();
        }    
}

  //run
 // for class-5 , subject = science
//QWERTYUIOP.feedTopics("chapterTile_arrowContainer",6,"CLASS-5");
