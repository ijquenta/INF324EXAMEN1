<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class editar_c extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model("docente_model");
	}

	public function index($ci)
	{   
		//echo $ci;
         $data=$this->docente_model->obtener_docente($ci);// obtenemos los datos del docente a editar
		 //print_r($data);
		 //print_r('sds');
		 $this->load->view('docente_v/editar_v',$data);
	}

	public function actualizar($ci){
		
        //$xci = $this->input->post("ci");
		$xuser = $this->input->post("user");
		$xpassword = $this->input->post("password");
		$xid_rol = $this->input->post("id_rol");
		$xnombre = $this->input->post("nombre");
		$xpaterno = $this->input->post("paterno");
		$xfechanaci = $this->input->post("fechanaci");
		$xdepartamento = $this->input->post("departamento");
		$xcargah = $this->input->post("cargah");
		$xsigla = $this->input->post("sigla");
		// los guardamo en arrays data 
		$data_u = array("user"=>$xuser,
					    "password"=>$xpassword,
					    "id_rol"=>$xid_rol,
					   );
		$data_p = array("nombre"=>$xnombre,
		                "paterno"=>$xpaterno,
		                "fechanaci"=>$xfechanaci,
					    "departamento"=>$xdepartamento
		               );
		$data_d = array("cargah"=>$xcargah,
		                "sigla"=>$xsigla
		               );
		// los mandamos al modelo docente y a la funcion actualizar usuario, persona, docente.
		$this->docente_model->actualizar_usuario($data_u,$ci);
		$this->docente_model->actualizar_persona($data_p,$ci);
		$this->docente_model->actualizar_docente($data_d,$ci);
		
		redirect(base_url()."Docentes"); // redireccionamos a la lista de docentes.
			 
	}
}
