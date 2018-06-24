<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminEmpleadoController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = true;
			$this->table = "empleado";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Cédula","name"=>"ci"];
			$this->col[] = ["label"=>"Nombres","name"=>"nombres"];
			$this->col[] = ["label"=>"Fecha Nacimiento","name"=>"fecha_nacimiento"];
			$this->col[] = ["label"=>"Genero","name"=>"genero"];
			$this->col[] = ["label"=>"Celular","name"=>"celular"];
			$this->col[] = ["label"=>"Direccion","name"=>"direccion"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Cédula','name'=>'ci','type'=>'text','validation'=>'required|min:10|max:10|unique:empleado','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Nombres y Apellidos','name'=>'nombres','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Fecha Nacimiento','name'=>'fecha_nacimiento','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Genero','name'=>'genero','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Celular','name'=>'celular','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Direccion','name'=>'direccion','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Cargo','name'=>'cargo','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Cédula','name'=>'ci','type'=>'text','validation'=>'required|min:10|max:10|unique:ci','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Nombres y Apellidos','name'=>'nombres','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Fecha Nacimiento','name'=>'fecha_nacimiento','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Genero','name'=>'genero','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Celular','name'=>'celular','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Direccion','name'=>'direccion','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Cargo','name'=>'cargo','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
            $this->script_js = "
              $(function() {
              
              //Your custom javascript/jquery goes here
                 function validateID (id) {
        
                    var region = id.substring(0,2);
                    var third_digit = id.substring(2,3);
            
            
                    //Validate ID and RUC for natural person
                    if (region >= 1 && region <= 24 && (third_digit >= 0 && third_digit < 6) ) {
            
                        var last_digit = id.substring(9,10);
            
                        var even = parseInt(id.substring(1,2)) + parseInt(id.substring(3,4)) + parseInt(id.substring(5,6)) + parseInt(id.substring(7,8));
            
                        var first_digit = id.substring(0,1);
                        var first_digit = (first_digit * 2);
                        if (first_digit > 9){
                            var first_digit = (first_digit - 9);
                        }
            
                        //var third_digit = id.substring(2,3);
                        var third_digit = (third_digit * 2);
                        if (third_digit > 9){
                            var third_digit = (third_digit - 9);
                        }
            
                        var fifth_digit = id.substring(4,5);
                        var fifth_digit = (fifth_digit * 2);
                        if (fifth_digit > 9){
                            var fifth_digit = (fifth_digit - 9);
                        }
            
                        var seventh_digit = id.substring(6,7);
                        var seventh_digit = (seventh_digit * 2);
                        if (seventh_digit > 9){
                            var seventh_digit = (seventh_digit - 9);
                        }
            
                        var nineth_digit = id.substring(8,9);
                        var nineth_digit = (nineth_digit * 2);
                        if (nineth_digit > 9){
                            var nineth_digit = (nineth_digit - 9);
                        }
            
                        var odd = first_digit + third_digit + fifth_digit + seventh_digit + nineth_digit;
            
                        var total = (even+ odd);
            
                        var first_digit_total = String(total).substring(0,1);
            
                        var closest_ten = (parseInt(first_digit_total)+1) * 10;
            
                        var validator_digit = closest_ten - total;
            
                        if (validator_digit == 10){
                            var validator_digit = 0;
                        }
            
                        if (validator_digit == last_digit){
                            if (id.length == 10) {
                            //Valid ID
                            return true;
                            }
                            else if (id.length == 13) {
                                var branch = id.substring(10,13);
                                    if (branch == '001'){
                                        //Valid RUC for natural person
                                        return true;
                                    }
            
                            }
                        }
                        else{
                            //Invalid ID
                            return false;
                        }
            
            
                    }
            
                    //Validate RUC for private societies and foreings without ID
            
                    var region = id.substring(0,2);
                    var third_digit = id.substring(2,3);
            
                    if (region >= 1 && region <= 24 && (third_digit == 9) ) {
            
                        var coefficients = [4,3,2,7,6,5,4,3,2];
                        var tenth_digit = id.substring(9,10);
                        var branch = id.substring(10,13);
                        var total = 0;
                        
                        for (var i = 0 ; i < 9; i++) {
                            total += (parseInt(id.substring(i,i+1))*coefficients[i]);
                        }
            
                        var validator_digit = 11 - (total % 11);
            
                        if ((validator_digit == tenth_digit) && (branch == '001')){
                            //Valid RUC for private societies or foreign withoutID
                            return true;
                        }
                        else {
                            //Invalid RUC for private societies or foreign withoutID
                            return false;
                        }
            
            
                    }
            
                    var region = id.substring(0,2);
                    var third_digit = id.substring(2,3);
            
                    if (region >= 1 && region <= 24 && (third_digit == 6) ) {
            
                        var coefficients = [3,2,7,6,5,4,3,2];
                        var nineth_digit = id.substring(8,9);
                        var branch = id.substring(9,13);
                        var total = 0;
                        
                        for (var i = 0 ; i < 8; i++) {
                            total += (parseInt(id.substring(i,i+1))*coefficients[i]);
                        }
            
                        var validator_digit = 11 - (total % 11);
            
                        if ((validator_digit == nineth_digit) && (branch == '0001')){
                            console.log('Es ruc de persona publica o entidad estatal');
                            return true;
                        }
                        else {
                            console.log('Error de ruc persona publica o entidad estatal' + ',' + validator_digit + ',' + nineth_digit + ',' + branch + ',' + total+ ',');
                            return false;
                        }
            
            
                    }
                
                    return false;
            }
              
              ////////////////////////////////////////////////
              
              $(document).ready(function(){
                    $('#ci').bind('keydown',function(e){
                      if(e.keyCode==13 || e.keyCode == 9){
                        if(!validateID($('#ci').val())){
                        e.preventDefault();
                           swal('La Cédula que Ingresó Esta Incorrecta','','error');
                        }
                      }          
                      });//event ruc
                      
                      $('.form-horizontal').on('submit',function(e){
                        if(!validateID($('#ci').val())){
                            e.preventDefault();
                           swal('La Cédula que Ingresó Esta Incorrecta','','error');
                        }
                      });
                }); //document ready  
              });//fin function
            ";


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :) 


	}