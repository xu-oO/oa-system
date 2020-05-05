<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>

<jsp:include page="top.jsp"/>
<%@page import="cn.edu.njit.oa.global.Contant" %>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 新建任务 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form id="admin-form" name="addForm" action="/task/add" method="post">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 任务信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="name" class="field select">
                                    <input id="name" name="name" class="gui-input" placeholder="任务名称..." type="text"/>
                                </label>
                            </div>
                            <div class="col-md-2"></div>
                            <div class="col-md-4">
                                <label for="employeeId" class="field select">
                                    <select id="employeeId" name="employeeId" class="gui-input">
                                        <c:forEach items="${list}" var="emp">
                                            <option value="${emp.id}">${emp.id}</option>
                                        </c:forEach>
                                    </select>
                                    <i class="arrow double"></i>
                                </label>
                            </div>

                        </div>
                        <div class="section row">
                            <div class="col-md-12">
                                <label for="taskContent" class="field prepend-icon">
                                    <input id="taskContent" name="taskContent" class="gui-input" placeholder="任务内容..." type="text"/>
                                </label>
                            </div>
                        </div>
                        <div class="panel-footer text-right">
                            <button type="submit" class="button"> 提交 </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>