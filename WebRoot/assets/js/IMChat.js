function IMChat(){
    layer.open({
        type: 2,
        title: '<i class="fa fa-reddit-alien"></i>'+' 实时吐槽聊天墙',
        fix: false,
        shadeClose: true,
        maxmin: true,
        area: ['1000px', '500px'],
        content: 'http://localhost:3000/',
    });  
}