class Lector{
	const nombre
	const biblioteca = [] 	
	method leerUnLibro(unLibro){
		biblioteca.add(unLibro)
	}
	
	method cuantosLeiste(){
		return biblioteca.size()
	}
	
	method ultimoLeido(){
		return biblioteca.last().nombre()
	}
	
	method primerLeido(){
		return biblioteca.first()
	}
	
	method leeVariado(){
		return biblioteca.asSet().size() > 3
	}
	
	
	method librosRecomendados(){
		return biblioteca.filter({unLibro => unLibro.valoracion()>=10})
	}
	
	method olvidarLibro(unLibro){
		biblioteca.remove(unLibro)
	}
	
	method olvidarPrimero(){
		biblioteca.remove(self.primerLeido())
	}
	

	


	method olvidarMalos(){
		biblioteca.removeAllSuchThat({unLibro => unLibro.valoracion()<=7})
	}
	
	method promedioValoracion(){
		return biblioteca.sum({unLibro => unLibro.valoracion()}) / self.cuantosLeiste()
	}


	method mejorLibro(){
		return biblioteca.max({unLibro => unLibro.valoracion()})
	}
	
	method peorLibro(){
		return biblioteca.min({unLibro => unLibro.valoracion()}) 
	}
	
	method empiezaConEl(){
		return biblioteca.find({unLibro => unLibro.nombre().take(2) == "El"})
	}
}

class HarryPotter{
	const property nombre
	var cantidadLectores
	
	method valoracion(){
		return cantidadLectores/1000000
	}
}

class BestSeller {
	var property nombre
	const votosPositivos
	const votosNegativos
	
	method valoracion(){
		const coeficiente = votosPositivos-votosNegativos
		
		return [0,coeficiente/100000].max()
	}
}

object venasAbiertasDeAmericaLatina{
	var property nombre="Venas Abiertas de America Latina"
	const fechaSalida = new Date(day = 30, month=6,year=1971)
	
	method valoracion(){
		return self.cantidadDeAnios()*0.3
	}
	
	method cantidadDeAnios(){
		const hoy = new Date()
		return hoy.year() - fechaSalida.year()
	}
}

object rayuela{
	var property nombre="Rayuela"
	
	method valoracion(){
		return self.cantidadLetras()*2
	}
	
	method cantidadLetras(){
		return nombre.size()
	}
}

object padreRicopadrePobre{
	var property nombre = "Padre Rico, Padre Pobre"
	const fechaSalida = new Date(day = 2, month=4, year=1997)
	const cantidadPaginas = 207
	
	method valoracion(){
		return cantidadPaginas/100 + self.cantidadDeAnios()/5
	}
	
	method cantidadDeAnios(){
		const hoy = new Date()
		return hoy.year() - fechaSalida.year()
	}
}

object laCabania{
	var property nombre = "La Cabaña"
	const fechaSalida = new Date(day = 3, month = 2, year= 2007)
	
	method valoracion(){
		return self.cantidadDeAnios()/3
	}
	
	method cantidadDeAnios(){
		const hoy = new Date()
		return hoy.year() - fechaSalida.year()
	}
}