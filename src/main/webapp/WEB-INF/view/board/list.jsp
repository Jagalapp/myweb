<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	                <tr>
	                    <td>1</td>
	                    <td><a href="detail.jsp">title</a></td>
	                    <td>writer</td>
	                    <td>1999-01-01</td>
	                    <td>1</td>
	                    <td>2</td>
	                </tr>
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
	                        <select class="form-select-sm" name="field" style="width:80px;">
	                            <option value="listTitle">제목</option>
	                            <option value="userId">작성자</option>
	                        </select> 		
	                        <input type="text" name="query" value="" style="width: 150px;"/>
						    <input class="btn btn-secondary" type="submit" value="검색" />
	                    </fieldset>
	                </form>
	            </div>
	            <!-- pagination -->
	            <div aria-label="Page navigation example" class="col-4">
	                <ul class="pagination pagination-sm justify-content-center">
	                    <li class="page-item">
	                        <a class="page-link" href="#" aria-label="Previous">
	                        <span aria-hidden="true">&laquo;</span>
	                        </a>
	                    </li>
	                    <li class="page-item"><a class="page-link" href="#">1</a></li>
	                    <li class="page-item"><a class="page-link" href="#">2</a></li>
	                    <li class="page-item"><a class="page-link" href="#">3</a></li>
	                    <li class="page-item">
	                        <a class="page-link" href="#" aria-label="Next">
	                        <span aria-hidden="true">&raquo;</span>
	                        </a>
	                    </li>
	                </ul>
	            </div>
	            <!-- write -->
	            <div class="col-4 d-md-flex justify-content-end">
	                <a href="write.jsp"><button class="btn btn-secondary" type="button">글쓰기</button></a>
	            </div>
	        </div>
	    </section>
    </main>