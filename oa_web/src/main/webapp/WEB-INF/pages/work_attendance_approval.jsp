<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>

<jsp:include page="top.jsp"/>
<%@page import="cn.edu.njit.oa.global.Contant" %>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 考勤审批 </h2>
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
                                <th class="hidden-xs">考勤类型</th>
                                <th class="hidden-xs">上班时间</th>
                                <th class="hidden-xs">下班时间</th>
                                <th class="hidden-xs">备注</th>
                                <th class="hidden-xs">状态</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${list}" var="attendance">
                                <tr class="message-unread">
                                    <td>${attendance.attendanceType}</td>
                                    <td>${attendance.startTime}</td>
                                    <td>${attendance.endTime}</td>
                                    <td class="hidden-xs">
                                        <span class="badge badge-warning mr10 fs11">${attendance.remarks}</span>
                                    </td>
                                    <td class="text-center fw600">${attendance.result}</td>
                                    <td>
                                        <a class="btn btn-primary active btn-sm" href="/work_attendance/allow/${attendance.id}">
                                            <span class="glyphicon glyphicon-edit"></span> 通过
                                        </a>
                                        <a class="btn btn-danger active btn-sm" href="/work_attendance/refuse/${attendance.id}">
                                            <span class="glyphicon glyphicon-trash"></span> 拒绝
                                        </a>
                                    </td>
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