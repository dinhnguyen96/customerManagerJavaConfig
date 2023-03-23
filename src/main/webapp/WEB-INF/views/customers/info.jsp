<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="customerUpdate" value="/customers/customerUpdate"/>
<form:form action="${customerUpdate}" method="post" modelAttribute="customer">
<fieldset>
    <legend>Customer Information</legend>
    <form:input type="hidden" name="id" path="id"/>
    <table>
        <tr>
            <td>Name</td>
            <td>
                <form:input type="text" path="name"/>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <form:input type="text" path="email"/>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <form:input type="text" path="address"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Update">
            </td>
        </tr>
    </table>
</fieldset>
</form:form>
<a href="<c:url value="/customers/"/>">Back to list</a>