%include('header_init.tpl', heading='Assess utility functions')

<h3 id="attribute_name"></h3>
<div id="select">
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>Attribute</th>
				<th>Type</th>
				<th>Method</th>
				<th>Utility function</th>
				<th>Assess another point</th>
				<th>Display utility function</th>
				<th>Reset assessements</th>
			</tr>
		</thead>
		<tbody id="table_attributes">
		</tbody>
	</table>
</div>
<div id="trees"></div>
<div id="charts">
	<h2>Select the utility function you want to use</h2>
</div>
<div id="charts_quali">
	<h2>Select your choice </h2>
</div>

<div id= "retour_quali" > <button type="button" class="btn btn-outline-dark comeback_quali" id = "update"> Go to main page </button> 
</div>
<div id= "attribute_name"></div>
<div id ="nouveaubloc"></div>

<div id="choix_fonction">
	<table class="table">
		<thead>
			<tr>
				
				<th>Your choice</th>
				<th>Update your choice</th>
			</tr>
		</thead>
		<tbody id="tableau_fct">
			
					<tr>
						
						<td id="ton_choix"></td>
						<td><button type="button" class="btn btn-outline-dark comeback" id = "update">Update</button> </td>
					</tr>
						
		</tbody>
	</table>
</div>
<div id="main_graph" class="col-lg-5"></div>
<div id="functions" class="width:100%"></div>
%include('header_end.tpl')
%include('js.tpl')
<script>
	var tree_image = '{{ get_url("static", path="img/tree_choice.png") }}';
</script>
<!-- Tree object -->
<script src="{{ get_url('static', path='js/tree.js') }}"></script>

<script src="{{ get_url('static', path='js/questions.js') }}"></script>

<!-- Library to copy into clipboard -->
<script src="{{ get_url('static', path='js/clipboard.min.js') }}"></script>
<style>
	table {
	  font-family: arial, sans-serif;
	  border-collapse: collapse;
	  width: 100%;
	}
	</style>
</body>
</html>
