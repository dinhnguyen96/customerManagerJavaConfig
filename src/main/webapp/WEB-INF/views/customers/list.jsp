<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    table {
        border: 1px solid #000;
    }

    th, td {
        border: 1px dotted #555;
    }
</style>
<table>
    <caption>Customers List</caption>
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customers}">
        <tr>
            <td>
                <c:out value="${customer.id}"/>
            </td>
            <td>
                <a href="<c:url value="/customers/customerDetail/${customer.id}"/>">${customer.name}</a>
            </td>
            <td>
                <c:out value="${customer.email}"/>
            </td>
            <td>
                <c:out value="${customer.address}"/>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>