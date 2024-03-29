%include('header_init.tpl', heading='Import Excel file')

<div class="alert alert-success" role="alert" id="import_ok" >
  File sucessfully imported
</div>

<div class="alert alert-danger" role="alert" id="import_fail" >
  Error during importation <br/>
  {{data_fail}}
</div>


<form action="/upload" method="post" enctype="multipart/form-data">
  <div class="mb-3">
    <label class="form-label" for="customFile">File input</label>
    <input type="file" name="upload" class="form-control" id="customFile">
    <p class="help-block">Only unmodified .xlsx files generated by ASSESS 2 are supported.</p>
  </div>
  <button type="submit" class="btn btn-outline-dark">Submit</button>
</form>



%include('header_end.tpl')

%include('js.tpl')

<script type="text/javascript">
  $(function() {
  $("#import_ok").hide();
  $("#import_fail").hide();

  var success={{success}}
  if(success==true)
  {
    var data='{{!data}}';
    console.log("test");
    console.log(JSON.parse(data));
    $("#import_ok").show();
    localStorage.setItem("assess_session", data);
  }
  else
  {
    $("#import_fail").show();
  }

  });
</script>


</body>

</html>
