<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head></head>
<body>
<main style="padding: 20px; font-family: Arial, sans-serif; background-color: #f4f4f4;">

	<form id="form-add-car-3">
    <div style="margin-bottom: 20px;">
        <label for="base-price" style="display: block; margin-bottom: 5px;">Set base price for your car:</label>
        <input type="text" id="base-price" name="base-price" style="width: 200px; padding: 8px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;">
        <span style="margin-left: 10px;">VND/Day</span>
    </div>

    <div style="margin-bottom: 20px;">
        <label for="deposit" style="display: block; margin-bottom: 5px;">Required deposit:</label>
        <input type="text" id="deposit" name="deposit" style="width: 200px; padding: 8px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;">
        <span style="margin-left: 10px;">VND</span>
    </div>

    <div style="margin-bottom: 20px;">
        <label style="display: block; margin-bottom: 5px;">Terms of use:</label>
        <div style="display: flex; flex-wrap: wrap;">
        	<c:forEach var="item" items="${listTOU}">
	            <div style="margin-right: 20px;">
	                <input type="checkbox" class="tou" name="tou" value="${item.id }">
	                ${item.name}
<!-- 	                <label for="no-smoking">No smoking</label> -->
	            </div>
        	</c:forEach>
        </div>
        <div style="margin-top: 10px;">
            <label for="other-specify" style="display: block; margin-bottom: 5px;">Please specify:</label>
            <textarea id="other-specify" name="other-specify" style="width: 100%; height: 100px; padding: 8px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; resize: vertical;"></textarea>
        </div>
    </div>

    <div style="margin-top: 20px; display: flex; justify-content: space-between;">
        <button type="button" class="cancel" id="btn-cancel" style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; background-color: #ccc; color: #333; margin-right: 10px;">Cancel</button>
        <button type="submit" class="next" style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; background-color: #4caf50; color: #fff;">Next</button>
    </div>
    </form>
</main>
</body>
</html>
