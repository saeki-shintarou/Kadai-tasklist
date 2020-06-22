<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <ul>
            <c:forEach var="message" items="${messages}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${message.id}">
                        <c:out value="${message.id}" /></a>
                        <a>作成日時：<fmt:formatDate value="${message.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></a>
        <a>更新日時：<fmt:formatDate value="${message.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></a>

     <c:out value="${message.content}" />

                </li>
            </c:forEach>

        </ul>

        <p><a href="${pageContext.request.contextPath}/new">タスクの記述</a></p>

    </c:param>
</c:import>