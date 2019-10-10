function addCategory() {
    var formData = $("#add_category").serialize();
    var rowcnt = $("#category_list tr").length;
    $.ajax({
        type: "POST",
        url: "${path }/${blog.id }/admin/category",
        data: formData,
        success: function(response) {	        	
        	$("#category_list").append("<tr id='category_"+response.no+"'><td>"+
        								rowcnt+"</td><td>"+
        								response.name+"</td><td>"+
        								0+"</td><td>"+
        								response.comment+"</td><td>"+        								
        								"<form id=del_"+response.no+">"+
        								"<input type='image' src='${path }/assets/images/delete.jpg' onclick='removeCategory(this.form);return false;'>"+			
        								"<input type='hidden' id='category_no' name='no' value='"+response.no+"'>"+
        								"</form>"+
        								"</td></tr>");
        	$("#add_name").val("");
        	$("#add_comment").val("");
        },
        error: function() {	
        	alert("error");
            location.reload();
        }        
    });    
}

function removeCategory(form) {
    var formData = $("#"+form.id).serialize();
    $.ajax({
        type: "POST",
        url: "${path }/${blog.id }/admin/deleteCategory",
        data: formData,
        success: function(response) {		  
        	if(response>0){
        		$("#category_"+response).remove();
        	}
        	
        },
        error: function() {	
            alert("error");
            location.reload();
        }        
    });    
}