package com.nttdata.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nttdata.models.Usuario;
import com.nttdata.services.UsuarioService;

@RestController
public class HomeController {
	
	@Autowired
	UsuarioService usuarioService;
	@Autowired
	UsuarioService productoService;
	
	@RequestMapping("/")
	//http://localhost:8080/
	// metodo inicial
	public String index() {
		return "Hola Clase";
	}
	
	@RequestMapping("/index")
	public String index2() {
		return "Hola Clase 2";
	}
	
	@RequestMapping("/everis")
	public String everis() {
		return "Ahora somos NttData";
	}
	
	@RequestMapping("/eliminar/usuario/{id}")
	public String eliminar(@PathVariable("id") Long id) {
		
		Usuario usuario = usuarioService.buscarUsuarioId(id);
		if(usuario !=null) {
			usuarioService.eliminarUsuario(id);
		}
		
		
		return "Usuario Eliminado";
		
	}

	
}