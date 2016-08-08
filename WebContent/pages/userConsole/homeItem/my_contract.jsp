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
            我创建的合同
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
                    <th>发布人</th>
                    <th>创建时间</th>
                    <th>是否有效</th>
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
                  我参与的合同
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
                    <th>创建时间</th>
                    <th>是否有效</th>
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
            我创建的申请
              </a>
              <!--<a class="btn btn-default btn-xs" href="../project/publish_project.php" style="float: right;">创建合同</a>-->
            </h4>
          </div>
          <div id="collapseOne1Invite01" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne1">
            <div class="panel-body">
              <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>合同名称</th>
                    <th>发布人</th>
                    <th>创建时间</th>
                    <th>是否有效</th>
                    <th>合同状态</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td></td>
                    <td>我</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                      <a href="" class="btn btn-default btn-xs">查看</a>
                      <a href="" class="btn btn-default btn-xs">编辑</a>
                      <button class="btn btn-danger btn-xs" onclick="delete_return_contract_Invite()">删除</button>
                   </td>
                  </tr>
                </tbody>
              </table>
              
               <script>
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
            </div>
          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingTwo1Invite02">
            <h4 class="panel-title">
              <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1Invite01" aria-expanded="false" aria-controls="collapseTwo1">
                  我参与的申请
              </a>
            </h4>
          </div>
          <div id="collapseTwo1Invite01" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo1">
            <div class="panel-body">
              <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>合同名称</th>
                    <th>创建时间</th>
                    <th>是否有效</th>
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
      </div>
  </body>
</html>