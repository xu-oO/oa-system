<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>

<jsp:include page="top.jsp"/>
<%@page import="cn.edu.njit.oa.global.Contant" %>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 考勤申请 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form id="admin-form" name="addForm" action="/work_attendance/add" method="post">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 考勤信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-4">
                                <label for="attendanceType" class="field select">
                                    <select id="attendanceType" name="attendanceType" class="gui-input" placeholder="考勤类型...">
                                        <option value="${Contant.ATT_NORMAL}">${Contant.ATT_NORMAL}</option>
                                        <option value="${Contant.ATT_LEAVE}">${Contant.ATT_LEAVE}</option>
                                    </select>
                                    <i class="arrow double"></i>
                                </label>
                            </div>

                        </div>

                        <div class="row">
                            <div class='col-sm-6'>
                                <div class="form-group">
                                    <label>上班时间：</label>
                                    <!--指定 date标记-->
                                    <input id="startTime" name="startTime" type='text' class="form-control" />
                                </div>
                            </div>
                            <div class='col-sm-6'>
                                <div class="form-group">
                                    <label>下班时间：</label>
                                    <input id="endTime" name="endTime" type='text' class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-12">
                                <label for="remarks" class="field prepend-icon">
                                    <input id="remarks" name="remarks" class="gui-input" placeholder="备注..." type="text"/>
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