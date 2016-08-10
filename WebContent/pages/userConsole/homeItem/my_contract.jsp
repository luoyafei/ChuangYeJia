<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
      <div class="panel-group" id="accordion1" role="tablist" aria-multiselectable="true">
        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingOne1">
            <h4 class="panel-title">
              <a data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1">
            我创建的邀请合同
              </a>
            </h4>
          </div>
          <div id="collapseOne1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne1">
            <div class="panel-body">
              <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>合同名称</th>
                    <th>邀请成员</th>
                    <th>邀请公司</th>
                    <th>创建时间</th>
                    <th>合同状态</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
               
                  <tr>
                    <td> </td>
                    <td>我</td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td><a href="" class="btn btn-default btn-xs">查看</a>
                      <a href="" class="btn btn-default btn-xs">编辑</a>
                      <button class="btn btn-danger btn-xs" onclick="delete_return_contract()">删除</button>
                     </td>
                </tbody>
              </table>
              
               <script>
          function delete_return_contract(contractId) {
            if(confirm("确认要删除吗？")) {
              $.get('../../action/contract/action_delete_contract.php',{
                projectid : contractId
              }, function(data, textStatus){
                // alert(data);
                if(textStatus == "success") {
                  if(data.success == 1) {
                    alert("删除成功!!");
                    window.location.reload();
                  } else {
                    alert(data.result);
                  }
                }
              }, 'json');
            }
          }
          </script>
              
            </div>
            </div>
          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingTwo1">
            <h4 class="panel-title">
              <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1" aria-expanded="false" aria-controls="collapseTwo1">
                  我接收的邀请合同
              </a>
            </h4>
          </div>
          <div id="collapseTwo1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo1">
            <div class="panel-body">
              <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>合同名称</th>
                    <th>邀请公司</th>
                    <th>创建时间</th>
                    <th>合同状态</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
               
                  <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                      <a href="" class="btn btn-default btn-xs">查看</a>
                      <a href="" class="btn btn-default btn-xs">确认</a>
                   </td>
                  </tr>
                </tbody>
              </table>
            </div>
            </div>
          </div>
        </div>
        
          <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingOne1OfInvite01">
            <h4 class="panel-title">
              <a data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1Invite01" aria-expanded="true" aria-controls="collapseOne1Invite01">
            我创建的申请合同
              </a>
              <span class="label label-info myCreateApplyLabel"></span>
            </h4>
          </div>
          <div id="collapseOne1Invite01" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne1">
            <div class="panel-body">
              <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>合同名称</th>
					<th>申请公司</th>
                    <th>创建时间</th>
                    <th>合同状态</th>
                    <th>操作</th>
                  </tr>
                </thead>
                
                
                <tbody id="myCreateApply">
					<tr class="myCreateApplyTr">
						<td class="myCreateApplyName"></td>
						<td class="myCreateApplyStartups"></td>
						<td class="myCreateApplyCreateDate"></td>
						<td class="myCreateApplyStatus"></td>
						<td class="myCreateApplyOperate"></td>
					</tr>
				</tbody>
              </table>
              
              
            </div>
            </div>
          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingTwo1Invite02">
            <h4 class="panel-title">
              <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1Invite01" aria-expanded="false" aria-controls="collapseTwo1">
                  我接收的申请合同
              </a>
                <span class="label label-info myLeaderReceiveLabel"></span>
            </h4>
          </div>
          <div id="collapseTwo1Invite01" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo1">
            <div class="panel-body">
              <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>合同名称</th>
                    <th>申请人</th>
                    <th>申请公司</th>
                    <th>创建时间</th>
                    <th>合同状态</th>
                    <th>操作</th>
                  </tr>
                </thead>
	                  <tbody id="myLeaderReceive">
						<tr class="myLeaderReceiveTr">
							<td class="myLeaderReceiveName"></td>
							<td class="myLeaderReceiveApplicant"></td>
							<td class="myLeaderReceiveStartups"></td>
							<td class="myLeaderReceiveCreateDate"></td>
							<td class="myLeaderReceiveStatus"></td>
							<td class="myLeaderReceiveOperate"></td>
						</tr>
					</tbody>
              </table>
            </div>
            </div>
          </div>
        </div>
        
         <script>
               
               
               
               $(document).ready(function() {
            	   $.post('getContractConsole!getContractList.action', {}, function(data, textStatus) {
            		   
            		   if(textStatus == "success") {
            			   //alert(JSON.stringify(data.myLeaderReceive));
            			   $(".myCreateApplyLabel").text(data.myCreateApply.length + "个");
            			   $(".myLeaderReceiveLabel").text(data.myLeaderReceive.length + "个");
            			   
            			   /*
							这是我创建的申请的合同的块
            			   */
            			   if(data.myCreateApply != null && data.myCreateApply.length > 1) {

            				   	$(".myCreateApplyTrClone").remove();
	   							for(var i = 0; i < data.myCreateApply.length; i++) {
	   								$(".myCreateApplyTr").clone().attr("class", "myCreateApplyTrClone").appendTo("#myCreateApply");
	   							}
	   							
	   							for(var i = 0; i < data.myCreateApply.length; i++) {
	   								
	   								$(".myCreateApplyName").eq(i).text(data.myCreateApply[i].applyTitle);
	   								$(".myCreateApplyStartups").eq(i).html("<a href='/ChuangYeJia/getStartupsItem?item="+ data.myCreateApplyStartups[i].startupsId + "'>"+data.myCreateApplyStartups[i].startupsName+"</a>");
		   							$(".myCreateApplyCreateDate").eq(i).text(data.myCreateApply[i].createDate);
		   							$(".myCreateApplyStatus").eq(i).text(data.myCreateApply[i].applyStatus);
		   							$(".myCreateApplyOperate").eq(i).html("<a href='' class='btn btn-default btn-xs myCreateApplyOperateDetail'>查看</a>"
		   								+ "<a href='' class='btn btn-default btn-xs myCreateApplyOperateModify'>编辑</a>"
		   								+ "<button class='btn btn-danger btn-xs myCreateApplyOperateDelete' onclick='delete_return_contract_Invite()'>删除</button>"
		   							);
	   								
	   							}
   							
	   						} else if(data.myCreateApply.length == 1){
	   							$(".myCreateApplyTrClone").remove();
	   							
	   							$(".myCreateApplyName").eq(0).text(data.myCreateApply[0].applyTitle);
	   							$(".myCreateApplyStartups").eq(0).html("<a href='/ChuangYeJia/getStartupsItem?item="+ data.myCreateApplyStartups[0].startupsId + "'>"+data.myCreateApplyStartups[0].startupsName+"</a>");
	   							$(".myCreateApplyCreateDate").eq(0).text(data.myCreateApply[0].createDate);
	   							$(".myCreateApplyStatus").eq(0).text(data.myCreateApply[0].applyStatus);
	   							$(".myCreateApplyOperate").eq(0).html("<a href='' class='btn btn-default btn-xs myCreateApplyOperateDetail'>查看</a>"
	   								+ "<a href='' class='btn btn-default btn-xs myCreateApplyOperateModify'>编辑</a>"
	   								+ "<button class='btn btn-danger btn-xs myCreateApplyOperateDelete' onclick='delete_return_contract_Invite()'>删除</button>"
	   							);
	   						}
            			   
            			   
            			   /*
            			   这里是我接收到的申请的块
            			   */
            			   if(data.myLeaderReceive != null && data.myLeaderReceive.length > 1) {

           				   		$(".myLeaderReceiveTrClone").remove();
	   							for(var i = 0; i < data.myLeaderReceive.length; i++) {
	   								$(".myLeaderReceiveTr").clone().attr("class", "myLeaderReceiveTrClone").appendTo("#myLeaderReceive");
	   							}
	   							
	   							for(var i = 0; i < data.myLeaderReceive.length; i++) {
	   								
	   								$(".myLeaderReceiveName").eq(i).text(data.myLeaderReceive[i].applyTitle);
		   							$(".myLeaderReceiveApplicant").eq(i).html("<a href='/ChuangYeJia/getUserMark.action?mark="+ data.myLeaderReceive[i].applyOrganiserId + "'>" + data.myLeaderReceiveUser[i].userNickName + "</>");
		   							$(".myLeaderReceiveStartups").eq(i).html("<a href='/ChuangYeJia/getStartupsItem?item=" + data.myLeaderReceive[i].applyStartupsId + "'>" + data.myLeaderReceiveStartups[i].startupsName + "</a>");
		   							$(".myLeaderReceiveCreateDate").eq(i).text(data.myLeaderReceive[i].createDate);
		   							$(".myLeaderReceiveStatus").eq(i).text(data.myLeaderReceive[i].applyStatus);
		   							$(".myLeaderReceiveOperate").eq(i).html("<a href='' class='btn btn-default btn-xs myLeaderReceiveOperateDetail'>查看</a>"
		   								+ "<button class='btn btn-danger btn-xs myLeaderReceiveOk' onclick='delete_return_contract_Invite()'>确认</button>"
		   								+ "<button class='btn btn-danger btn-xs myLeaderReceiveRefuse' onclick='delete_return_contract_Invite()'>拒绝</button>"
		   							);
	   								
	   							}
  							
	   						} else if(data.myLeaderReceive.length == 1){
	   							$(".myLeaderReceiveTrClone").remove();
	   							
	   							$(".myLeaderReceiveName").eq(0).text(data.myLeaderReceive[0].applyTitle);
	   							$(".myLeaderReceiveApplicant").eq(0).html("<a href='/ChuangYeJia/getUserMark.action?mark="+ data.myLeaderReceive[0].applyOrganiserId + "'>" + data.myLeaderReceiveUser[0].userNickName + "</>");
	   							$(".myLeaderReceiveStartups").eq(0).html("<a href='/ChuangYeJia/getStartupsItem?item=" + data.myLeaderReceive[0].applyStartupsId + "'>" + data.myLeaderReceiveStartups[0].startupsName + "</a>");
	   							$(".myLeaderReceiveCreateDate").eq(0).text(data.myLeaderReceive[0].createDate);
	   							$(".myLeaderReceiveStatus").eq(0).text(data.myLeaderReceive[0].applyStatus);
	   							$(".myLeaderReceiveOperate").eq(0).html("<a href='' class='btn btn-default btn-xs myLeaderReceiveOperateDetail'>查看</a>"
	   								+ "<button class='btn btn-danger btn-xs myLeaderReceiveOk' onclick='delete_return_contract_Invite()'>确认</button>"
	   								+ "<button class='btn btn-danger btn-xs myLeaderReceiveRefuse' onclick='delete_return_contract_Invite()'>拒绝</button>"
	   							);
	   						}
            			   
            			   
            			   /*
            			   <!-- applyId
							applyOrganiserId
							applyTitle
							applyContent
							applyStartupsId
							createDate
							applyStatus
								-->
            			   */
            		   }
            		   
            	   }, 'json');
               });
               
               
		          function delete_return_contract_Invite(contractId) {
		            if(confirm("确认要删除吗？")) {
		              $.get('../../action/contract/action_delete_contract.php',{
		                projectid : contractId
		              }, function(data, textStatus){
		                // alert(data);
		                if(textStatus == "success") {
		                  if(data.success == 1) {
		                    alert("删除成功!!");
		                    window.location.reload();
		                  } else {
		                    alert(data.result);
		                  }
		                }
		              }, 'json');
		            }
		          }
          </script>
              
        
        
      </div>
  </body>
</html>