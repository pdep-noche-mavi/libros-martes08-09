object nati{
	
	const biblioteca = [] //un set
	
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
		return biblioteca.first().nombre()
	}
	
	method leeVariado(){
		return biblioteca.asSet().size() > 3
	}
	
	//valoracion >=10
	method librosRecomendados(){
		return biblioteca.filter({unLibro => unLibro.valoracion()>=10})
	}
	
	method olvidarLibro(unLibro){
		biblioteca.remove(unLibro)
	}
	
	method olvidarPrimero(){
		biblioteca.remove(self.primerLeido())
	}
	
	
	
	
}

object harryPotter{
	var property nombre="Harry Potter - El Misterio del Principe Mestizo"
	const cantidadLectores=10500156
	
	method valoracion(){
		return cantidadLectores/1000000
	}
}

object seniorDeLosAnillos{
	var property nombre="El Señor de los Anillos - Las dos Torres"
	const cantidadPaginas=450
	
	method valoracion(){
		return cantidadPaginas/45
	}
}

object elPrincipito {
	var property nombre="El Principito"
	
	method valoracion(){
		return 15
	}
	
	
}

object losJuegosDelHambre {
	var property nombre="Los Juegos del Hambre"
	const votosPositivos=1600200
	const votosNegativos=300600
	
	method valoracion(){
		const coeficiente = votosPositivos-votosNegativos
		
		if(coeficiente<0){
			return 0
		}
		else
		{
			return coeficiente/100000
		}
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