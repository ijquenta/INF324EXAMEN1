<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class adicionar_c extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model("docente_model"); // agregamos el modelo 
	}

	public function index()
	{
		$this->load->view('docente_v/adicionar_v'); // mandamos a la vista de docente
	}
    
	public function guardar(){  // funcion para guardar a un docente.
		
		// por el metodo POST recibimos los datos para crear a un usuario, persona, docente.
		$xci = $this->input->post("ci");
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
		$data_u = array("ci"=>$xci,
		                "user"=>$xuser,
					    "password"=>$xpassword,
					    "id_rol"=>$xid_rol,
					   );
		$data_p = array("ci"=>$xci,
			            "nombre"=>$xnombre,
		                "paterno"=>$xpaterno,
		                "fechanaci"=>$xfechanaci,
					    "departamento"=>$xdepartamento
		               );
		$data_d = array("ci"=>$xci,
			            "cargah"=>$xcargah,
		                "sigla"=>$xsigla
		               );
		// los mandamos al modelo docente y a la funcion guardar usuario, persona, docente.
		$this->docente_model->guardar_usuario($data_u);
		$this->docente_model->guardar_persona($data_p);
		$this->docente_model->guardar_docente($data_d);
		
		redirect(base_url()."Docentes"); // redireccionamos a la lista de docentes.
	}
}
