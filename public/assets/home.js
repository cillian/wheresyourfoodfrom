var redirect_on_submit_behaviour=function(){country_url=$("#country_id").val();if(country_url!=""){window.location.href=country_url}return false};var flag_entry_behaviour=function(){if(confirm("Are you sure you want to remove this entry?")){$.ajax({type:"POST",dataType:"json",url:$(this).attr("href").replace("/new",""),success:function(a){remove_entry(a)}})}return false};function remove_entry(a){$("#entry_"+a.entry_id).fadeOut(300,function(){$(this).remove()})}$(document).ready(function(){$("#select_country_form").submit(redirect_on_submit_behaviour);$(".flag_entry").click(flag_entry_behaviour)});