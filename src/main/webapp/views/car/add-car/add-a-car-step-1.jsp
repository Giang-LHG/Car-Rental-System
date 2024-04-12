<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/car/css-input-file.css">
</head>
<body>
<main style="padding: 20px;">
    <h1>Add a car</h1>

    <p>Note: Please check your information carefully. You'll not be able to change the basic details of your car, which is based on the registration information.</p>
	<Form id="form-add-car-1">
		<div class="d-flex">
			<div class="col-6">
				<div >
					<label for="licensePlate" >License plate:</label>
					<br>
	            	<input type="text" id="licensePlate" name="licensePlate" value="${licensePlate}">
				</div>
		        <div >
		            <label for="productionYear" style="display: block; margin-bottom: 5px;">Production year:</label>
		            <select id="productionYear" name="productionYear">
		                <c:forEach var="year" begin="1990" end="2030" step="1">
		                	<option value="${year}" <c:if test="${currentYear eq year}">selected</c:if>>${year}</option>
		                </c:forEach>
		            </select>
		        </div>
		        <div id="set"></div>
				<div >
					<label for="brand" style="display: block; margin-bottom: 5px;">Brand name:</label>
		            <select id="brand" name="brand" required onchange="selectBrand()">
		                <option value="">Select brand</option>
		                <c:forEach var="item" items="${brands }">
		                	<option value="${item.id}" <c:if test="${brandId eq item.id}">selected</c:if>>
		                		${item.name}
		                	</option>
		                </c:forEach>
		            </select>
				</div>
				<div >
		            <label>Transmission:</label>
		            <div style="margin-right: 20px;">
		                <input type="radio" id="automatic" name="transmission" value="1" checked>
		                <label for="automatic">Automatic</label>
		                <input type="radio" id="manual" name="transmission" value="0">
		                <label for="manual">Manual</label>
		            </div>
        		</div>
			</div>
			<div class="col-6">
				<div >
		            <label for="model" style="display: block; margin-bottom: 5px;">Model:</label>
		            <select id="model" name="model" required  onchange="selectBrand()">
		                <option value="">Select model</option>
		                <c:forEach var="item" items="${models}">
		                	<option value="${item.id}" <c:if test="${modelId eq item.id}">selected</c:if>>${item.name}</option>
		                </c:forEach>
		            </select>
		        </div>
				<div >
		            <label for="color" style="display: block; margin-bottom: 5px;">Color:</label>
		            <select id="color" name="color" required >
		                <option value="">Select color</option>
		                <c:forEach var="item" items="${colors}">
		                	<option value="${item.id}" <c:if test="${colorId eq item.id}">selected</c:if>>${item.name}</option>
		                </c:forEach>
		            </select>
		        </div>
				<div >
		            <label for="seats" style="display: block; margin-bottom: 5px;">No. of seats:</label>
		            <select id="seats" name="seats" required >
		                <c:forEach var="item" items="${seats}">
		                	<option value="${item.id}" <c:if test="${seatId eq item.id}">selected</c:if>>${item.name}</option>
		                </c:forEach>
		            </select>
            	</div>
		        <div >
		            <label>Fuel:</label>
		            <div style="margin-right: 20px;">
		                <input type="radio" id="gasoline" name="fuel" value="0" checked>
		                <label for="gasoline">Gasoline</label>
		                <input type="radio" id="diesel" name="fuel" value="1">
		                <label for="diesel">Diesel</label>
		            </div>
		        </div>
			</div>
		</div>



<!--     <div> -->
<!--         <div style="width: calc(33.33% - 20px); display: inline-block; vertical-align: top; margin-right: 20px;"> -->
<!--              <label for="file-upload" class="custom-file-upload"> -->
<!-- 				<i class='fas fa-upload'></i> -->
<!-- 				<br> -->
<!--                 <span>Drag and drop</span> -->
<!--                 <br> -->
<!--                 <span>OR</span> -->
<!--                 <br> -->
<!--                 <span>Browse files</span> -->
<!-- 			</label> -->
<!-- 			<input id="file-upload" type="file" /> -->
<!--             <p style="text-align: center;">File type: DOC, DOCX, PDF, JPG, JPEG, PNG</p> -->
<!-- 			<!--  -->
<!-- 			<h3>Registration paper:</h3> -->
<!--             <div style="border: 2px dashed #ccc; padding: 20px; text-align: center; border-radius: 5px; margin-top: 10px;"> -->
<!--                 <img src="upload-icon.png" alt="Upload Icon" style="width: 50px; margin-bottom: 10px;"> -->
<!--                 <p>Drag and drop</p> -->
<!--                 <p>OR</p> -->
<!--                 <button style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer;">Browse files</button> -->
<!--             </div> -->
<!--             <p style="text-align: center;">File type: DOC, DOCX, PDF, JPG, JPEG, PNG</p> -->
<!--         </div> -->

<!--         <div style="width: calc(33.33% - 20px); display: inline-block; vertical-align: top; margin-right: 20px;"> -->
<!--             <h3>Certificate of inspection:</h3> -->
<!--             <div style="border: 2px dashed #ccc; padding: 20px; text-align: center; border-radius: 5px; margin-top: 10px;"> -->
<!--                 <img src="upload-icon.png" alt="Upload Icon" style="width: 50px; margin-bottom: 10px;"> -->
<!--                 <p>Drag and drop</p> -->
<!--                 <p>OR</p> -->
<!--                 <button style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer;">Browse files</button> -->
<!--             </div> -->
<!--             <p style="text-align: center;">File type: DOC, DOCX, PDF, JPG, JPEG, PNG</p> -->
<!--         </div> -->

<!--         <div style="width: calc(33.33% - 20px); display: inline-block; vertical-align: top;"> -->
<!--             <h3>Insurance:</h3> -->
<!--             <div style="border: 2px dashed #ccc; padding: 20px; text-align: center; border-radius: 5px; margin-top: 10px;"> -->
<!--                 <img src="upload-icon.png" alt="Upload Icon" style="width: 50px; margin-bottom: 10px;"> -->
<!--                 <p>Drag and drop</p> -->
<!--                 <p>OR</p> -->
<!--                 <button style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer;">Browse files</button> -->
<!--             </div> -->
<!--             <p style="text-align: center;">File type: DOC, DOCX, PDF, JPG, JPEG, PNG</p> -->
<!--         </div> -->
<!--     </div> -->

    <div style="margin-top: 20px; display: flex; justify-content: space-between;">
        <button type="button" class="cancel" id="btn-cancel" style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; background-color: #ccc; color: #333; margin-right: 10px;">Cancel</button>
        <button type="submit" class="next" id="btn-next-step-1" style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; background-color: #4caf50; color: #fff;">Next</button>
    </div>
	</Form>
</main>
	</body>
</html>


