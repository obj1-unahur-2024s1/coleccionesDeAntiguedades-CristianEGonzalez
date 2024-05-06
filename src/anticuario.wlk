object anticuario{
	const deposito = []
	
	method stockActual() = deposito
	
	method adquirir(antiguedad){
		deposito.add(antiguedad)
	}
	
	method adquirirLote(lote){
		deposito.addAll(lote)
	}
	
	method hayStock() = !deposito.isEmpty()
	
	method cantidadDeAntiguedades() = deposito.size()
	
	method ultimaAntiguedadAdquirida() = deposito.last()
	
	method aniosDeAntiguedad(objeto) = (anioActual.anioActual() - objeto.fechaFabricacion())
	
	method esMuyAntiguo(objeto) = self.aniosDeAntiguedad(objeto) > 100
	
	method restaurar(objeto){
		if(!objeto.buenEstado()){
			objeto.fechaFabricacion(anioActual.anioActual())
			objeto.buenEstado(!objeto.buenEstado())
			console.println("La antigüedad ha sido restaurada.")
			}
		else{
			console.println("La antigüedad ya está en buen estado.")
		}
	}
	
	method restaurarPrimerAntiguedad(){
		self.restaurar(deposito.first())
	}
	method restaurarUltimaAntiguedad(){
		self.restaurar(deposito.last())
	}
	method restaurarAntiguedadNro(n){
		self.restaurar(deposito.get(n-1))
	}
	
	
}

object anioActual{
	var property anioActual = 2024
}

object relojMorbier{
	var property fechaFabricacion = 1850
	var property buenEstado = false
}

object gramofono{
	var property fechaFabricacion = 1930
	var property buenEstado = true
}

object telegrafo{
	var property fechaFabricacion = 1835
	var property buenEstado = false
}