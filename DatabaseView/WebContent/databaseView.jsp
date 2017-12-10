<html>
<head>
<script>
function showUser(str) {
    if (str == "") {
        document.getElementById("txtHint").innerHTML = "";
        return;
     } else { 
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
         }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("txtHint").innerHTML = this.responseText;
             }
        };
        xmlhttp.open("GET","Database.java?q="+str,true);
        xmlhttp.send();
    }
}
</script>
</head>
<body>
<div>
<form action="Database">

<select name="users" onchange="showUser(this.value)">
  <option value="">Select a person:</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  </select>  
</form>
</div>
<div>
<form action="Database">
Name:<input type="text" value="name" name="name"> <br>
Surname:<input type="text" value="surname" name="surname"> <br>
Sex    :<input type="text" value="sex"  name="sex" >
</form>
</div>
<br>
<div id="txtHint"><b>Database info will be listed here...</b></div>

</body>
</html>