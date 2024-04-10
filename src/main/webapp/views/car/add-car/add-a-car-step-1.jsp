<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/car/css-input-file.css">
</head>
<body>
		
<jsp:include page="../../header.jsp"></jsp:include>
<main style="padding: 20px;">
    <h1>Add a car</h1>

    <p>Note: Please check your information carefully. You'll not be able to change the basic details of your car, which is based on the registration information.</p>
	<Form>
		<div class="d-flex">
			<div class="col-6">
				<div >
					<label for="license-plate" >License plate:</label>
					<br>
	            	<input type="text" id="license-plate" name="license-plate">
				</div>
		        <div >
		            <label for="production-year" style="display: block; margin-bottom: 5px;">Production year:</label>
		            <select id="production-year" name="production-year" required >
		                <option value="">Select year</option>
		                <!-- Add options for production years -->
		            </select>
		        </div>
				<div >
					<label for="brand" style="display: block; margin-bottom: 5px;">Brand name:</label>
		            <select id="brand" name="brand" required >
		                <option value="">Select brand</option>
		                <!-- Add options for brand names -->
		            </select>
				</div>
				<div >
		            <label>Transmission:</label>
		            <div style="margin-right: 20px;">
		                <input type="radio" id="automatic" name="transmission" value="automatic" checked>
		                <label for="automatic">Automatic</label>
		                <input type="radio" id="manual" name="transmission" value="manual">
		                <label for="manual">Manual</label>
		            </div>
        		</div>
			</div>
			<div class="col-6">
				<div >
		            <label for="model" style="display: block; margin-bottom: 5px;">Model:</label>
		            <select id="model" name="model" required >
		                <option value="">Select model</option>
		                <!-- Add options for models -->
		            </select>
		        </div>
				<div >
		            <label for="color" style="display: block; margin-bottom: 5px;">Color:</label>
		            <select id="color" name="color" required >
		                <option value="">Select color</option>
		                <!-- Add options for models -->
		            </select>
		        </div>
				<div >
		            <label for="seats" style="display: block; margin-bottom: 5px;">No. of seats:</label>
		            <select id="seats" name="seats" required >
		                <option value="">Select seats</option>
		                <!-- Add options for number of seats -->
		            </select>
            	</div>
		        <div >
		            <label>Fuel:</label>
		            <div style="margin-right: 20px;">
		                <input type="radio" id="gasoline" name="fuel" value="gasoline" checked>
		                <label for="gasoline">Gasoline</label>
		                <input type="radio" id="diesel" name="fuel" value="diesel">
		                <label for="diesel">Diesel</label>
		            </div>
		        </div>
			</div>
		</div>
		<div></div>
	</Form>



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
<!-- 			<!--  --> -->
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
        <button type="button" class="cancel" style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; background-color: #ccc; color: #333; margin-right: 10px;">Cancel</button>
        <button type="submit" class="next" style="padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; background-color: #4caf50; color: #fff;">Next</button>
    </div>
</main>
	</body>
</html>


