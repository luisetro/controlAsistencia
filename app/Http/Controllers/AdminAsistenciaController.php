<?php namespace App\Http\Controllers;

	use App\Asistencias;
    use App\Configuracion;
    use App\Empleado;
    use Session;
	//use Request;
	use DB;
	use CRUDBooster;
	use Carbon\Carbon;
	use Illuminate\Http\Request;

	class AdminAsistenciaController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = false;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = false;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = false;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "asistencia";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Empleado","name"=>"empleado_id","join"=>"empleado,nombres"];
			$this->col[] = ["label"=>"Hora de Entrada","name"=>"h_inicio"];
			$this->col[] = ["label"=>"Hora de Salida","name"=>"h_fin"];
			$this->col[] = ["label"=>"Tipo","name"=>"tipo"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Empleado','name'=>'empleado_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'empleado,nombres'];
			$this->form[] = ['label'=>'Hora de Entrada','name'=>'h_inicio','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-10','value'=>Carbon::now()];
			//$this->form[] = ['label'=>'Hora de Entrada','name'=>'h_inicio','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-10','value'=>Carbon::now()];
			$this->form[] = ['label'=>'Hora de Salida','name'=>'h_fin','type'=>'datetime','validation'=>'date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Tipo','name'=>'tipo','type'=>'select','validation'=>'required','width'=>'col-sm-10','dataenum'=>'HORARIO NORMAL;HORAS EXTRA'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Empleado','name'=>'empleado_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'empleado,nombres'];
			//$this->form[] = ['label'=>'H Inicio','name'=>'h_inicio','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'H Fin','name'=>'h_fin','type'=>'datetime','validation'=>'date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Tipo','name'=>'tipo','type'=>'select','validation'=>'required','width'=>'col-sm-10','dataenum'=>'HORARIO NORMAL;HORAS EXTRA'];
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
                 $('#calendar').fullCalendar({
                 locale:'es'
                 });
                 
                 $('.fc-day').click(function(){
                    window.location.href = 'control-asistencia?fecha='+$(this).attr('data-date');

                 });
                 
                 $('.fc-prev-button').click(function(){
                    $('.fc-day').bind('click',function(){
                       window.location.href = 'control-asistencia?fecha='+$(this).attr('data-date');
                    });
                 });
                 $('.fc-next-button').click(function(){
                    $('.fc-day').bind('click',function(){
                       window.location.href = 'control-asistencia?fecha='+$(this).attr('data-date');
                    });
                 });                
                 
                 
              });// fin function
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

	    public function getIndex()
        {
            $data = [];
            $data['page_title'] = 'Vista General de Asistencia';

            //Create a view. Please use `cbView` method instead of view method from laravel.
            $this->cbView('asistencia.principal',$data);
            //return parent::getIndex(); // TODO: Change the autogenerated stub
        }

        public function getControlAsistencia(Request $request){
	        $empleado = Empleado::all();
            $asistencia = DB::table('asistencia')
                ->join('empleado','asistencia.empleado_id','=','empleado.id')
                ->select('asistencia.id','asistencia.empleado_id')
                ->where('fecha','=',$request->get('fecha'))
                ->get();

            foreach($empleado as $e){
                $exist = false;
                foreach($asistencia as $as){
                    if($as->empleado_id == $e->id){
                        //SE GENERO UNA ASISTENCIA POR ESTE EMPLEADO EN ESTE DIA
                        $exist = true;
                    }
                }
                if(!$exist){
                    $asis = new Asistencias();
                    $asis->empleado_id = $e->id;
                    $asis->fecha = $request->get('fecha');
                    $asis->save();
                }
            }
	        return view('asistencia.controlAsistencia',["fecha"=>$request->get("fecha")]);
        }

        public function empleados(Request $request){
            $empleado = DB::table('asistencia')
                ->join('empleado','asistencia.empleado_id','=','empleado.id')
                ->select('asistencia.id','nombres','h_inicio','h_fin','n_horas_extra')
                ->where('fecha','=',$request->get('fecha'))
                ->get();
            return response()->json($empleado);
        }

        public function marcarEntrada(Request $request){
            $items = json_decode($request->get("items"));

            foreach($items as $i){
                $asistencia = Asistencias::find($i->id);
                if($asistencia->h_inicio == NULL){
                    $asistencia->h_inicio = Carbon::now()->format('H:i:s');
                    $asistencia->save();
                }

            }
            return response()->json(true);
        }

        public function marcarSalida(Request $request){
            $items = json_decode($request->get("items"));
            $config = Configuracion::first();
            $horaSalida = $config->hora_salida;
            $horaActual = Carbon::now()->format('H:i:s');

            foreach($items as $i){
                $asistencia = Asistencias::find($i->id);

                if($asistencia->h_fin == NULL){
                    if($horaActual > $horaSalida){
                        $asistencia->n_horas_extra = $horaActual - $horaSalida;
                    }
                    $asistencia->h_fin = $horaActual;
                    $asistencia->save();
                }

            }
            return response()->json(true);
        }

        //By the way, you can still create your own method in here... :)


	}