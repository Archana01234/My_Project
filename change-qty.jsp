<%@page import="com.dao.CartDao"%>
<%@page import="com.bean.Cart"%>
<%
	int cid=Integer.parseInt(request.getParameter("cid"));
	int product_qty=Integer.parseInt(request.getParameter("product_qty"));
	
	Cart c=CartDao.getCart(cid);
	int product_price=c.getProduct_price();
	int total_price=product_qty*product_price;
	c.setProduct_qty(product_qty);
	c.setTotal_price(total_price);
	CartDao.updateCart(c);
	response.sendRedirect("cart.jsp");
%>