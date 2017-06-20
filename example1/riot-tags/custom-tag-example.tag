<custom-tag-example>
  <div each={ item, index in opts.items } class="well" style="background: none;padding: 10px;padding-bottom: 10px;margin-bottom: 10px;">

    <!-- cabecalho -->
    <label class="label label-info">ITEM {index+1}</label>
    <div class="pull-right">
      <button class="btn btn-xs btn-default" onclick="{clear}">
        <i class="glyphicon glyphicon-trash"></i> Clear
      </button>
      <button class="btn btn-xs btn-danger" onclick="{remove}">
        <i class="glyphicon glyphicon-remove"></i> Remove
      </button>
    </div>
    <!-- /cabecalho -->

    <div class="form-horizontal">
      <div class="form-group">
        <div class="col-md-4 col-sm-12">
          <label class="control-label">Search field:</label>
          <div class="input-group">
            <input ref="idontknow" type="text" class="form-control input-sm" />
            <span class="input-group-btn">
              <button class="btn btn-default btn-sm" onclick="{search}">Search</button>
            </span>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <label class="control-label">Label 1:</label>
          <input type="text" class="form-control input-sm" />
        </div>
        <div class="col-md-4 col-sm-6">
          <label class="control-label">Label 2:</label>
          <input type="text" class="form-control input-sm" />
        </div>
        <div class="col-md-4 col-sm-6 col-xs-6">
          <label class="control-label">Label 3:</label>
          <input type="text" class="form-control input-sm" />
        </div>
        <div class="col-md-2 col-sm-3 col-xs-3">
          <label class="control-label">Label 4:</label>
          <input class="form-control input-sm" type="text" />
        </div>
        <div class="col-md-2 col-sm-3 col-xs-3">
          <label class="control-label">Label 5:</label>
          <input type="text" class="form-control input-sm" />
        </div>
      </div>
      <!-- /form-group -->
    </div>
    <!-- /form-horizontal -->
  </div>
  <!-- /locker-white-well (riot each) -->

  <!-- add button -->
  <div class="row">
    <div class="col-md-12">
      <div class="pull-rightt">
        <a href="#" class="btn btn-xs btn-success" onclick="{add}">
          <i class="glyphicon glyphicon-plus"></i> Add
        </a>
      </div>
    </div>
  </div>
  <!-- / add button -->

  <script>
    this.items = opts.items

    add(e) {
      e.preventDefault()
      this.items.push({})
    }

    remove(e) {
      e.preventDefault()
      this.items.splice(e.item.index, 1)
      if (this.items.length <= 0)
        this.items.push({})
    }

    clear(e) {
      e.preventDefault()
      alert('not implemented')
    }

    search(e) {
      e.preventDefault()
      alert('not implemented')
      //var idontknow = this.refs.idontknow[0].value
      //alert(idontknow)
    }
  </script>

</custom-tag-example>