<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class principal_c extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model("docente_model"); // cargamos el modelo docente
	}

	public function index() 
	{	
		$data = array("data"=>$this->docente_model->obtener_docentes());
         //print_r($data);
		$this->load->view('docente_v/principal_v',$data); // lo enviamos a la vista de docente en la funcion obtener docentes para mostrarlos
	   
	}

	public function eliminar_d($ci){
		$this->docente_model->eliminar($ci);
		redirect(base_url()."Docentes");
	}
	
}
