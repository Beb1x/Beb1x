  
$( document ).ready(function() {
  $( "#btn" ).click(function() {
    $("#textarea_response").val("");
        var arrayOfLines = $('#textareaid').val().split('\n');
        var  htmlString  = ""
        var current_text = ""
      for(var index=0;index<arrayOfLines.length;index++){
        $.ajax({
            dataType: "json",
            url: arrayOfLines[index],
            async: false, 
            success: function(data) {
                htmlString = " Error code = \"" + data.result[1] + "\"; Device answer = \"" + data.result[0]+"\";" +"\n";
                current_text = $("#textarea_response").val();
                $("#textarea_response").val(current_text+htmlString);
            }
        });
      }
    });
  $( "#btn-two" ).click(function() {
    $("#textareaid").val("");
    $("#textarea_response").val("");
    var arrayTwo = $('#textarea_human').val().split('\n');
    var arrayOfLinesTwo = [];
    var counter = 0;
    for(var pindex=0;pindex<arrayTwo.length;pindex++){
      arrayTwo[pindex] =  arrayTwo[pindex].replace(/ /g,'')
       arrayTwo[pindex] = arrayTwo[pindex].replace(/\t/g,'')

      if(arrayTwo[pindex]!= ""){
        arrayOfLinesTwo[counter] = arrayTwo[pindex]
        counter =counter+1;
      }
    }
    var arrayLength = arrayOfLinesTwo.length
    var current_textTwo = ""
    var firstComma = ""
    var ipaddres = ""
    var port = ""
    var number = ""
    var  htmlStringTwo = ""
    var sliceString = ""
    var newString  = ""
    for(var jindex=0;jindex<arrayLength;jindex++){
      current_textTwo = $("#textareaid").val();
      firstComma = arrayOfLinesTwo[jindex].indexOf(",");
      ipaddres = $('#idaddres').val();
      port = $('#port').val();
      if(firstComma === -1){
        number = arrayOfLinesTwo[jindex]
        htmlStringTwo = "http://"+ipaddres+":"+port+"/datasnap/rest/TSM/execute_Command/"+number+"\n";
      }else{
        number =  arrayOfLinesTwo[jindex].slice(0, firstComma);
        sliceString =  arrayOfLinesTwo[jindex].slice(firstComma+1 , arrayOfLinesTwo[jindex].length);
        newString = sliceString.replace(/\%/g, "%25");
        newString = newString.replace(/\#/g, "%23");
        newString = newString.replace(/\"/g, "%22");
        newString = newString.replace(/\\t/g, "%09");
        newString = newString.replace(/\\n/g, "%0A");
        newString = newString.replace(/\\r/g, "%0D");
        newString = newString.replace(/\//g, "%2F");
        htmlStringTwo = "http://"+ipaddres+":"+port+"/datasnap/rest/TSM/execute_Command/"+number+"/" +newString +"\n";
      }
      $("#textareaid").val(current_textTwo+htmlStringTwo);
    }
  });
});