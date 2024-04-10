<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/car/css-input-file.css">
</head>
<body>

<main>
	<div>
		<label for="mileage">Mileage:</label> <input type="text" id="mileage"
			name="mileage" required>
	</div>

	<div>
		<label for="province" class="form-label fw-bold">Address</label>
		<div class="py-2">
			<select class="form-select" id="province" name="location1" size="1">
				<option selected="selected">City</option>
			</select>
		</div>

		<div class="py-2">
			<select class="form-select" id="district" name="location2" size="1">
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

	<div>
		<div>
			<p>Additional functions:</p>
			<div>
				<input type="checkbox" id="bluetooth" checked /> <label
					for="bluetooth">Bluetooth</label>
			</div>
			<div>
				<input type="checkbox" id="gps" /> <label for="gps">GPS</label>
			</div>
			<div>
				<input type="checkbox" id="camera" /> <label for="camera">Camera</label>
			</div>
			<div>
				<input type="checkbox" id="sunroof" checked /> <label for="sunroof">Sun
					roof</label>
			</div>
			<div>
				<input type="checkbox" id="child-lock" checked /> <label
					for="child-lock">Child lock</label>
			</div>
			<div>
				<input type="checkbox" id="child-seat" checked /> <label
					for="child-seat">Child seat</label>
			</div>
			<div>
				<input type="checkbox" id="dvd" /> <label for="dvd">DVD</label>
			</div>
			<div>
				<input type="checkbox" id="usb" /> <label for="usb">USB</label>
			</div>
		</div>
	</div>

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

	<div>
		<div>
			<h3>Front</h3>
			<label for="file-upload" class="custom-file-upload">
				<i class='fas fa-upload'></i>
				<br>
                <span>Drag and drop OR Select File</span>
                <br>
                <span>Select File</span>
			</label>
			<input id="file-upload" type="file" />			
		</div>

		<div>
			<h3>Back</h3>
			<label for="file-upload" class="custom-file-upload">
				<i class='fas fa-upload'></i>
				<br>
                <span>Drag and drop OR Select File</span>
                <br>
                <span>Select File</span>
			</label>
			<input id="file-upload" type="file" />		
		</div>

		<div>
			<h3>Left</h3>
			<label for="file-upload" class="custom-file-upload">
				<i class='fas fa-upload'></i>
				<br>
                <span>Drag and drop OR Select File</span>
                <br>
                <span>Select File</span>
			</label>
			<input id="file-upload" type="file" />		
		</div>

		<div>
			<h3>Right</h3>
			<label for="file-upload" class="custom-file-upload">
				<i class='fas fa-upload'></i>
				<br>
                <span>Drag and drop OR Select File</span>
                <br>
                <span>Select File</span>
			</label>
			<input id="file-upload" type="file" />		
		</div>
	</div>

	<p>Please include full 4 images of your vehicle</p>
	<p>File type: jpg, jpeg, png, gif</p>

	<div>
		<button type="button" class="cancel">Cancel</button>
		<button type="submit" class="next">Next</button>
	</div>
	<script src="<%=request.getContextPath()%>/resources/js/car/add-a-car.js"></script>
</main>

</body>
</html>

