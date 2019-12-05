<%-- 
    Document   : index.jsp
    Created on : Nov 28, 2019, 6:16:20 AM
    Author     : daoquyet
--%>

<%@page import="database.DapAnDB"%>
<%@page import="model.DapAn"%>
<%@page import="java.util.List"%>
<%@page import="model.De" %>
<%@page import="database.DeDB" %>
<%@page import="model.DapAn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title Page</title>

    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/website.css" rel="stylesheet">
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.3/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    
    <div class="container">     
      <!--header-->
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                
                <a href="index.jsp"><img src="images/logo.png" /></a>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-top:40px ">
                

            </div>
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4" style="padding-top:60px;padding-left:160px  ">
                <a href="dangky.jsp"><button type="button" class="btn btn-info">Đăng Ký</button></a>
                
                <a href="dangnhap.jsp"><button type="button" class="btn btn-danger">Đăng Nhập</button></a>
                
            </div>
            
            
            
            
          </div>
          
        </div>
     
       <!--end header-->
        <!--menu-->
      <div class="row" style="background-color: bisque;">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="container">
                <ul class="nav nav-tabs" >  
                    <li class="nav-item">
                      <a href="index.jsp" class="nav-link active">Trang Chủ</a>
                    </li>
                    <li role="presentation" class="dropdown">
                      <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                        Lớp Học<span class="caret"></span>
                      </a>
                      <ul class="dropdown-menu">
                          <li class="nav-item">
                              <a href="#" class="nav-link active">Lớp 6</a>
                            </li>
                      
                          <li class="nav-item">
                              <a href="#" class="nav-link active">Lớp 7</a>
                            </li>
                      
                          <li class="nav-item">
                              <a href="#" class="nav-link active">Lớp 8</a>
                            </li>
                      
                          <li class="nav-item">
                              <a href="#" class="nav-link active">Lớp 9</a>
                            </li>
                      </ul>              
                     </li>
                     <!--end lop hoc begin kiem tra-->      
                     <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                          Kiểm Tra<span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="nav-item">
                                <a href="#" class="nav-link active">Giữ HK I</a>
                              </li>
                        
                            <li class="nav-item">
                                <a href="#" class="nav-link active">Cuối HK I</a>
                              </li>
                        
                            <li class="nav-item">
                                <a href="#" class="nav-link active"> Giữa HK II </a>
                              </li>
                       
                            <li class="nav-item">
                                <a href="#" class="nav-link active">Cuối HK II</a>
                              </li>
                        </ul>              
                       </li>
                     <!-- end kiem tra-->
                    <li class="nav-item">
                      <a href="#" class="nav-link active">Thi Đấu</a>
                    </li>       
                    <li class="nav-item">
                      <a href="#" class="nav-link">Giói Thiệu</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link disabled">Giói Thiệu</a>
                    </li>
                 </ul>
             
                </div>
        </div>
      </div>
       <!--end menu-->
        
    
    <!--begin content-->
      
      <section>
          
           <%
         
                List<De> list = DeDB.getAll();
                for(De sp:list){
            %>    
                <div class="row" >
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <h3 style="margin-left:200px " >  
                         <%= sp.getTieuDe() %>
                        </h3>
                    </div>
                 </div>
                <div class="row">
                    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2"  >
                        <h3 style="padding-top:90px;padding-left: 60px"><%= sp.getMaDe() %> </h3>  
                    </div>
                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8" >
                        <h3> <%= sp.getNoiDung() %></h3>
                        
                    </div>
                   
                    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
            
                    </div>
                    
                 </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
                        <b style="margin-left: 700px"> <%= sp.getTacGia() %></b>
                       
                    </div>
                 </div>
                 <div class="row">
                     <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                        
                    </div>
                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8" >
                        <b ><%= sp.getChuThich() %></b>
                        
                    </div>
                   
                    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
            
                    </div>
                    
                 </div>
            <%         
                }
            %>     
      </section> 
      <!-- cau tra loi-->
      <section>
          <div >   
              <hr >
              <input type="button" value="Bat dau lam" onclick="demNguoc()">
              <em id="dongHo" style="font-family: fantasy; font-family: cursive;font-size:70px;color: red "></em>
              <em id="htg" style="color: #ff6600"></em>
              <em id="kq" style="color: red"></em>
          </div>
           <%
         
                List<DapAn> lt = DapAnDB.getAll();
                int i=1;
                int z=100;
                int id=1;
                String tl1;
                String tl2;
                String tl3;
                String []data1;
                String []data2;
                String []data3;
                for(DapAn da:lt){
                    data1=da.getTraLoi1().split("\\.");
                    tl1=data1[0];
                    
                    data2=da.getTraLoi2().split("\\.");
                    tl2=data2[0];
                    
                    data3=da.getTraLoi3().split("\\.");
                    tl3=data3[0];
            %>    
                <div class="row" >
                    
                    
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">                        
                        <h3 style="margin-left:270px" />  
                         <%= i+"/" %>
                         <%= da.getCauHoi() %>
                        
                        </h3>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <h4 style="margin-left:350px " > 
                            <input  onclick="hamdautien('<%= id %>','<%= z %>','<%= i %>')" type="radio" value="<%= "A,"+da.getDapAn() %>" name="<%= i %>"  id="<%= id %>">
                         <% id++; %>
                            
                            <%= da.getTraLoi1() %>
                            
                        </h3>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <h4 style="margin-left:350px " > 
                            <input onclick="hamdautien('<%= id %>','<%= z %>','<%= i %>')" type="radio" value="<%= "B,"+da.getDapAn() %>" name="<%= i %>"  id="<%= id %>">
                            <% id++; %>
                            <%= da.getTraLoi2() %>
                        </h4>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <h4 style="margin-left:350px " > 
                            <input onclick="hamdautien('<%= id %>','<%= z %>','<%= i %>')" type="radio" value="<%= "C,"+da.getDapAn() %>" name="<%= i %>"  id="<%= id %>">
                            <% id++; %>
                            <%= da.getTraLoi3() %>
                        </h4>
                        <em id="<%= z %>" style="margin-left:300px ; color: red"> </em>
                         <% z++; %>
                    </div>
                   
                                                  
                        
                        
                 </div>
                
            <%   
                i++;
                }
            %>   
            <div >
                <input type="text"  id="vd1" name="xxx" value="okok"  >
                <input type="button" onclick="xyly_An()">
            </div>
      </section>
    <!--end content-->
      <footer  style="background-color:darkkhaki">
          
            
              
              <div class="row">
                  <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                      Tiếng việt Lớp 6
                  </div>
                  <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                        Tiếng việt Lớp 7
                 </div>
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                        Tiếng việt Lớp 8
                </div>
                
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                        Tiếng việt Lớp 9
                </div>
                    
                     
              
              
              
          </div>
          <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    Bản Quyền : Nhóm 6 -Phiên bản 1.0
                </div>
            </div>
          <br>
      </footer>    
   
    <!--end container-->
    </div>
  
    <!-- jQuery -->
    <script src="jquery/jquery.min.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="jquery/XuLyTinhDiem.js"></script>
  </body>
</html>

