<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<h4>Include 페이지</h4>
<%
int pInteger2 = (Integer)(pageContext.getAttribute("pageInteger"));
Person  pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
<li>Integer 객체 : <%= pInteger2 %></li>
<li>String 객체 : <%= pageContext.getAttribute("pageString") %></li>
<li>Person 객체 : <%= pageContext.getAttribute("pagePerson2") %></li>
</ul>