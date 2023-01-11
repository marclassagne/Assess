%include('header_init.tpl', heading='Authentification')


<div class="alert alert-danger" role="alert" id="info" >
      Bad password !
</div>

<div class="alert alert-success" role="alert" id="success" >
      Welcome to Assess2
</div>

<div class="alert alert-success" role="alert" id="success_admin" >
      Welcome to Assess2 password administration panel
</div>


<div class="form-inline">
  <div class="form-group">
    <input type="text" class="form-control" id="password" placeholder="Password">
  </div>
  <button id="connect" class="btn btn-outline-dark">Connect</button>


</div>
<br/><br/>
<div class="alert alert-info" role="alert" id="info_admin" >
      Let the input box blank in order to delete the password
</div>

<div id="admin" >
   <div class="col-sm-5">
    <div id="admin_mdps">

    </div>
    <br/>
    <button id="add" class="btn btn-outline-dark"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Add password</button>
    <br/><br/>
    <button id="save" class="btn btn-outline-dark">Save</button>
    <br/><br/>
    <div class="alert alert-success" role="alert" id="success_save" >
          Passwords have been saved !
    </div>
    <div class="alert alert-danger" role="alert" id="fail_save" >
              Passwords have not been saved ! You are not administrator. Please check your password !
        </div>
   </div>


</div>



%include('header_end.tpl')

%include('js.tpl')

<script src="{{ get_url('static', path='js/authentification.js') }}"></script>

</body>

</html>
