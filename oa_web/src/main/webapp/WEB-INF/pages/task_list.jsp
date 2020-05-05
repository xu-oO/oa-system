<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>

<jsp:include page="top.jsp"/>
<%@page import="cn.edu.njit.oa.global.Contant" %>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 任务中心 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <div class="hidden-xs hidden-sm col-md-3">
                            <div class="btn-group">
                                <a class="fa fa-refresh btn btn-default light"></a>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 text-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-left"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body pn">
                    <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                            <tr class="">
                                <th class="hidden-xs">任务id</th>
                                <th class="hidden-xs">任务名称</th>
                                <th class="hidden-xs">任务内容</th>
                                <th class="hidden-xs">当前指派人</th>
                                <th class="hidden-xs">任务状态</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${list}" var="task">
                                <tr class="message-unread">
                                    <td>${task.id}</td>
                                    <td>${task.name}</td>
                                    <td>${task.taskContent}</td>
                                    <td>${task.employeeId}</td>
                                    <td class="hidden-xs">
                                        <span class="badge badge-warning mr10 fs11">${task.status}</span>
                                    </td>
                                    <c:if test="${task.status==Contant.TASK_CREATE}">
                                        <td>
                                            <a class="btn btn-primary active btn-sm" href="/task/complete/${task.id}">
                                                <span class="glyphicon glyphicon-edit"></span> 完成
                                            </a>
                                        </td>
                                    </c:if>
                                    <c:if test="${task.status==Contant.TASK_DONE}">
                                        <td>
                                            <span class="glyphicon glyphicon-exclamation-sign"></span> 已完成
                                        </td>
                                    </c:if>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>