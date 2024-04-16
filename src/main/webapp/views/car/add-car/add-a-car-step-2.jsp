<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/car/css-input-file.css"> --%>
</head>
<body>

	<main>
	<form id="form-add-car-2">
		<div class="d-flex justify-content-between">
				<div class="col-5">
					<label for="mileage">Mileage:</label> <input type="text"
						id="mileage" name="mileage" required>
					<div class="col-md">
						<div>
							<label for="province" class="form-label fw-bold">Address</label>
<!-- 							<div class="py-2"> -->
<!-- 								<input type="text" class="form-control" id="searchLocation" -->
<!-- 									name="searchLocation" placeholder="Search address" /> -->
<!-- 							</div> -->
							<div class="py-2">
								<select class="form-select" id="province" name="location1"
									size="1">
									<option selected="selected">City</option>
								</select>
							</div>

							<div class="py-2">
								<select class="form-select" id="district" name="location2"
									size="1">
									<option selected>District</option>
								</select>
							</div>

							<div class="py-2">
								<select class="form-select" id="ward" name="location3" size="1">
									<option selected>Commune</option>
								</select>
							</div>

							<div class="py-2">
								<input type="text" class="form-control" id="detailLocation"
									name="detailLocation" placeholder="Detail address" />
							</div>
						</div>
					</div>
				</div>
				<div class="col-5">
					<div>
						<label for="fuel-consumption">Fuel consumption:</label> <input
							type="text" id="fuel-consumption" name="fuel-consumption"
							placeholder="liter/100 km">
					</div>
					<div>
						<label for="description">Description:</label>
						<textarea id="description" name="description"
							placeholder="Description of your vehicle"></textarea>
					</div>
				</div>
		</div>

		<div>
			<div>
				<p>Additional functions:</p>
				<c:forEach var="item" items="${listFunctions}">
					<div>
						<input type="checkbox" class="functions" name="functions" value="${item.id }"/>${item.name}</label>
					</div>
				</c:forEach>
			</div>
		</div>

		<div>
			<div  style="width: calc(33.33% - 20px); display: inline-block; vertical-align: top; margin-right: 20px;">
				<h3>Front</h3>
				<label for="file-upload" class="custom-file-upload"> <i
					class='fas fa-upload'></i> <br> <span>Drag and drop OR
						Select File</span> <br> <span>Select File</span>
				</label> <input id="file-upload-front" type="file" />
			</div>

<!-- 			<div> -->
<!-- 				<h3>Back</h3> -->
<!-- 				<label for="file-upload" class="custom-file-upload"> <i -->
<!-- 					class='fas fa-upload'></i> <br> <span>Drag and drop OR -->
<!-- 						Select File</span> <br> <span>Select File</span> -->
<!-- 				</label> <input id="file-upload-back" type="file" /> -->
<!-- 			</div> -->

<!-- 			<div> -->
<!-- 				<h3>Left</h3> -->
<!-- 				<label for="file-upload" class="custom-file-upload"> <i -->
<!-- 					class='fas fa-upload'></i> <br> <span>Drag and drop OR -->
<!-- 						Select File</span> <br> <span>Select File</span> -->
<!-- 				</label> <input id="file-upload-left" type="file" /> -->
<!-- 			</div> -->

<!-- 			<div> -->
<!-- 				<h3>Right</h3> -->
<!-- 				<label for="file-upload" class="custom-file-upload"> <i -->
<!-- 					class='fas fa-upload'></i> <br> <span>Drag and drop OR -->
<!-- 						Select File</span> <br> <span>Select File</span> -->
<!-- 				</label> <input id="file-upload-right" type="file" /> -->
<!-- 			</div> -->
		</div>

		<p>Please include full 4 images of your vehicle</p>
		<p>File type: jpg, jpeg, png, gif</p>

		<div>
			<button type="button" class="cancel" id="btn-cancel" >Cancel</button>
			<button type="submit" class="next">Next</button>
		</div>
		</form>
		<script
			src="<%=request.getContextPath()%>/resources/js/car/add-a-car-step-2.js"></script>
	</main>

</body>
</html>

