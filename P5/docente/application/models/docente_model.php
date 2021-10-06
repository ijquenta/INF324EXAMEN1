<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class docente_model extends CI_Model {

    public function guardar_usuario($data_u){
        $this->db->query("ALTER TABLE usuario");
        $this->db->insert("usuario",$data_u);
    }
	public function guardar_persona($data_p){
        $this->db->query("ALTER TABLE persona");
        $this->db->insert("persona",$data_p);
    }
	public function guardar_docente($data_d){
        $this->db->query("ALTER TABLE docente");
        $this->db->insert("docente",$data_d);
    }
    // funcion para mostrar a los docentes tanto su usario, persona y datos del docente.
    public function obtener_docentes(){
        $this->db->select("u.ci, u.user, p.nombre, p.paterno, p.fechanaci, p.departamento, d.cargah, d.sigla");
        $this->db->from("usuario u, persona p, docente d");
		$this->db->where("u.ci = p.ci");
		$this->db->where("p.ci = d.ci");
        $resultado=$this->db->get();
        return $resultado->result();
    }
    // recuperamos el los datos del ci enviado.
    public function obtener_docente($ci){
        $this->db->select("u.ci, u.user, u.password, u.id_rol, p.nombre, p.paterno, p.fechanaci, p.departamento, d.cargah, d.sigla");
        $this->db->from("usuario u, persona p, docente d");
        $this->db->where("u.ci",$ci);
		$this->db->where("p.ci",$ci);
		$this->db->where("d.ci",$ci);

        $resultado=$this->db->get();
        return $resultado->row();
    }

    public function actualizar_usuario($data,$ci){
        $this->db->where("ci",$ci);
        $this->db->update("usuario",$data);
    }

	public function actualizar_persona($data,$ci){
        $this->db->where("ci",$ci);
        $this->db->update("persona",$data);
    }

	public function actualizar_docente($data,$ci){
        $this->db->where("ci",$ci);
        $this->db->update("docente",$data);
    }

    public function eliminar($ci){
        $this->db->where("ci",$ci);
        $this->db->delete("usuario");
    }
    
}
