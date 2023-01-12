%include('header_init.tpl', heading='Manage your qualitative attributes')

<h2>List of current attributes:</h2>
<table class="table table-striped">
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
<br />

<div id="add_attribute" style="width:50%;margin-left:25%;margin-bottom:50px;">
    <h2> Add a new qualitative attribute: </h2>

    <div class="form-group">
        <label for="att_name">Name :</label>
        <input type="text" class="form-control" id="att_name" placeholder="Name">
    </div>
	
	<h3> Please rank the values by order of preference: </h3>

    <div class="form-group">
        <label for="att_value_worst">Least preferred value:</label>
        <input type="text" class="form-control" id="att_value_worst" placeholder="Worst value">
    </div>
	
	<div class="form-group">
        <label for="att_value_med">Intermediary value(s):</label>
			<input type="button" class="btn btn-outline-dark" id="add_value_med" value="Add an item"/>   
			<input type="button" class="btn btn-outline-dark" id="del_value_med" value="Delete last item"/>
			<ol id="list_med_values_quali">
				<li class="col-auto"><input type="text" class="form-control col-auto" id="att_value_med_1" placeholder='Intermediary Value 1'/></li>
			</ol>
    </div>
	
    <div class="form-group">
        <label for="att_value_best">Most preferred value:</label>
        <input type="text" class="form-control" id="att_value_best" placeholder="Best value">
    </div>
		
    <button type="submit" class="btn btn-outline-dark" id="submit">Submit</button>

</div>

%include('header_end.tpl')
%include('js.tpl')




<script src="{{ get_url('static', path='js/qualitative.js') }}"></script>

</body>

</html>
