!function(t){t.fn.extend({monthly:function(e){function a(t,e){return 2===t?3&e||!(e%25)&&15&e?28:29:30+(t+(t>>3)&1)}function n(n,d){t("#"+l).data("setMonth",n).data("setYear",d);var i=a(n,d),s=n-1,y=new Date(d,s,1,0,0,0,0).getDay();if(t("#"+l+" .monthly-day, #"+l+" .monthly-day-blank").remove(),t("#"+l+" .monthly-event-list").empty(),"event"==e.mode)for(var c=0;c<i;c++){var p=c+1,u=new Date(d,s,p,0,0,0,0).getDay();t("#"+l+" .monthly-day-wrap").append('<a href="#" class="m-d monthly-day monthly-day-event" data-number="'+p+'"><div class="monthly-day-number">'+p+'</div><div class="monthly-indicator-wrap"></div></a>'),t("#"+l+" .monthly-event-list").append('<div class="monthly-list-item" id="'+l+"day"+p+'" data-number="'+p+'"><div class="monthly-event-list-date">'+h[u]+"<br>"+p+"</div></div>")}else for(var c=0;c<i;c++){var p=c+1;(p<v&&n===o||d<r||n<o&&d==r)&&1==e.stylePast?t("#"+l+" .monthly-day-wrap").append('<a href="#" class="m-d monthly-day monthly-day-pick monthly-past-day" data-number="'+p+'"><div class="monthly-day-number">'+p+'</div><div class="monthly-indicator-wrap"></div></a>'):t("#"+l+" .monthly-day-wrap").append('<a href="#" class="m-d monthly-day monthly-day-pick" data-number="'+p+'"><div class="monthly-day-number">'+p+'</div><div class="monthly-indicator-wrap"></div></a>')}var f=t("#"+l).data("setMonth"),b=t("#"+l).data("setYear");if(f==o&&b==r&&t("#"+l+' *[data-number="'+v+'"]').addClass("monthly-today"),f==o&&b==r?t("#"+l+" .monthly-header-title").html(m[n-1]+" "+d):t("#"+l+" .monthly-header-title").html(m[n-1]+" "+d+'<a href="#" class="monthly-reset" title="Back To This Month"></a> '),"Sun"==e.weekStart&&7!=y)for(var c=0;c<y;c++)t("#"+l+" .monthly-day-wrap").prepend('<div class="m-d monthly-day-blank"><div class="monthly-day-number"></div></div>');else if("Mon"==e.weekStart&&0==y)for(var c=0;c<6;c++)t("#"+l+" .monthly-day-wrap").prepend('<div class="m-d monthly-day-blank" ><div class="monthly-day-number"></div></div>');else if("Mon"==e.weekStart&&1!=y)for(var c=0;c<y-1;c++)t("#"+l+" .monthly-day-wrap").prepend('<div class="m-d monthly-day-blank" ><div class="monthly-day-number"></div></div>');var w=t("#"+l+" .monthly-day").length,k=t("#"+l+" .monthly-day-blank").length,g=w+k,S=7*Math.ceil(g/7),M=S-g;if(g%7!=0)for(var c=0;c<M;c++)t("#"+l+" .monthly-day-wrap").append('<div class="m-d monthly-day-blank"><div class="monthly-day-number"></div></div>');"event"==e.mode&&t.get(""+e.xmlUrl,function(e){t(e).find("event").each(function(){function e(){t("#"+l+' .monthly-list-item[data-number="'+I+'"]').addClass("item-has-event").append('<a href="'+c+'" class="listed-event"  data-eventid="'+w+'" style="background:'+u+'" title="'+p+'">'+p+'<div><div class="monthly-list-time-start">'+k+" "+S+'</div><div class="monthly-list-time-end">'+M+" "+x+"</div></div></a>")}var a=t(this).find("startdate").text(),n=a.split("-"),d=n[0],s=parseInt(n[1],10),o=parseInt(n[2],10),r=t(this).find("enddate").text(),v=r.split("-"),m=v[0],h=parseInt(v[1],10),y=parseInt(v[2],10),c=t(this).find("url").text(),p=t(this).find("name").text(),u=t(this).find("color").text(),w=t(this).find("id").text(),k=t(this).find("starttime").text(),g=k.split(":");if(S="AM",M=t(this).find("endtime").text(),endSplit=M.split(":"),x="AM",D="",parseInt(g[0])>=12)var k=g[0]-12+":"+g[1],S="PM";if(0==parseInt(k))var k="12:"+g[1];if(parseInt(endSplit[0])>=12)var M=endSplit[0]-12+":"+endSplit[1],x="PM";if(0==parseInt(M))var M="12:"+endSplit[1];if(c)var D='href="'+c+'"';if(r||s!=f||d!=b){if(s==f&&d==b&&h==f&&m==b)for(var I=parseInt(o);I<=parseInt(y);I++)I==parseInt(o)?t("#"+l+' *[data-number="'+I+'"] .monthly-indicator-wrap').append('<div class="monthly-event-indicator" data-eventid="'+w+'" style="background:'+u+'" title="'+p+'">'+p+"</div>"):t("#"+l+' *[data-number="'+I+'"] .monthly-indicator-wrap').append('<div class="monthly-event-indicator" data-eventid="'+w+'" style="background:'+u+'" title="'+p+'"></div>'),e();else if(h==f&&m==b&&(s<f&&d==b||d<b))for(var I=0;I<=parseInt(y);I++)1==I?t("#"+l+' *[data-number="'+I+'"] .monthly-indicator-wrap').append('<div class="monthly-event-indicator" data-eventid="'+w+'" style="background:'+u+'" title="'+p+'">'+p+"</div>"):t("#"+l+' *[data-number="'+I+'"] .monthly-indicator-wrap').append('<div class="monthly-event-indicator" data-eventid="'+w+'" style="background:'+u+'" title="'+p+'"></div>'),e();else if(s==f&&d==b&&(h>f&&m==b||m>b))for(var I=parseInt(o);I<=i;I++)I==parseInt(o)?t("#"+l+' *[data-number="'+I+'"] .monthly-indicator-wrap').append('<div class="monthly-event-indicator" data-eventid="'+w+'" style="background:'+u+'" title="'+p+'">'+p+"</div>"):t("#"+l+' *[data-number="'+I+'"] .monthly-indicator-wrap').append('<div class="monthly-event-indicator" data-eventid="'+w+'" style="background:'+u+'" title="'+p+'"></div>'),e();else if((s<f&&d==b||d<b)&&(h>f&&m==b||m>b))for(var I=0;I<=i;I++)1==I?t("#"+l+' *[data-number="'+I+'"] .monthly-indicator-wrap').append('<div class="monthly-event-indicator" data-eventid="'+w+'" style="background:'+u+'" title="'+p+'">'+p+"</div>"):t("#"+l+' *[data-number="'+I+'"] .monthly-indicator-wrap').append('<div class="monthly-event-indicator" data-eventid="'+w+'" style="background:'+u+'" title="'+p+'"></div>'),e()}else t("#"+l+' *[data-number="'+o+'"] .monthly-indicator-wrap').append('<div class="monthly-event-indicator"  data-eventid="'+w+'" style="background:'+u+'" title="'+p+'">'+p+"</div>"),t("#"+l+' .monthly-list-item[data-number="'+o+'"]').addClass("item-has-event").append('<a href="'+c+'" class="listed-event"  data-eventid="'+w+'" style="background:'+u+'" title="'+p+'">'+p+'<div><div class="monthly-list-time-start">'+k+" "+S+'</div><div class="monthly-list-time-end">'+M+" "+x+"</div></div></a>")})});for(var x=t("#"+l+" .m-d"),c=0;c<x.length;c+=7)x.slice(c,c+7).wrapAll("<div class='monthly-week'></div>")}function d(){t("#"+l+" .monthly-event-list").is(":visible")&&(t("#"+l+" .monthly-cal").remove(),t("#"+l+" .monthly-header-title").prepend('<a href="#" class="monthly-cal" title="Back To Month View"><div></div></a>'))}var i={weekStart:"Sun",mode:"",xmlUrl:"",target:"",eventList:!0,maxWidth:!1,setWidth:!1,startHidden:!1,showTrigger:"",stylePast:!1,disablePast:!1},e=t.extend(i,e),l=t(this).attr("id"),s=new Date,o=s.getMonth()+1,r=s.getFullYear(),v=s.getDate(),m=["Jan","Feb","Mar","Apr","May","June","Jul","Aug","Sep","Oct","Nov","Dec"],h=["SUN","MON","TUE","WED","THU","FRI","SAT"];0!=e.maxWidth&&t("#"+l).css("maxWidth",e.maxWidth),0!=e.setWidth&&t("#"+l).css("width",e.setWidth),1==e.startHidden&&(t("#"+l).addClass("monthly-pop").css({position:"absolute",display:"none"}),t(document).on("focus",""+e.showTrigger,function(e){t("#"+l).show(),e.preventDefault()}),t(document).on("click",""+e.showTrigger+", .monthly-pop",function(t){t.stopPropagation(),t.preventDefault()}),t(document).on("click",function(){t("#"+l).hide()})),"Sun"==e.weekStart?t("#"+l).append('<div class="monthly-day-title-wrap"><div>Sun</div><div>Mon</div><div>Tue</div><div>Wed</div><div>Thu</div><div>Fri</div><div>Sat</div></div><div class="monthly-day-wrap"></div>'):"Mon"==e.weekStart?t("#"+l).append('<div class="monthly-day-title-wrap"><div>Mon</div><div>Tue</div><div>Wed</div><div>Thu</div><div>Fri</div><div>Sat</div><div>Sun</div></div><div class="monthly-day-wrap"></div>'):console.log("Incorrect entry for weekStart variable."),t("#"+l).prepend('<div class="monthly-header"><div class="monthly-header-title"></div><a href="#" class="monthly-prev"></a><a href="#" class="monthly-next"></a></div>').append('<div class="monthly-event-list"></div>'),n(o,r),t(document.body).on("click","#"+l+" .monthly-next",function(e){var a=t("#"+l).data("setMonth"),i=t("#"+l).data("setYear");if(12==a){var s=1,o=i+1;n(s,o)}else{var s=a+1,o=i;n(s,o)}d(),e.preventDefault()}),t(document.body).on("click","#"+l+" .monthly-prev",function(e){var a=t("#"+l).data("setMonth"),i=t("#"+l).data("setYear");if(1==a){var s=12,o=i-1;n(s,o)}else{var s=a-1,o=i;n(s,o)}d(),e.preventDefault()}),t(document.body).on("click","#"+l+" .monthly-reset",function(t){n(o,r),d(),t.preventDefault(),t.stopPropagation()}),t(document.body).on("click","#"+l+" .monthly-cal",function(e){t(this).remove(),t("#"+l+" .monthly-event-list").css("transform","scale(0)").delay("800").hide(),e.preventDefault()}),t(document.body).on("click","#"+l+" a.monthly-day",function(a){if("event"==e.mode&&1==e.eventList){var n=t(this).data("number");t("#"+l+" .monthly-event-list").show(),t("#"+l+" .monthly-event-list").css("transform"),t("#"+l+" .monthly-event-list").css("transform","scale(1)"),t("#"+l+' .monthly-list-item[data-number="'+n+'"]').show();var i=document.getElementById(l+"day"+n),s=i.offsetTop;t("#"+l+" .monthly-event-list").scrollTop(s),d()}else if("picker"==e.mode){var n=t(this).data("number"),o=t("#"+l).data("setMonth"),r=t("#"+l).data("setYear");t(this).hasClass("monthly-past-day")&&1==e.disablePast?a.preventDefault():(t(""+e.target).val(o+"/"+n+"/"+r),1==e.startHidden&&t("#"+l).hide())}a.preventDefault()}),t(document.body).on("click","#"+l+" .listed-event",function(e){var a=t(this).attr("href");a||e.preventDefault()})}})}(jQuery);