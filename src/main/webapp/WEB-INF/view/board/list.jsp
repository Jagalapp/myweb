<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <main>
	    <section class="container-xxl my-4">
	        <table class="table">
	            <thead>
	                <tr>
	                    <th>#</th>
	                    <th style="width: 25%;">Title</th>
	                    <th style="width: 25%;">Writer</th>
	                    <th style="width: 25%;">Date</th>
	                    <th>Hit</th>
	                    <th>Like</th>
	                </tr>
	            </thead>
	            <tbody>
	            	<c:forEach var="n" items="${list }">
	                <tr>
	                    <td>${n.listId }</td>
	                    <td><a href="/board/detail?id=${n.listId }">${n.listTitle }</a></td>
	                    <td>${n.userId }</td>
	                    <td><fmt:formatDate value="${n.listDate }" pattern="yyyy-MM-dd"/></td>
	                    <td>${n.listHit }</td>
	                    <td>0</td>
	                </tr>
	                </c:forEach>
	            </tbody>
	        </table>
	    </section>
	
	    <!-- search, pagination, write-->
	    <section class="container-xl">
	        <div class="row">
	            <!-- search form -->
	            <div class="col-4 justify-content-start">
	                <form class="search-form">
	                    <fieldset>
	                        <select class="form-select-sm" name="f" style="width:80px;">
	                            <option ${param.f == "listTitle"?"selected":"" } value="listTitle">제목</option>
	                            <option ${param.f == "userId"?"selected":"" } value="userId">작성자</option>
	                        </select> 		
	                        <input type="text" name="q" value="${param.q }" style="width: 150px;" />
						    <input class="btn btn-secondary" type="submit" value="검색" />
	                    </fieldset>
	                </form>
	            </div>
	            <!-- pagination -->
	            <c:set var="page" value="${(empty param.p)?1:param.p }" />
				<c:set var="firstPage" value="${page - (page - 1) % 5}" />
				<c:set var="lastPage" value="${ fn:substringBefore(Math.ceil(count/10), '.') }" />
				
	            <div aria-label="Page navigation example" class="col-4">
	                <ul class="pagination pagination-sm justify-content-center">
	                	<c:if test="${firstPage > 1 }">
		                    <li class="page-item">
		                        <a class="page-link" href="?f=${param.f }&q=${param.q }&p=${firstPage - 5 }" aria-label="Previous">
		                        <span aria-hidden="true">&laquo;</span>
		                        </a>
		                    </li>
	                    </c:if>
	                    <c:forEach var="i" begin="0" end="4">
	                    <c:if test="${(firstPage + i) <= lastPage }" >	                    
	                    	<li class="page-item"><a class="page-link" href="?f=${param.f }&q=${param.q }&p=${firstPage + i }">${firstPage + i }</a></li>
	                    </c:if>
	                    </c:forEach>
	                    <c:if test="${firstPage + 4 < lastPage }">
		                    <li class="page-item">
		                        <a class="page-link" href="?f=${param.f }&q=${param.q }&p=${firstPage + 5 }" aria-label="Next">
		                        <span aria-hidden="true">&raquo;</span>
		                        </a>
		                    </li>
	                    </c:if>
	                </ul>
	            </div>
	            <!-- write -->
	            <div class="col-4 d-md-flex justify-content-end">
	            	<c:if test="${!empty user }">
	                <a href="/board/writeDetail"><button class="btn btn-secondary" type="button">글쓰기</button></a>
	                </c:if>
	            </div>
	        </div>
	    </section>
    </main>