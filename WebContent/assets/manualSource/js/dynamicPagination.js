/**
 * <nav id="paginationAll" class="text-center">
 *    <ul class="pagination" id="UL_PAR">
 *    </ul>
 * </nav>
 * 
 * 
*/
/*****************************注意！本程序只用于分页数目按钮>=7个,太少的不需要动态分配！**********************************/
					   /*
					   * 初始化函数
					   * @param paginationliClass;//给分页每个li自定义的class
					   * @param paginationAllCount;//给设置总共有多少item
					   * @param paginationShowCount//设置没有要显示多少item
					   */
					   
					   function paginationInit(paginationliClass, paginationAllCount, paginationShowCount) {
						   
						    var paginationAllPage;//分页按钮有多少个
						    paginationAllPage = parseInt(paginationAllCount/paginationShowCount) + ((paginationAllCount*1)%(paginationShowCount*1)==0?0:1);
						   	
						   	if(paginationAllPage >= 7) {
						   		paginationAllPage = 7;
						   		for(var i = 1; i <= paginationAllPage; i++) {
							   		if(i == 1) {
							   			var li = $('<li></li>');
							   			var span = $('<span></span>');
							   			li.attr("class", paginationliClass + " active");
							   			span.text(i);
							   			span.appendTo(li);
							   			li.appendTo($("#UL_PAR"));
							   		} else if(i == 6) {
							   			var li = $('<li></li>');
							   			var span = $('<span></span>');
							   			li.attr("class", paginationliClass);
							   			span.text("...");
							   			span.appendTo(li);
							   			li.appendTo($("#UL_PAR"));
							   		} else {
							   			var li = $('<li></li>');
							   			var span = $('<span></span>');
							   			li.attr("class", paginationliClass);
							   			span.text(i);
							   			span.appendTo(li);
							   			li.appendTo($("#UL_PAR"));
							   		}
							   	}
						   	} else {
						   		alert("Sorry my brother, this plugin is used to solve the problem of multiple pages only！I believe you can solve your problem！Good luck");
						   	}
					   }
					   
					  /*
					   * 调用的 点击函数
					   * @param paginationliClass;//给分页每个li自定义的class
					   * @param paginationAllCount;//给设置总共有多少item
					   * @param paginationShowCount//设置没有要显示多少item
					   */
						function paginationClick(paginationliClass, paginationAllCount, paginationShowCount) {
						 
						    var paginationAllPage;//分页按钮有多少个
						   	paginationAllPage = parseInt(paginationAllCount/paginationShowCount) + ((paginationAllCount*1)%(paginationShowCount*1)==0?0:1);
						   	
						   	var pclass = "." + paginationliClass;
						   	var showCount = paginationShowCount;
						   	var allCount = paginationAllCount;
						   	var allPage = paginationAllPage;
						   	
						   	var startCount = 1;//点击的分页按钮数
						   	$(pclass).bind("click", function(a) {
						   		if($(this).text() != "...") {
						   			$(pclass).each(function(index) {
						   				$(pclass).eq(index).attr("class", paginationliClass);
						   			})
						   			
						   			startCount = $(this).text();
						   			
						   			var pa1 = $(pclass).eq(0);
						   			var pa2 = $(pclass).eq(1);
						   			var pa3 = $(pclass).eq(2);
						   			var pa4 = $(pclass).eq(3);
						   			var pa5 = $(pclass).eq(4);
						   			var paSpan = $(pclass).eq(5);
						   			var pa999 = $(pclass).eq(6);
						   			
						   			
						   			if(allPage > 5 && startCount <= (allPage*1-5) && allPage!=7) {
										if(startCount==1) {
											pa1.html("<span>" + (startCount*1) + "</span>");
											pa2.html("<span>" + (startCount*1+1) + "</span>");
											pa3.html("<span>" + (startCount*1+2) + "</span>");
											pa4.html("<span>" + (startCount*1+3) + "</span>");
											pa5.html("<span>" + (startCount*1+4) + "</span>");
											paSpan.html("<span>...</span>");
											pa999.html("<span>" + allPage*1 + "</span>");
										} else if(startCount == 2) {
											pa1.html("<span>" + (startCount*1-1) + "</span>");
											pa2.html("<span>" + (startCount*1) + "</span>");
											pa3.html("<span>" + (startCount*1+1) + "</span>");
											pa4.html("<span>" + (startCount*1+2) + "</span>");
											pa5.html("<span>" + (startCount*1+3) + "</span>");
											paSpan.html("<span>...</span>");
											pa999.html("<span>" + allPage*1 + "</span>");
										} else {
											pa1.html("<span>" + (startCount*1-2) + "</span>");
											pa2.html("<span>" + (startCount*1-1) + "</span>");
											pa3.html("<span>" + (startCount*1) + "</span>");
											pa4.html("<span>" + (startCount*1+1) + "</span>");
											pa5.html("<span>" + (startCount*1+2) + "</span>");
											paSpan.html("<span>...</span>");
											pa999.html("<span>" + allPage*1 + "</span>");
										}
										
										
									} else if(allPage > 5 && startCount > (allPage*1-5)) {
										
										pa1.html("<span>" + (allPage*1-6) + "</span>");
										pa2.html("<span>" + (allPage*1-5) + "</span>");
										pa3.html("<span>" + (allPage*1-4) + "</span>");
										pa4.html("<span>" + (allPage*1-3) + "</span>");
										pa5.html("<span>" + (allPage*1-2) + "</span>");
										paSpan.html("<span>"+ (allPage*1-1) +"</span>");
										pa999.html("<span>" + (allPage*1) + "</span>");
									} else if(allPage == 7) {
										pa1.html("<span>" + 1 + "</span>");
										pa2.html("<span>" + 2 + "</span>");
										pa3.html("<span>" + 3 + "</span>");
										pa4.html("<span>" + 4 + "</span>");
										pa5.html("<span>" + 5 + "</span>");
										paSpan.html("<span>"+ 6 +"</span>");
										pa999.html("<span>" + 7 + "</span>");
									} else {
										for(var i = 0; i < allPage; i++) {
											(pa+(allPage*1-i)).html("<span>" + (allPage*1-i) + "</span>");
										}
									}
									
									$(pclass).each(function(index) {
										if($(pclass).eq(index).text() == startCount) {
											$(this).attr("class", paginationliClass+" active");
										};
									})
									
									alert("CurrentPage is :" + startCount);
						   		}
						   	});
					   }
	
	

