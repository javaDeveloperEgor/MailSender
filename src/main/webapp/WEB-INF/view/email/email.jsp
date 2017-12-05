<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:attribute name="title">MailSender</jsp:attribute>

    <jsp:body>
        <!-- Page Content -->
        <div class="container">


            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">MailSender</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <c:if test="${pageContext.request.getParameter('resultSending') == 'true'}">
                        <h3 style="color:green">Email already send!</h3>
                    </c:if>
                    <c:if test="${pageContext.request.getParameter('resultSending') == 'false'}">
                        <h3 style="color:red">Email wasn't send!</h3>
                    </c:if>
                </div>
            </div>

            <c:url value="/email/send" var="send"/>

            <div class="row">
                <div class="col-md-8">
                    <form:form name="sentMessage" id="contactForm" action="${send}"
                          method="post" modelAttribute="emailModel" novalidate="true" >
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Full Name:</label>
                                <input type="text" class="form-control" id="name" name="name"
                                       required data-validation-required-message="Please enter your name.">
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Email Address:</label>
                                <input type="email" class="form-control" id="email" name="email"
                                       required data-validation-required-message="Please enter your email address.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Password:</label>
                                <input type="message" class="form-control"  id="message" name="message"
                                          required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></input>
                            </div>
                        </div>
                        <div id="success"></div>
                        <button type="submit" class="btn btn-primary">Send Message</button>
                    </form:form>
                </div>

            </div>

            <hr>
        </div>
    </jsp:body>

</page:template>