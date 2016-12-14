
		try 
		{			
			document.execCommand("BackgroundImageCache", false, true);
		}
		catch(err) 
		{}


         <link rel="icon" href="/images/favicon.ico" type="image/x-icon" />
        <link rel="SHORTCUT ICON" href="/images/favicon.ico" type="image/x-icon" />
        <title>Welcome to Online Statistics Portal</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">   
     /* alert(#session.authz); */
     
$(document).ready(function(){
	$(".pageLoadContainer").hide();
});
     
     function ltrim(stringToTrim) 
     {
		return stringToTrim.replace(/(?:(?:^|\n)\s+|\s+(?:$|\n))/g,"").replace(/\s+/g," ");
	}
	function rtrim(stringToTrim) {
	return stringToTrim.replace(/(?:(?:^|\n)\s+|\s+(?:$|\n))/g,"").replace(/\s+/g," ");
}
     function renderTitle(){
     	element=document.getElementById("brdcrm");
     	var titleText="";
     	if(element!=null){
			  var ihtml=element.innerHTML;
		  	  var startTag=0;
		  	  var  endTag=0;
		  	  var spaceCheck="";
    	       for(i=0;i<ihtml.length;i++)
  				{

		    		if(ihtml.charAt(i) == "<" || ihtml.charAt(i) == "&"){
						startTag=1;
						endTag=0;
					}
					
					if(startTag==1){
						spaceCheck=spaceCheck+ihtml.charAt(i);
					}
					
					if(ihtml.charAt(i) == ">" || ihtml.charAt(i) == ";"){
						endTag=1;
						startTag=0;
						if(spaceCheck=="&nbsp;"){
							titleText="";
							spaceCheck="";
						}
						if(ihtml.charAt(i)==">"){
							spaceCheck="";
						}
					}
			
					if(endTag==1){
						if(ihtml.charAt(i) != "<" && ihtml.charAt(i) != "&"){
							if(ihtml.charAt(i) != ">" && ihtml.charAt(i) != ";"){
								titleText=titleText+ihtml.charAt(i);
								spaceCheck="";
							}
						}
					}
					
					
			
					
   			}
  		}
		
		//titleText=titleText.substring(titleText.indexOf(" "),titleText.length);
		titleText=ltrim(titleText);
		titleText=rtrim(titleText);
		
		if(titleText== "")
			{
	        document.title="Online Statistics Portal "+titleText;
			}
		else
		{
			document.title="Online Statistics Portal "+"->"+titleText;
		}
	     

     }
    

function toggle(node) {
	var nextDIV = node.nextSibling;
	while(nextDIV.nodeName != "DIV") {
		nextDIV = nextDIV.nextSibling;
	}
	if (nextDIV.style.display == 'none') {
		if (node.childNodes.length > 0) {
			if (node.childNodes.item(0).nodeName == "IMG") {
				node.childNodes.item(0).src = getImgDirectory(node.childNodes.item(0).src) + "open.gif";
			}
		}
		nextDIV.style.display = 'block';
	}
	else {
		if (node.childNodes.length > 0) {
			if (node.childNodes.item(0).nodeName == "IMG") {
  				node.childNodes.item(0).src = getImgDirectory(node.childNodes.item(0).src) + "close.gif";
			}
		}
		nextDIV.style.display = 'none';
	}
}

function getImgDirectory(source) {
    return source.substring(0, source.lastIndexOf('/') + 1);
}
</sc
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });

      $('#table-swap-axis').basictable({
        swapAxis: true
      });

      $('#table-force-off').basictable({
        forceResponsive: false
      });

      $('#table-no-resize').basictable({
        noResize: true
      });

      $('#table-two-axis').basictable();

      $('#table-max-height').basictable({
        tableWrapper: true
      });
    });


$(function () {
	$('a[rel=tooltip]').tooltip({
		  'selector': '',
		  'placement': 'left'
		});   
  })
function submitForm(){
	var formEL= document.getElementById("webmartForm");	
	formEL.submit();
 
}
function generateProfileUrl(pubcode){
	loaderDiv = document.getElementById("loaderDivId");
	loaderDiv.style.display = "block";
	var url="/"+pubcode+"/updateYourAccount";
	/* document.forms['form1'].action=url;
	document.forms['form1'].method="post";
	document.forms['form1'].submit(); */
	//return url;

var formData = new FormData(document.getElementsByName('form1')[0]);// yourForm: form selector   
$.ajax({
    type: "POST",
    url: url,
    data: formData,
    processData: false,
    contentType: false,
    error: function(jqXHR, textStatus, errorMessage) {
       console.log(errorMessage); // Optional
    },
    success: function(data) {
    	document.getElementById('profileModel').innerHTML = data;
    	loaderDiv.style.display = "none";
    	 $('#myModalProfile').modal('show');
	} 
});
}
function useraction(url)
{	loaderDiv = document.getElementById("loaderDivId");
	loaderDiv.style.display = "block";
	
	//alert(url);
		  var ajaxRequest; 
	   try{
	     // Opera 8.0+, Firefox, Safari
	     ajaxRequest = new XMLHttpRequest();
	   }catch (e){
	     // Internet Explorer Browsers
	     try{
	        ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
	     }catch (e) {
	        try{
	           ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
	        }catch (e){
	           // Something went wrong
	           alert("Your browser broke!");
	           return false;
	        }}
	     }
	   if(ajaxRequest)
	   {
	    ajaxRequest.open("GET",url,true);
	    ajaxRequest.send(null);
	    ajaxRequest.onreadystatechange = function()
	    {
	    if(ajaxRequest.readyState==4 && ajaxRequest.status==200){
	    	//alert(ajaxRequest.responseText);
	    	document.getElementById('profileModel').innerHTML = ajaxRequest.responseText;
	    	loaderDiv.style.display = "none";
	    	 $('#myModalProfile').modal('show');
	    }
	    }
	   }
	   else{
	    alert("Your browser don't support AJax !");
	   }
}


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

