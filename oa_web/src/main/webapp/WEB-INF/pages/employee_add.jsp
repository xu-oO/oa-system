<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>

<jsp:include page="top.jsp"/>
<%@page import="cn.edu.njit.oa.global.Contant" %>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 添加员工 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form id="admin-form" name="addForm" action="/employee/add" method="post">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="id" class="field prepend-icon">
                                    <input id="id" name="id" class="gui-input" placeholder="工号..." type="text"/>
                                    <label for="id" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="name" class="field prepend-icon">
                                    <input id="name" name="name" class="gui-input" placeholder="姓名..." type="text"/>
                                    <label for="name" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="id" class="field select">
                                    <select id="departmentId" name="departmentId" class="gui-input" placeholder="所属部门...">
                                        <c:choose>
                                            <c:when test="${sessionScope.employee.post==Contant.POST_GM}">
                                                <c:forEach items="${dlist}" var="department">
                                                    <option value="${department.id}">${department.name}</option>
                                                </c:forEach>
                                            </c:when>
                                            <c:when test="${sessionScope.employee.post==Contant.POST_FM}">
                                                <option value="${sessionScope.employee.departmentId}">${sessionScope.employee.department.name}</option>
                                            </c:when>
                                        </c:choose>
                                    </select>
                                    <i class="arrow double"></i>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="post" class="field select">
                                    <select id="post" name="post" class="gui-input" placeholder="职务...">
                                        <option value="员工">员工</option>
                                        <c:if test="${sessionScope.employee.post==Contant.POST_GM}">
                                            <option value="部门经理">部门经理</option>
                                            <option value="总经理">总经理</option>
                                            <option value="财务">财务</option>
                                        </c:if>
                                    </select>
                                    <i class="arrow double"></i>
                                </label>
                            </div>
                        </div>
                        <div class="panel-footer text-right">
                            <button type="submit" class="button"> 保存 </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>