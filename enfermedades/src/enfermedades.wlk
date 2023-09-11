class Enfermedad{
	var property celulasAmenazadas
	var property tipo
	
	method efecto(persona){
		if (tipo == "infecciosa"){
			persona.bajarTemperatura(celulasAmenazadas/10)
		}else{
			persona.disminuirCelulas(celulasAmenazadas)
		}
	}
	
	method reproducirse(){
		if (tipo == "infecciosa"){
			celulasAmenazadas *= 2 
		}
	}
	
	
	method esAgresiva(persona){
		return self.celulasAmenazadas() > persona.celulas()/10
	}
}


class Persona{
	var property celulas
	var property temperatura
	var property enfermedades
	 
	 
	 method bajarTemperatura(parametro){
	 	if  (temperatura - parametro <  45){
	 		temperatura -= parametro
	 	}else{
	 		temperatura = 45
	 	}
	 }
	 
	 method disminuirCelulas(parametro){
	 	celulas -= parametro
	 }
	 
	 method contraerEnfermedad(enfermedad){
	 	enfermedades += enfermedad
	 }
	 
}






const malaria1 = new Enfermedad(celulasAmenazadas = 500,tipo = "infecciosa")
const malaria2 = new Enfermedad(celulasAmenazadas = 800,tipo = "infecciosa")
const otitis   = new Enfermedad(celulasAmenazadas = 100,tipo = "infecciosa")
const lupus	   = new Enfermedad(celulasAmenazadas = 1000,tipo = "autoinmune")

const logan    = new Persona(celulas = 3000000, temperatura = 36,enfermedades = [malaria1,otitis,lupus])
const frank	   = new Persona(celulas = 3500000,temperatura = 36,enfermedades = [])