$(document).ready(function() {
    var $newsTable = $('#newstable tbody');
    // 刷新页面
    refreshNews();
    // 提交按钮触发事件
    $('#btnSubmit').click(function(e) {
        e.preventDefault();
        // 判断输入为空时红框提示
        if ($('#newstitle').val() === "" || $('#newsimg').val() === "" || $('#newstime').val() === "" || $('newssrc').val() === "") {
            if ($('#newstitle').val() === "") {
                $('#newstitle').parent().addClass('has-error');
            } else {
                $('newstitle').parent().removeClass('has-error');
            }
            if ($('#newsimg').val() === "") {
                $('#newsimg').parent().addClass('has-error');
            } else {
                $('newsimg').parent().removeClass('has-error');
            }
            if ($('#newstime').val() === "") {
                $('#newstime').parent().addClass('has-error');
            } else {
                $('newstime').parent().removeClass('has-error');
            }
            if ($('#newssrc').val() === "") {
                $('#newssrc').parent().addClass('has-error');
            } else {
                $('newssrc').parent().removeClass('has-error');
            }
        } else {
            // 输入正确后生成json数据
            var jsonNews = {
            	newstype:$('#newstype').val(),
                newstitle:$('#newstitle').val(),
                newsimg:$('#newsimg').val(),
                newstime:$('#newstime').val(),
                newssrc:$('#newssrc').val()
            }

            // ajax向php服务发送添加请求
            $.ajax({
                url:'server/insert.php',
                type:'post',
                data:jsonNews,
                datatype:'json',
                success: function(data) {
                    console.log(data);
                    // 刷新页面
                    refreshNews();
                }
            });
        }
    });


    /*删除*/
    // 获取点击栏id
    var deleteID = null;
    $newsTable.on('click','.btn-danger',function(e){
        // 弹出提示栏
    	$('#deleteModal').modal('show');
        // 获取点击栏id
    	deleteID = $(this).parent().prevAll().eq(5).html();
    });
    // 确定后进行删除操作
    $('#deleteModal #comfirmDelete').click(function(e){
    	$('#deleteModal').modal('hide');
    	if(deleteID){
            // 向服务器发送删除请求
    		$.ajax({
    			url:'server/deletenews.php',
            	type:'post',
            	data:{newsid:deleteID},
            	success:function(data){
            		console.log('删除成功');
            		refreshNews();
            	}
    		});
    	}
    });

    // 更新操作
    var updateID = null;
    $newsTable.on('click','.btn-primary',function(e){
    	$('#updateModal').modal('show');
        // 获取点击栏id
    	updateID = $(this).parent().prevAll().eq(5).html();
        // 发送请求
    	$.ajax({
    		url:'server/curnews.php',
    		type:'get',
    		datatype:'json',
    		data:{newsid:updateID},
    		success:function(data){
    			console.log(data);
    			$('#unewstitle').val(data[0].newstitle);
    			$('#unewstype').val(data[0].newstype);
    			$('#unewsimg').val(data[0].newsimg);
    			$('#unewssrc').val(data[0].newssrc);
    			$('#unewstime').val(data[0].newstime.split(' ')[0]);
      		}
    	});
    });
    // 点经确认后发送修改请求
    $('#updateModal #comfirmUpdate').click(function(e){
    	$.ajax({
    		url:'server/updatenews.php',
    		type:'post',
    		data:{
    			newstitle:$('#unewstitle').val(),
    			newstype:$('#unewstype').val(),
    			newsimg:$('#unewsimg').val(),
    			newstime:$('#unewstime').val(),
    			newssrc:$('#unewssrc').val(),
    			newsid:updateID
    		},
    		success:function(data){
    			console.log('修改成功');
    			$('#updateModal').modal('hide');
    			refreshNews();
      		}
    	});
    });






    // 刷新页面
    function refreshNews() {
        $newsTable.empty();
        // 连接服务器获取数据并应用数据
        $.ajax({
            url: 'server/getnews.php',
            type: 'get',
            datatype: 'json',
            success: function(data) {
                console.log(data);
                data.forEach(function(item, index, array) {
                    var $tdid = $('<td>').html(item.id);
                    var $tdtype = $('<td>').html(item.newstype);
                    var $tdtitle = $('<td>').html(item.newstitle);
                    var $tdimg = $('<td>').html(item.newsimg);
                    var $tdtime = $('<td>').html(item.newstime);
                    var $tdsrc = $('<td>').html(item.newssrc);
                    var $tdctrl = $('<td>');
                    var $btnupdate = $('<button>').addClass('btn btn-primary btn-xs').html('修改');
                    var $btndelete = $('<button>').addClass('btn btn-danger btn-xs').html('删除');
                    $tdctrl.append($btnupdate, $btndelete);
                    var $tRow = $('<tr>');
                    $tRow.append($tdid, $tdtype, $tdtitle, $tdimg, $tdtime, $tdsrc, $tdctrl);
                    $newsTable.append($tRow);
                });
            }
        });
    }
});
