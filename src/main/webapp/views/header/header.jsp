<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<header>
	<div class="main-header">
		<div class="header-top">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-lg-3 col-md-3 col-4">
						<div class="logo">
							<a href="<c:url value='/trangchu'/>"><img
								src="<c:url value='/images/Slide/logo.jpg'/>" alt=""></a>
						</div>
					</div>
					<div class="col-lg-9 col-md-6 col-6">
						<div class="header_right_info">
						
							<!-- Thêm mới -->
							<form action="/search/keywords=${searchsp}" method="post">
								<div class="search_container">
									<div class="search_box">
										<input placeholder="Search product..." type="text" name="tensp" value="${searchsp}">
										<button type="submit">
											<svg xmlns="http://www.w3.org/2000/svg" width="20"
												height="20" fill="currentColor" class="bi bi-search"
												viewBox="0 0 16 16">
                                                    <path
													d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                                </svg>
										</button>
									</div>
								</div>
							</form>
							<!-- End -->
							
							<div class="text-success fw-bold mx-3">${user.hoten != null? user.hoten: ""}</div>
							<div class="header_account_area">
								<div class="header_account-list top_links">
									<a href="/logout"><svg xmlns="http://www.w3.org/2000/svg"
											width="25" height="25" fill="currentColor"
											class="bi bi-people" viewBox="0 0 16 16">
                                                    <path
												d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0zM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816zM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275zM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4z" />
                                                </svg></a>
								</div>
								<div class="header_account-list header_wishlist">
									<a href="wishlist.html"><svg
											xmlns="http://www.w3.org/2000/svg" width="25" height="25"
											fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                                    <path
												d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                                </svg></a>
								</div>
								<div class="header_account-list  mini_cart_wrapper">
									<a href="#"><svg xmlns="http://www.w3.org/2000/svg"
											width="25" height="25" fill="currentColor"
											class="bi bi-bag-check" viewBox="0 0 16 16">
                                                    <path
												fill-rule="evenodd"
												d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z" />
                                                    <path
												d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z" />
                                                </svg><span class="item_count">${total}</span></a>
								</div>
								<div class="mini_cart">
									<div class="cart_gallery">
										<div class="cart_close">
											<div class="cart_text">
												<h3>cart</h3>
											</div>
											<div class="mini_cart_close">
												<a href="#"><svg xmlns="http://www.w3.org/2000/svg"
														width="16" height="16" fill="currentColor"
														class="bi bi-x-square" viewBox="0 0 16 16">
                                                                    <path
															d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
                                                                    <path
															d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                                                                </svg></a>
											</div>
										</div>
										<!-- GIỎ HÀNG MINI -->
										<c:forEach var="item" items="${cart}">
											<div class="cart_item">
												<div class="cart_img">
													<a href="#"><img
														src="<c:url value='/images/product/${item.anh}'/>" alt=""></a>
												</div>
												<div class="cart_info">
													<a href="/sanpham/id_sp=${item.id}">${item.ten}</a>
													
													<!-- CẬP NHẬT GIỎ HÀNG -->
													<p>Amount: 
													 	<form name="frmUpdate" action="/giohang/capnhat/${item.id}" method="post">
														<input type="number" name="soluong" onchange="document.frmUpdate.submit();" value='${item.soluong}' min="1">
														x 
														<span> $${item.gia} </span>
														</form>
													</p>
													
												</div>
												<div class="cart_remove">
													<a href="/giohang/xoa/${item.id}"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                                            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                                            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                                          </svg></a>
												</div>
											</div>
										</c:forEach>

									</div>
									<div class="mini_cart_table">

										<!-- TỔNG TIỀN GIỎ HÀNG -->
										<div class="cart_table_border">
											<div class="cart_total">
												<span>Sub total:</span> <span class="price">$${totalAmount}</span>
											</div>
											<div class="cart_total mt-10">
												<span>total (gồm VAT):</span> <span class="price">$${totalAmount + (totalAmount * 10 / 100)}</span>
											</div>
										</div>

									</div>
									<div class="mini_cart_footer">
										<div class="cart_button">
											<a href="#"><i class="fa fa-shopping-cart"></i> View cart</a>
										</div>
										<div class="cart_button">
											<a class="active" data-bs-toggle="modal" data-bs-target="#checkOutModal"><i class="fa fa-sign-in"></i>
												Checkout</a>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header_bottom sticky-header">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-3">
						<div class="categories_menu">
							<div class="categories_title">
								<i class="fas fa-bars"></i>
								<h2 class="categori_toggle">Categories</h2>
							</div>
							<!-- <div class="icon-categori_toggle"></div> -->
							<input type="checkbox" class="nav-input d-none"
								id="nav-res-input"> <label for="nav-res-input"
								class="checkbtn"> <i class="fas fa-bars"></i>
							</label> <label for="nav-res-input" class="nav-overlay" target=""></label>
							<div class="main_menu_res">
								<div class="search_box_res">
									<input placeholder="Search product..." type="text">
									<button type="submit">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                                    <path
												d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                                </svg>
									</button>
								</div>
								<nav>
									<ul class="offcanvas_main_menu">
										<div class="canvas_close">
											<label for="nav-res-input" class="nav-res-close"><i
												class="fas fa-xmark"></i></label>
										</div>
										<li class="menu-item-has-children"><a class="active"
											href="<<c:url value='/trangchu'/>">Trang chủ</a></li>
										<!-- <input type="checkbox" class="nav-input-sub" id="nav-res-sub"> -->
										<li for="nav-res-sub" class="menu-item-has-children"><span
											class="menu-expand"><i class="fa fa-angle-down"></i></span> <a
											class="shop-btn" href="/ds-sanpham">Sản phẩm</a>
											<ul class="sub_menu shop-show">
												<li class="menu-item-has-children"><span
													class="menu-expand"><i class="fa fa-angle-down"></i></span>
													<a class="shop-lay-btn" href="#">Loại Hoa</a>
													<ul class="sub_sub_menu lay-show">

														<!-- Danh mục - Điện thoại -->
														<c:forEach var="item" items="${DM_Hoa}">
															<li><a href="/ds-sanpham/id_dm=${item.id_dm}">${item.tendm}</a></li>
														</c:forEach>

													</ul></li>
												<li class="menu-item-has-children"><span
													class="menu-expand"><i class="fa fa-angle-down"></i></span>
													<a class="shop-other-btn" href="#">Loại Cây</a>
													<ul class="sub_sub_menu other-show">
													
														<!-- Danh mục - Điện thoại -->
														<c:forEach var="item" items="${DM_CayCanh}">
															<li><a href="/ds-sanpham/id_dm=${item.id_dm}">${item.tendm}</a></li>
														</c:forEach>
														
													</ul></li>
												<li class="menu-item-has-children"><span
													class="menu-expand"><i class="fa fa-angle-down"></i></span>
													<a class="shop-other-btn" href="#">Hàng kèm theo</a>
													<ul class="sub_sub_menu other-show">
														<li><a href="#">Bánh kem</a></li>
														<li><a href="#">Kẹo Sô cô la</a></li>
														<li><a href="#">Gấu bông</a></li>
													</ul></li>
											</ul></li>
										<li class="menu-item-has-children"><a class="blog-btn"
											href="#">blog<span class="menu-expand"><i
													class="fa fa-angle-down"></i></span></a>
											<ul class="sub_menu pages blog-show">
												<li><a href="#">blog details</a></li>
												<li><a href="#">blog fullwidth</a></li>
												<li><a href="#">blog sidebar</a></li>
											</ul></li>
										<li class="menu-item-has-children"><a class="pages-btn"
											href="#">pages<span class="menu-expand"><i
													class="fa fa-angle-down"></i></span></a>
											<ul class="sub_menu pages pages-show">
												<li><a href="#">About Us</a></li>
												<li><a href="#">services</a></li>
												<li><a href="#">Frequently Questions</a></li>
												<li><a href="#">contact</a></li>
												<li><a href="#">login</a></li>
											</ul></li>
										<li class="menu-item-has-children"><a href="contact.html">
												Contact Us </a></li>
										<c:if test="${user.vaitro}">
										<li class="menu-item-has-children"><a href="/admin">
												Admin</a></li>
										</c:if>
									</ul>
								</nav>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<!--main menu start-->
						<div class="main_menu menu_position">
							<nav>
								<ul>
									<li><a class="active" href="<c:url value='/trangchu'/>">Trang
											chủ</a></li>
									<li class="mega_items"><a href="/ds-sanpham">Sản phẩm<i
											class="fa fa-angle-down"></i></a>
										<div class="mega_menu">
											<ul class="mega_menu_inner">
												<li><a href="#">Loại Hoa</a>
													<ul>

														<!-- Danh mục - Main -->
														<c:forEach var="item" items="${DM_Hoa}">
															<li><a href="/ds-sanpham/id_dm=${item.id_dm}">${item.tendm}</a></li>
														</c:forEach>

													</ul></li>
												<li><a href="#">Màu Hoa</a>
													<ul>
													
														<!-- Danh mục - Điện thoại -->
														<c:forEach var="item" items="${DM_CayCanh}">
															<li><a href="/ds-sanpham/id_dm=${item.id_dm}">${item.tendm}</a></li>
														</c:forEach>
														
													</ul></li>
												<li><a href="#">Hàng kèm theo</a>
													<ul>
														<li><a href="#">Bánh kem</a></li>
														<li><a href="#">Kẹo Sô cô la</a></li>
														<li><a href="#">Gấu bông</a></li>
													</ul></li>
											</ul>
										</div></li>
									<li><a href="blog.html">blog<i
											class="fa fa-angle-down"></i></a>
										<ul class="sub_menu pages">
											<li><a href="blog-details.html">blog details</a></li>
											<li><a href="blog-fullwidth.html">blog fullwidth</a></li>
											<li><a href="blog-sidebar.html">blog sidebar</a></li>
										</ul></li>
									<li><a href="#">pages <i class="fa fa-angle-down"></i></a>
										<ul class="sub_menu pages">
											<li><a href="about.html">About Us</a></li>
											<li><a href="services.html">services</a></li>
											<li><a href="faq.html">Frequently Questions</a></li>
											<li><a href="contact.html">contact</a></li>
											<li><a href="login.html">login</a></li>
										</ul></li>
									<li><a href="contact.html"> Contact Us</a></li>
									<c:if test="${user.vaitro}">
										<li class="menu-item-has-children"><a href="/admin">
												Admin</a></li>
									</c:if>
								</ul>
							</nav>
						</div>
						<!--main menu end-->
					</div>
					<div class="col-lg-3">
						<div class="call-support">
							<p>
								Call Support: <a href="tel:0123456789">0123456789</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Modal -->
    <div class="modal fade" id="checkOutModal" tabindex="-1" aria-labelledby="editModal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-warning">
                <h4 class="modal-title" id="exampleModalLabel">
                    Thanh toán
                </h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form:form action="/checkout" name="frmTT" modelAttribute="donDH" method="post" class="row g-3">
            <div class="modal-body">
                <div class="container-fluid">
                        
                        <div class="mb-2">
                            <label for="inputName" class="form-label">Tên khách hàng</label>
                            <input type="text" class="form-control" id="inputName" name="tenkh" value="${user.hoten}">
                        </div>
                        <!-- <div class="text-danger mb-2 ms-2" style="margin-top: -0.2rem;" ng-show="frmTT.tenkh.$invalid">Vui lòng nhập tên của bạn</div> -->
                        
                        <div class="mb-2">
                            <select class="form-select" size="1" aria-label="size 3 select example">
                                <option>Hình thức thanh toán</option>
                                <option value="ck">Chuyển khoản</option>
                                <option value="tc" selected>Thanh toán trực tiếp</option>
                            </select>
                        </div>
                        
                        <div class="mb-2">
                            <label for="inputGia" class="form-label">Giá</label>
                            <input type="number" min="0" class="form-control" id="inputGia" name="tongHoaDon" value="${totalAmount + (totalAmount * 10 / 100)}" disabled="disabled">
                        </div>
                        <!-- <div class="text-danger mb-2 ms-2" style="margin-top: -0.2rem;" ng-hide="tongHoaDon = 0,0">Đơn hàng chưa có sản phẩm</div> -->
                        
                        <div class="mb-2">
                            <label for="inputSdt" class="form-label">Số điện thoại</label>
                            <input type="text" class="form-control" id="inputSdt" name="sodt" value="${user.sodt}" ng-model="sodt">
                        </div>
                        <!-- <div class="text-danger mb-2 ms-2" style="margin-top: -0.2rem;" ng-hide="frmTT.sodt.$valid">Vui lòng nhập số điện thoại</div> -->
                        
                        <div class="mb-2">
                            <label for="inputDiaChi" class="form-label">Địa chỉ</label>
                            <input type="text" class="form-control" id="inputDiaChi" name="diachi" value="${not empty user.diachi? user.diachi: ''}">
                        </div>
                        <!-- <div class="text-danger mb-2 ms-2" style="margin-top: -0.2rem;" ng-hide="frmTT.diachi.$valid">Vui lòng nhập địa chỉ giao hàng</div> -->
                        
                        <div class="mb-2">
                            <label for="exampleFormControlTextarea1" class="form-label">Ghi chú</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" name="ghichukh" rows="2"></textarea>
                        </div>
                    
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-success">Thanh Toán</button>
                <a type="submit" class="btn btn-secondary" data-bs-dismiss="modal">Close</a>
            </div>
            </form:form>
        </div>
        </div>
    </div>
</header>
</div>