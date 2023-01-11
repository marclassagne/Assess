%include('header_init.tpl', heading='Manage your attributes')

<h2>List of current attributes:</h2>
<table class="table">
    <thead>
        <tr>
            <th style='width:50px;'>State</th>
			<th>Type</th>
            <th>Attribute name</th>
            <th>Unit</th>
            <th>Values</th>
            <th>Method</th>
            <th>Mode</th>
            <th>Edit</th>
            <th><button type="button" class="btn btn-danger del_simu"><img src='/static/img/delete.ico' style='width:16px;'/></button></th>
        </tr>
    </thead>
    <tbody id="table_attributes">
    </tbody>
</table>

<br />

<div id="add_attribute" style="width:50%;margin-left:25%;margin-bottom:25px;">
    <h2> Add a new attribute: </h2>
	
	<div id="button_type" style="text-align:center;">
		<button type="button" class="btn btn-outline-dark btn-lg" id="button_Quantitative">Quantitative</button>
		<button type="button" class="btn btn-outline-dark btn-lg" id="button_Qualitative">Qualitative</button>
	</div>
	
    <!------------ FORM FOR A QUANTITATIVE ATTRIBUTE ------------>

	<div id="form_quanti">
		<div class="form-group" id="quantiname">
			<label for="att_name_quanti">Name:</label>
			
			
		</div>

		<div class="form-group">
			<label for="att_unit_quanti">Unit:</label>
			<input type="text" class="form-control" id="att_unit_quanti" placeholder="Unit">
		</div>
		<div class="form-group">
			<label for="att_value_min_quanti">Min value:</label>
			<input type="text" class="form-control" id="att_value_min_quanti" placeholder="Value">
		</div>
		<div class="form-group">
			<label for="att_value_max_quanti">Max value:</label>
			<input type="text" class="form-control" id="att_value_max_quanti" placeholder="Value">
		</div>
		<div class="form-group">
			<label for="att_method_quanti">Method:</label>
			<select class="form-control" id="att_method_quanti">
				<option value="PE">Probability Equivalence</option>
				<option value="CE_Constant_Prob">Certainty Equivalence - Constant Probability</option>
				<option value="CE_Variable_Prob">Certainty Equivalence - Variable Probability</option>
				<option value="LE">Lottery Equivalence</option>
			</select>
		</div>
		<div class="checkbox">
			<label><input name="mode" type="checkbox" id="att_mode_quanti" placeholder="Mode"> The min value is preferred (decreasing utility function)</label>
		</div>

		<button type="submit" class="btn btn-success" id="submit_quanti">Submit</button>
	</div>
	
	<!------------ FORM FOR A QUALITATIVE ATTRIBUTE ------------>
	<div id="form_quali">
		<div class="form-group" id="qualiname" >
			<label for="att_name_quali">Name:</label>
			
		</div>
		
		<h3> Please rank the values by order of preference: </h3>

		<div class="form-group">
			<label for="att_value_min_quali">Least preferred value:</label>
			<input type="text" class="form-control" id="att_value_min_quali" placeholder="Worst value">
		</div>
		
		<div class="form-group">
			<label for="att_value_med_quali">Intermediary value(s):</label>
				<input type="button" class="btn btn-outline-dark" id="add_value_med_quali" value="Add an item"/>   
				<input type="button" class="btn btn-outline-dark" id="del_value_med_quali" value="Delete last item"/>
				<ol id="list_med_values_quali">
					<li class="col-auto"><input type="text" class="form-control col-auto" id="att_value_med_quali_1" placeholder='Intermediary Value 1'/></li>
				</ol>
		</div>
		
		<div class="form-group">
			<label for="att_value_max_quali">Most preferred value:</label>
			<input type="text" class="form-control" id="att_value_max_quali" placeholder="Best value">
		</div>
			
		<button type="submit" class="btn btn-success" id="submit_quali">Submit</button>
	</div>
	
	
</div>

%include('header_end.tpl')
%include('js.tpl')
<script src="{{ get_url('static', path='js/atrtibutes.js') }}"></script>
</body>
</html>

