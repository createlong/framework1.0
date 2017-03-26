/**
 * Created by root on 17-3-23.
 */
var login = {
    signin:function()
    {
        var username = $("input[name='username']").val();
        var password = $("input[name='password']").val();
        var email     = $("input[name='email']").val();
        var data = {'username':username,'password':password,'email':email};
        var url = './admin.php?c=login&a=signin';
        $.post(url,data,function(msg)
        {
            if(msg.status == 1)
            {
                return dialog.success(msg.message);
            }
            if(msg.status == 0)
            {
                return dialog.error(msg.message);
            }
        },'JSON')
    },
    check:function()
    {

    }
}

//跳转添加
$("#button-add").on('click',function()
{
    // url = './admin.php?c=index&a=add';
    var url= SCOPE.add_url;
    window.location.href = url;
})
//form通用表单
$("#singcms-button-submit").on('click',function()
{
    formData = {};
    var shouji = $("#singcms-form").serializeArray();
    $(shouji).each(function(e)
    {
      formData[this.name] = this.value;
    })

    //console.log(formData);
    var url = SCOPE.save_url;
    var jump_url = SCOPE.jump_url;
    $.post(url,formData,function(result) {
            if (result.status == 1)
                 dialog.success(result.message,jump_url);
            else
                 dialog.error(result.message);
        }

    ,'JSON')
})
//推送功能
$("#singcms-push").on('click',function()
{
    var id = $("#select-push").val();

    if(id == 0)
    {
        return dialog.error('请选择推荐位');
    }
    pushu = {};
    dataPost ={};
    $("input[name='pushcheck']:checked").each(function(i)
    {
        pushu[i] = $(this).val();
    })

    dataPost['position_id'] = id;
    dataPost['pushu'] = pushu;
    var url = SCOPE.push_url;
    $.post(url,dataPost,function(res)
    {
        if(res.status == 1)
        {
            return dialog.success(res.message,res['data']['jump_url']);
        }else{
            return dialog.error(res.message);
        }
    },'JSON');

})


