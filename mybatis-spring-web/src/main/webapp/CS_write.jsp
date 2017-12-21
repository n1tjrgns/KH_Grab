<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hompage_Name</title>

</head>
<body>
   <form name="frm" action="CS_write" method="post" > <!-- application(서버로 파일명만감)/multi-part(내용까지날림) 있음 -->
      <table> 
         <tr>
            <td>종류
            </td><td>
            <input type="text" name="csSort" size="50"  >            
            </td>
        
         </tr><tr>
               <td>제목</td> 
               <td><input type="text" name="csTitle" size="50" >
               </td>
         </tr><tr>
               <td>내용</td> 
               <td><textarea name="csContent" cols="67" rows="15"></textarea>
               </td>
        
         <tr>
               <td><input type="submit" value="추가"></td> 
               </tr>
      </table>
   </form>
</body>
</html>