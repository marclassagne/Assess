%include('header_init.tpl', heading='Settings')
<div class="alert alert-success" role="alert" id="settings_modified" >
      The settings have been succesfully modified
</div>

<form id="settings">
    <div class="form-group">
        <label for="decimals_equations">Number of decimals in equations</label>
        <input type="number" min=0 step=1 class="form-control form-control-inline" id="decimals_equations" aria-describedby="decimals_equations_help" />
        <small id="decimals_equations_help" class="form-text text-muted">Type the number of decimals in displayed equations (default: 3)</small>
    </div>
    <div class="form-group">
        <label for="decimals_dpl">Number of decimals in DPL and Excel equations</label>
        <input type="number" min=0 step=1 class="form-control form-control-inline" id="decimals_dpl" aria-describedby="decimals_dpl_help" />
        <small id="decimals_dpl_help" class="form-text text-muted">Type the number of decimals displayed in DPL and Excel equations (default: 3)</small>
    </div>
    <div class="form-group">
        <label for="proba_ce">Probability of CE method</label>
        <input type="number" min=0 step=0.01 class="form-control form-control-inline" id="proba_ce" aria-describedby="proba_ce_help" />
        <small id="proba_ce_help" class="form-text text-muted">Type the probability used in the certainty equivalent method (default: 0.3)</small>
    </div>
    <div class="form-group">
        <label for="proba_le">Probability of LE method</label>
        <input type="number" min=0 step=0.01 class="form-control form-control-inline" id="proba_le" aria-describedby="proba_le_help" />
        <small id="proba_le_help" class="form-text text-muted">Type the probability used in the lottery equivalents method (default: 0.3)</small>
    </div>
    <div class="form-group">
        <p><strong>Select the language used in Excel export and displayed equations (default: english)</strong></p>
        <label class="form-check-inline"><input type="radio" class="form-check-input" name="language" id="english" value="english"> English</label>
        <label class="form-check-inline"><input type="radio" class="form-check-input" name="language" id="french" value="french"> French</label>
    </div>
    <div class="form-group">
        <p><strong>Select the type of display for assessements (default: trees)</strong></p>
        <label class="form-check-inline"><input type="radio" class="form-check-input" name="display" id="trees" value="trees"> Trees</label>
        <label class="form-check-inline"><input type="radio" class="form-check-input" name="display" id="pie_charts" value="pie_charts"> Pie charts</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

<br />


%include('header_end.tpl')
%include('js.tpl')

<script src="{{ get_url('static', path='js/settings.js') }}"></script>
