/**
 * 浏览器大小发生变化-计算可用高度
 * 点击选择事件
 * */
class mibble {
    /**
     *实例数据
     * titleData：页面中间展示的数据
     * titleinfo：对应的类型及id，从titleData中自动计算
     * list：用户选择的数据，key是类型id，id是类型对应的子元素的id，name是类型对应的子元素的标题
     * */
    constructor(titleData) {
        this.titleData=titleData,
        this.titleinfo={},
        this.list = {}
    }

    showtype(){
        //展示数据
     var data=this.titleData;
     var text='';
        for (var i = 0; i < data.length; i++) {
            this.titleinfo[data[i].id]=data[i].title;
            text+='<div class="middle-content-title" data-key="'+data[i].id+'">'+data[i].title+'</div><div class="zqui-item-box middle-content-li">';
            var list=data[i].list;
            for(var t=0;t<list.length;t++){
                var classNmae='li-action';
                // alert(list[t].isTrue);
                if(list[t].isTrue=='true'){
                    // alert('fasdfasfasdf');
                    classNmae='li-action active';
                    this.optAction(data[i].id,list[t].id,list[t].name);
                }
                text+='<div class="'+classNmae+'" data-key="'+data[i].id+'" data-id="'+list[t].id+'" data-name="'+list[t].name+'">'+list[t].name+'</div>'
            }
            text+='</div>';
        }
        $('.middle-content-main').html(text);
    }

    compute() {
        //浏览器大小发生变化-计算可用高度
        var height = $(window).height();//浏览器时下窗口可视区域高度
        var top = $('.zqui-middle').offset().top;//距离顶部的高度
        $('.middle-left').height(height - top + 'px');
        $('.middle-content-main').height(height - top - 60 + 'px');
    }

    optAction(key, id, name) {
        var data = this.list[key] || (this.list[key] = []);
        var istrue = true;
        var leg=data.length;
        console.log(JSON.stringify(data))
        console.log(leg)
        console.log(id)
        for (var i = 0; i < leg; i++) {
            console.log(i)
            if (data[i].id == id) {
                istrue = false;
                this.list[key].splice(i, 1);
                if(leg==1){
                 delete this.list[key];
                }
                break;
            }
        }

        if (istrue) {
            var obj = {
                id: id,
                name: name
            }
            this.list[key].push(obj);
        }
        this.optDom();
    }
    optDom(){
        var data=this.list;
        var  info=this.titleinfo;
        var text='';
        for(var key in data){
            var list=data[key];
            text+='<div class="middle-right-list"><div class="middle-right-title">'+info[key]+'</div><div class="zqui-item-box middle-right-li">'
            for(var i=0;i<list.length;i++){
                text+='<div class="opt-li">'+list[i].name+'</div>'
            }
            text+='</div></div>'
        }
        $('.middle-right-main').html(text)
    }
};

