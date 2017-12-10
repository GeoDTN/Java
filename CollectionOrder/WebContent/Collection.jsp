<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Client</title>
<s:head />
</head>
<body>
   <s:form action="addClient">
   <s:textfield name="id" label="id"/>
   <s:textfield name="codC	" label="codC	"/>
   <s:textfield name="ragC" label="ragC"/>
   <s:textfield name="indC" label="indC"/>
   <s:submit/>
   <hr/>
   <table>
      <tr>
         <td>id</td>
         <td>codC</td>
         <td>ragC</td>
          <td>indC</td>
          
      </tr>
      <s:iterator value="clients">	
         <tr>
            <td><s:property value="id"/></td>
            <td><s:property value="codC"/></td>
            <td><s:property value="ragC"/></td>
            <td><s:property value="indC"/></td>
           </tr>
      </s:iterator>	
   </table>
   </s:form>
</body>
</html>