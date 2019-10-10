%Sistema de Recomendacion de Maestrias y Doctorados (Alianza del Pacifico)

%Lectura de Nuevas Maestrias y Doctorados
:- nl, nl, write('Bienvenido al Sistema de Recomendacion de Maestrias y Doctorados de la Alianza del Pacifico'), nl, nl, nl.
:- nl, nl, write('Para realizar una consulta, utilice las reglas definidas en el programa'), nl, nl, nl.
:- nl, nl, write('Para introducir nuevas maestrias al registro, escriba \'nuevaMaestria.\' para comenzar: ?- nuevaMaestria. '), nl, nl, nl.
:- nl, nl, write('Para introducir nuevos doctorados al registro, escriba \'nuevoDoctorado.\' para comenzar: ?- nuevoDoctorado. '), nl, nl, nl.

:- dynamic ciudadDe/2.
:- dynamic universidadDe/2.
:- dynamic esDoctorado/1.
:- dynamic esMaestria/1.
:- dynamic doctoradoDe/2.
:- dynamic maestriaDe/2.
:- dynamic costoDe/2.
:- dynamic modalidadDe/2.
:- dynamic calificacionDe/2.
:- dynamic duracionDe/2.

nuevaMaestria :-
	write('Escriba cada uno de los datos solicitados terminados en punto.'), nl,
	write('Digite el nombre del pais: '), read(PAIS), nl,
	write('Digite el nombre de la ciudad: '), read(CIUDAD), nl,
	assert(ciudadDe(CIUDAD,PAIS)),
	write('Digite el nombre de la universidad: '), read(UNIVERSIDAD), nl,
	assert(universidadDe(UNIVERSIDAD,CIUDAD)),
	write('Digite el nombre de la maestria: '), read(MAESTRIA), nl,
	assert(esMaestria(MAESTRIA)),
	assert(maestriaDe(MAESTRIA, UNIVERSIDAD)),
	write('Digite el costo de la maestria: '), read(COSTO), nl,
	assert(costoDe(COSTO, MAESTRIA)),
	write('Digite la modalidad de la maestria: '), read(MODALIDAD), nl,
	assert(modalidadDe(MODALIDAD, MAESTRIA)),
	write('Digite la calificacion de la maestria: '), read(CALIFICACION), nl,
	assert(calificacionDe(CALIFICACION, MAESTRIA)),
	write('Digite la duracion de la maestria: '), read(DURACION), nl,
	assert(duracionDe(DURACION, MAESTRIA)), repetirIngresoMaestria.

repetirIngresoMaestria :- write('Desea incluir otra maestria en el registro? (si / no) '), read(RESPUESTA), nl, ((RESPUESTA == si) -> nuevaMaestria; fail).

nuevoDoctorado :-
	write('Escriba cada uno de los datos solicitados terminados en punto.'), nl,
	write('Digite el nombre del pais: '), read(PAIS), nl,
	write('Digite el nombre de la ciudad: '), read(CIUDAD), nl,
	assert(ciudadDe(CIUDAD,PAIS)),
	write('Digite el nombre de la universidad: '), read(UNIVERSIDAD), nl,
	assert(universidadDe(UNIVERSIDAD,CIUDAD)),
	write('Digite el nombre del doctorado: '), read(DOCTORADO), nl,
	assert(esDoctorado(DOCTORADO)),
	assert(doctoradoDe(DOCTORADO, UNIVERSIDAD)),
	write('Digite el costo del doctorado: '), read(COSTO), nl,
	assert(costoDe(COSTO, DOCTORADO)),
	write('Digite la modalidad del doctorado: '), read(MODALIDAD), nl,
	assert(modalidadDe(MODALIDAD, DOCTORADO)),
	write('Digite la calificacion del doctorado: '), read(CALIFICACION), nl,
	assert(calificacionDe(CALIFICACION, DOCTORADO)),
	write('Digite la duracion del doctorado: '), read(DURACION), nl,
	assert(duracionDe(DURACION, DOCTORADO)), repetirIngresoDoctorado.

repetirIngresoDoctorado :- write('Desea incluir otro doctorado en el registro? (si / no) '), read(RESPUESTA), nl, ((RESPUESTA == si) -> nuevoDoctorado; fail).

%Chile
ciudadDe(valparaiso, chile).
ciudadDe(valdivia, chile).
ciudadDe(concepcion, chile).
ciudadDe(santiagoDeChile, chile).

universidadDe(pontificiaUniversidadCatolicaDeValparaiso, valparaiso).
universidadDe(universidadSantiagoDeChile, santiagoDeChile).
universidadDe(universidadAndresBello, santiagoDeChile).
universidadDe(univesidadAustralDeChile, santiagoDeChile).
universidadDe(universidadDeLaConcepcion, valdivia).
universidadDe(pontificiaUniversidadCatolicaDeChile, concepcion).

esDoctorado(doctoradoTerritorioEspacioYSociedad).
esDoctorado(doctoradoBiologiaMolecularCelularYNeurociencias).
esDoctorado(doctoradoCienciaDeLosMateriales).
esDoctorado(doctoradoGeologia).
esDoctorado(doctoradoIngenieriaQuimicaYBiotecnologia).
esDoctorado(doctoradoPsicologia).
esDoctorado(doctoradoAdministracionDeNegocios).
esDoctorado(doctoradoHistoriaConMencionHistoriaDeChile).
esDoctorado(doctoradoCienciasBiomedicas).
esDoctorado(doctoradoFilosofiaConMencionEsteticaYTeoriaDelArte).
esDoctorado(doctoradoNutricionAlimentos).
esDoctorado(doctoradoLiteraturaConMencionLiteraturaChilenaEHispanoamericana).
esDoctorado(doctoradoDerecho).
esDoctorado(doctoradoCienciasSociales).
esDoctorado(doctoradoCienciasFarmaceuticas).
esDoctorado(doctoradoAstronomia).
esDoctorado(doctoradoEcologiaYBiologiaEvolutiva).
esDoctorado(doctoradoBiotecnologiaMolecular).

esMaestria(maestriaArquitectura).
esMaestria(maestriaNutricionYAlimentosConMencionPromocionDeLaSalud).
esMaestria(maestriaGestionCultural).
esMaestria(maestriaGestionTerritorialDeRecursosNaturales).
esMaestria(maestriaCienciasDeLaIngenieriaConMencionTransporte).
esMaestria(maestriaGestionYPoliticasPublicas).
esMaestria(maestriaAnalisisSistemicoAplicadoALaSociedad).
esMaestria(maestriaEducacionConMencionInformaticaEducativa).
esMaestria(maestriaInformaticaMedica).
esMaestria(maestriaCineDocumental).
esMaestria(maestriaPsicologiaConMencionPsicologiaComunitaria).
esMaestria(maestriaAlimentosConMencionGestionYCalidadDelosAlimentos).
esMaestria(maestriaEconomiaAplicada).
esMaestria(maestriaCienciasConMencionComputacion).
esMaestria(maestriaEstrategiaInternacionalYPoliticaComercial).
esMaestria(maestriaCienciasMatematicas).
esMaestria(maestriaArtesConMencionComposicionMusical).
esMaestria(maestriaIntervencionDelPatrimonioArquitectonico).

doctoradoDe(doctoradoTerritorioEspacioYSociedad, pontificiaUniversidadCatolicaDeValparaiso).
doctoradoDe(doctoradoBiologiaMolecularCelularYNeurociencias, universidadSantiagoDeChile).
doctoradoDe(doctoradoCienciaDeLosMateriales, universidadAndresBello).
doctoradoDe(doctoradoGeologia, univesidadAustralDeChile).
doctoradoDe(doctoradoIngenieriaQuimicaYBiotecnologia, universidadDeLaConcepcion).
doctoradoDe(doctoradoPsicologia, pontificiaUniversidadCatolicaDeChile).
doctoradoDe(doctoradoAdministracionDeNegocios, pontificiaUniversidadCatolicaDeValparaiso).
doctoradoDe(doctoradoHistoriaConMencionHistoriaDeChile, univesidadAustralDeChile).
doctoradoDe(doctoradoCienciasBiomedicas, universidadDeLaConcepcion).
doctoradoDe(doctoradoFilosofiaConMencionEsteticaYTeoriaDelArte, universidadSantiagoDeChile).
doctoradoDe(doctoradoNutricionAlimentos, universidadDeLaConcepcion).
doctoradoDe(doctoradoLiteraturaConMencionLiteraturaChilenaEHispanoamericana, pontificiaUniversidadCatolicaDeValparaiso).
doctoradoDe(doctoradoDerecho, universidadAndresBello).
doctoradoDe(doctoradoCienciasSociales, univesidadAustralDeChile).
doctoradoDe(doctoradoCienciasFarmaceuticas, universidadSantiagoDeChile).
doctoradoDe(doctoradoAstronomia, pontificiaUniversidadCatolicaDeChile).
doctoradoDe(doctoradoEcologiaYBiologiaEvolutiva, pontificiaUniversidadCatolicaDeChile).
doctoradoDe(doctoradoBiotecnologiaMolecular, universidadAndresBello).

maestriaDe(maestriaArquitectura, universidadDeLaConcepcion).
maestriaDe(maestriaNutricionYAlimentosConMencionPromocionDeLaSalud, universidadAndresBello).
maestriaDe(maestriaGestionCultural, universidadSantiagoDeChile).
maestriaDe(maestriaGestionTerritorialDeRecursosNaturales, universidadAndresBello).
maestriaDe(maestriaCienciasDeLaIngenieriaConMencionTransporte, univesidadAustralDeChile).
maestriaDe(maestriaGestionYPoliticasPublicas, universidadSantiagoDeChile).
maestriaDe(maestriaAnalisisSistemicoAplicadoALaSociedad, universidadDeLaConcepcion).
maestriaDe(maestriaEducacionConMencionInformaticaEducativa, pontificiaUniversidadCatolicaDeValparaiso).
maestriaDe(maestriaInformaticaMedica, universidadDeLaConcepcion).
maestriaDe(maestriaCineDocumental, pontificiaUniversidadCatolicaDeChile).
maestriaDe(maestriaPsicologiaConMencionPsicologiaComunitaria, universidadAndresBello).
maestriaDe(maestriaAlimentosConMencionGestionYCalidadDelosAlimentos, pontificiaUniversidadCatolicaDeChile).
maestriaDe(maestriaEconomiaAplicada, pontificiaUniversidadCatolicaDeValparaiso).
maestriaDe(maestriaCienciasConMencionComputacion, universidadSantiagoDeChile).
maestriaDe(maestriaEstrategiaInternacionalYPoliticaComercial, univesidadAustralDeChile).
maestriaDe(maestriaCienciasMatematicas, pontificiaUniversidadCatolicaDeChile).
maestriaDe(maestriaArtesConMencionComposicionMusical, pontificiaUniversidadCatolicaDeValparaiso).
maestriaDe(maestriaIntervencionDelPatrimonioArquitectonico, univesidadAustralDeChile).

costoDe(112243403, doctoradoTerritorioEspacioYSociedad).
costoDe(143245168, doctoradoBiologiaMolecularCelularYNeurociencias).
costoDe(167153349, doctoradoCienciaDeLosMateriales).
costoDe(161917964, doctoradoGeologia).
costoDe(188316473, doctoradoIngenieriaQuimicaYBiotecnologia).
costoDe(75681814, doctoradoPsicologia).
costoDe(78722618, doctoradoAdministracionDeNegocios).
costoDe(101893913, doctoradoHistoriaConMencionHistoriaDeChile).
costoDe(102476193, doctoradoCienciasBiomedicas).
costoDe(100070448, doctoradoFilosofiaConMencionEsteticaYTeoriaDelArte).
costoDe(153142705, doctoradoNutricionAlimentos).
costoDe(179154952, doctoradoLiteraturaConMencionLiteraturaChilenaEHispanoamericana).
costoDe(187087235, doctoradoDerecho).
costoDe(151036277, doctoradoCienciasSociales).
costoDe(68695538, doctoradoCienciasFarmaceuticas).
costoDe(131013317, doctoradoAstronomia).
costoDe(165594361, doctoradoEcologiaYBiologiaEvolutiva).
costoDe(180597064, doctoradoBiotecnologiaMolecular).

costoDe(60586617, maestriaArquitectura).
costoDe(72840702, maestriaNutricionYAlimentosConMencionPromocionDeLaSalud).
costoDe(143715101, maestriaGestionCultural).
costoDe(97439312, maestriaGestionTerritorialDeRecursosNaturales).
costoDe(72121193, maestriaCienciasDeLaIngenieriaConMencionTransporte).
costoDe(153261380, maestriaGestionYPoliticasPublicas).
costoDe(133187306, maestriaAnalisisSistemicoAplicadoALaSociedad).
costoDe(186837223, maestriaEducacionConMencionInformaticaEducativa).
costoDe(130064957, maestriaInformaticaMedica).
costoDe(149270597, maestriaCineDocumental).
costoDe(165262455, maestriaPsicologiaConMencionPsicologiaComunitaria).
costoDe(157592842, maestriaAlimentosConMencionGestionYCalidadDelosAlimentos).
costoDe(186735696, maestriaEconomiaAplicada).
costoDe(96013320, maestriaCienciasConMencionComputacion).
costoDe(61184379, maestriaEstrategiaInternacionalYPoliticaComercial).
costoDe(155111400, maestriaCienciasMatematicas).
costoDe(122214334, maestriaArtesConMencionComposicionMusical).
costoDe(159172869, maestriaIntervencionDelPatrimonioArquitectonico).

modalidadDe(presencial, doctoradoTerritorioEspacioYSociedad).
modalidadDe(presencial, doctoradoBiologiaMolecularCelularYNeurociencias).
modalidadDe(virtual, doctoradoCienciaDeLosMateriales).
modalidadDe(presencial, doctoradoGeologia).
modalidadDe(presencial, doctoradoIngenieriaQuimicaYBiotecnologia).
modalidadDe(presencial, doctoradoPsicologia).
modalidadDe(presencial, doctoradoAdministracionDeNegocios).
modalidadDe(presencial, doctoradoHistoriaConMencionHistoriaDeChile).
modalidadDe(presencial, doctoradoCienciasBiomedicas).
modalidadDe(virtual, doctoradoFilosofiaConMencionEsteticaYTeoriaDelArte).
modalidadDe(presencial, doctoradoNutricionAlimentos).
modalidadDe(presencial, doctoradoLiteraturaConMencionLiteraturaChilenaEHispanoamericana).
modalidadDe(presencial, doctoradoDerecho).
modalidadDe(presencial, doctoradoCienciasSociales).
modalidadDe(presencial, doctoradoCienciasFarmaceuticas).
modalidadDe(presencial, doctoradoAstronomia).
modalidadDe(presencial, doctoradoEcologiaYBiologiaEvolutiva).
modalidadDe(presencial, doctoradoBiotecnologiaMolecular).

modalidadDe(virtual, maestriaArquitectura).
modalidadDe(presencial, maestriaNutricionYAlimentosConMencionPromocionDeLaSalud).
modalidadDe(presencial, maestriaGestionCultural).
modalidadDe(presencial, maestriaGestionTerritorialDeRecursosNaturales).
modalidadDe(virtual, maestriaCienciasDeLaIngenieriaConMencionTransporte).
modalidadDe(presencial, maestriaGestionYPoliticasPublicas).
modalidadDe(presencial, maestriaAnalisisSistemicoAplicadoALaSociedad).
modalidadDe(presencial, maestriaEducacionConMencionInformaticaEducativa).
modalidadDe(virtual, maestriaInformaticaMedica).
modalidadDe(presencial, maestriaCineDocumental).
modalidadDe(presencial, maestriaPsicologiaConMencionPsicologiaComunitaria).
modalidadDe(presencial, maestriaAlimentosConMencionGestionYCalidadDelosAlimentos).
modalidadDe(presencial, maestriaEconomiaAplicada).
modalidadDe(presencial, maestriaCienciasConMencionComputacion).
modalidadDe(presencial, maestriaEstrategiaInternacionalYPoliticaComercial).
modalidadDe(presencial, maestriaCienciasMatematicas).
modalidadDe(presencial, maestriaArtesConMencionComposicionMusical).
modalidadDe(virtual, maestriaIntervencionDelPatrimonioArquitectonico).

calificacionDe(3, doctoradoTerritorioEspacioYSociedad).
calificacionDe(3, doctoradoBiologiaMolecularCelularYNeurociencias).
calificacionDe(5, doctoradoCienciaDeLosMateriales).
calificacionDe(3, doctoradoGeologia).
calificacionDe(4, doctoradoIngenieriaQuimicaYBiotecnologia).
calificacionDe(4, doctoradoPsicologia).
calificacionDe(5, doctoradoAdministracionDeNegocios).
calificacionDe(3, doctoradoHistoriaConMencionHistoriaDeChile).
calificacionDe(3, doctoradoCienciasBiomedicas).
calificacionDe(5, doctoradoFilosofiaConMencionEsteticaYTeoriaDelArte).
calificacionDe(3, doctoradoNutricionAlimentos).
calificacionDe(3, doctoradoLiteraturaConMencionLiteraturaChilenaEHispanoamericana).
calificacionDe(5, doctoradoDerecho).
calificacionDe(4, doctoradoCienciasSociales).
calificacionDe(4, doctoradoCienciasFarmaceuticas).
calificacionDe(5, doctoradoAstronomia).
calificacionDe(4, doctoradoEcologiaYBiologiaEvolutiva).
calificacionDe(3, doctoradoBiotecnologiaMolecular).

calificacionDe(3, maestriaArquitectura).
calificacionDe(5, maestriaNutricionYAlimentosConMencionPromocionDeLaSalud).
calificacionDe(5, maestriaGestionCultural).
calificacionDe(3, maestriaGestionTerritorialDeRecursosNaturales).
calificacionDe(3, maestriaCienciasDeLaIngenieriaConMencionTransporte).
calificacionDe(3, maestriaGestionYPoliticasPublicas).
calificacionDe(4, maestriaAnalisisSistemicoAplicadoALaSociedad).
calificacionDe(3, maestriaEducacionConMencionInformaticaEducativa).
calificacionDe(5, maestriaInformaticaMedica).
calificacionDe(5, maestriaCineDocumental).
calificacionDe(4, maestriaPsicologiaConMencionPsicologiaComunitaria).
calificacionDe(4, maestriaAlimentosConMencionGestionYCalidadDelosAlimentos).
calificacionDe(5, maestriaEconomiaAplicada).
calificacionDe(3, maestriaCienciasConMencionComputacion).
calificacionDe(3, maestriaEstrategiaInternacionalYPoliticaComercial).
calificacionDe(5, maestriaCienciasMatematicas).
calificacionDe(3, maestriaArtesConMencionComposicionMusical).
calificacionDe(4, maestriaIntervencionDelPatrimonioArquitectonico).

duracionDe(4, doctoradoTerritorioEspacioYSociedad).
duracionDe(5, doctoradoBiologiaMolecularCelularYNeurociencias).
duracionDe(9, doctoradoCienciaDeLosMateriales).
duracionDe(8, doctoradoGeologia).
duracionDe(10, doctoradoIngenieriaQuimicaYBiotecnologia).
duracionDe(5, doctoradoPsicologia).
duracionDe(7, doctoradoAdministracionDeNegocios).
duracionDe(10, doctoradoHistoriaConMencionHistoriaDeChile).
duracionDe(9, doctoradoCienciasBiomedicas).
duracionDe(5, doctoradoFilosofiaConMencionEsteticaYTeoriaDelArte).
duracionDe(9, doctoradoNutricionAlimentos).
duracionDe(6, doctoradoLiteraturaConMencionLiteraturaChilenaEHispanoamericana).
duracionDe(8, doctoradoDerecho).
duracionDe(8, doctoradoCienciasSociales).
duracionDe(4, doctoradoCienciasFarmaceuticas).
duracionDe(10, doctoradoAstronomia).
duracionDe(4, doctoradoEcologiaYBiologiaEvolutiva).
duracionDe(9, doctoradoBiotecnologiaMolecular).

duracionDe(9, maestriaArquitectura).
duracionDe(9, maestriaNutricionYAlimentosConMencionPromocionDeLaSalud).
duracionDe(10, maestriaGestionCultural).
duracionDe(10, maestriaGestionTerritorialDeRecursosNaturales).
duracionDe(6, maestriaCienciasDeLaIngenieriaConMencionTransporte).
duracionDe(6, maestriaGestionYPoliticasPublicas).
duracionDe(7, maestriaAnalisisSistemicoAplicadoALaSociedad).
duracionDe(10, maestriaEducacionConMencionInformaticaEducativa).
duracionDe(4, maestriaInformaticaMedica).
duracionDe(6, maestriaCineDocumental).
duracionDe(7, maestriaPsicologiaConMencionPsicologiaComunitaria).
duracionDe(5, maestriaAlimentosConMencionGestionYCalidadDelosAlimentos).
duracionDe(8, maestriaEconomiaAplicada).
duracionDe(4, maestriaCienciasConMencionComputacion).
duracionDe(7, maestriaEstrategiaInternacionalYPoliticaComercial).
duracionDe(4, maestriaCienciasMatematicas).
duracionDe(8, maestriaArtesConMencionComposicionMusical).
duracionDe(10, maestriaIntervencionDelPatrimonioArquitectonico).

%Mexico
ciudadDe(ciudadDeMexico, mexico).
ciudadDe(monterrey, mexico).
ciudadDe(guadalajara, mexico).

universidadDe(universidadNacionalAutonomaDeMexico, ciudadDeMexico).
universidadDe(institutoTecnologicoDeEstudiosSuperioresDeMonterrey, monterrey).
universidadDe(universidadDeGuadalajara, guadalajara).
universidadDe(universidadAutonomaMetropolitana, ciudadDeMexico).
universidadDe(universidadIberoamericana, ciudadDeMexico).
universidadDe(institutoPolitecnicoNacional, ciudadDeMexico).

esDoctorado(doctoradoBiotecnologiaConActuacionBiocatalisis).
esDoctorado(doctoradoCienciasYTecnologiaDeAlimentos).
esDoctorado(doctoradoCienciasYTecnologiasDeMateriales).
esDoctorado(doctoradoFilosofiaDelDerecho).
esDoctorado(doctoradoAdministracion).
esDoctorado(doctoradoEstudiosUrbanosYAmbientales).
esDoctorado(doctoradoNanocienciasYMicroNanotecnologias).
esDoctorado(doctoradoCienciasSociales).
esDoctorado(doctoradoCienciasYHumanidadesParaElDesarrolloInterdisciplinar).
esDoctorado(doctoradoInmunologia).
esDoctorado(doctoradoCienciasBiomedicinaYBiotecnologiaMolecular).
esDoctorado(doctoradoCienciasBioeconomiaPesqueraYAcuicola).
esDoctorado(doctoradoPsicoanalisis).
esDoctorado(doctoradoLiteraturaHispanica).
esDoctorado(doctoradoEconomia).
esDoctorado(doctoradoIngenieria).
esDoctorado(doctoradoFilosofia).
esDoctorado(doctoradoDerecho).

esMaestria(maestriaDireccionEInnovacionDeInstituciones).
esMaestria(maestriaCienciasEIngenieriaDeMateriales).
esMaestria(mbaConEnfasisAnalisisCuantitativo).
esMaestria(mbaConEnfasisAdministracionDeTecnologiasDeInformacion).
esMaestria(maestriaDireccionYGestionDeInstitucionesDeSalud).
esMaestria(maestriaComunicacionConEnfasisNuevosMediosYMercadotecnia).
esMaestria(maestriaCienciasDeLaComputacion).
esMaestria(maestriaIngenieriaSistemas).
esMaestria(maestriaMercadotecniaIntegral).
esMaestria(maestriaResponsabilidadSocial).
esMaestria(maestriaPsicologiaClinica).
esMaestria(maestriaMercadotecniaConEnfasisMercadotecniaDigital).
esMaestria(maestriaModaYMercadotecnia).
esMaestria(maestriaDireccionDeHoteles).
esMaestria(maestriaDeIdiomas).
esMaestria(maestriaPsicoterapiaPsicoanalitica).
esMaestria(maestriaArquitecturaDeInteriores).
esMaestria(maestriaAdministracionConacentuacionFactorHumano).

doctoradoDe(doctoradoBiotecnologiaConActuacionBiocatalisis, universidadNacionalAutonomaDeMexico).
doctoradoDe(doctoradoCienciasYTecnologiaDeAlimentos, institutoTecnologicoDeEstudiosSuperioresDeMonterrey).
doctoradoDe(doctoradoCienciasYTecnologiasDeMateriales, institutoTecnologicoDeEstudiosSuperioresDeMonterrey).
doctoradoDe(doctoradoFilosofiaDelDerecho, universidadDeGuadalajara).
doctoradoDe(doctoradoAdministracion, universidadNacionalAutonomaDeMexico).
doctoradoDe(doctoradoEstudiosUrbanosYAmbientales, universidadAutonomaMetropolitana).
doctoradoDe(doctoradoNanocienciasYMicroNanotecnologias, universidadIberoamericana).
doctoradoDe(doctoradoCienciasSociales, universidadIberoamericana).
doctoradoDe(doctoradoCienciasYHumanidadesParaElDesarrolloInterdisciplinar, institutoTecnologicoDeEstudiosSuperioresDeMonterrey).
doctoradoDe(doctoradoInmunologia, universidadIberoamericana).
doctoradoDe(doctoradoCienciasBiomedicinaYBiotecnologiaMolecular, universidadAutonomaMetropolitana).
doctoradoDe(doctoradoCienciasBioeconomiaPesqueraYAcuicola, universidadAutonomaMetropolitana).
doctoradoDe(doctoradoPsicoanalisis, institutoPolitecnicoNacional).
doctoradoDe(doctoradoLiteraturaHispanica, institutoPolitecnicoNacional).
doctoradoDe(doctoradoEconomia, universidadDeGuadalajara).
doctoradoDe(doctoradoIngenieria, universidadNacionalAutonomaDeMexico).
doctoradoDe(doctoradoFilosofia, institutoPolitecnicoNacional).
doctoradoDe(doctoradoDerecho, universidadDeGuadalajara).

maestriaDe(maestriaDireccionEInnovacionDeInstituciones, universidadAutonomaMetropolitana).
maestriaDe(maestriaCienciasEIngenieriaDeMateriales, universidadNacionalAutonomaDeMexico).
maestriaDe(mbaConEnfasisAnalisisCuantitativo, universidadAutonomaMetropolitana).
maestriaDe(mbaConEnfasisAdministracionDeTecnologiasDeInformacion, institutoTecnologicoDeEstudiosSuperioresDeMonterrey).
maestriaDe(maestriaDireccionYGestionDeInstitucionesDeSalud, institutoPolitecnicoNacional).
maestriaDe(maestriaComunicacionConEnfasisNuevosMediosYMercadotecnia, universidadDeGuadalajara).
maestriaDe(maestriaCienciasDeLaComputacion, universidadDeGuadalajara).
maestriaDe(maestriaIngenieriaSistemas, universidadNacionalAutonomaDeMexico).
maestriaDe(maestriaMercadotecniaIntegral, institutoPolitecnicoNacional).
maestriaDe(maestriaResponsabilidadSocial, universidadDeGuadalajara).
maestriaDe(maestriaPsicologiaClinica, universidadAutonomaMetropolitana).
maestriaDe(maestriaMercadotecniaConEnfasisMercadotecniaDigital, universidadIberoamericana).
maestriaDe(maestriaModaYMercadotecnia, institutoPolitecnicoNacional).
maestriaDe(maestriaDireccionDeHoteles, universidadIberoamericana).
maestriaDe(maestriaDeIdiomas, institutoTecnologicoDeEstudiosSuperioresDeMonterrey).
maestriaDe(maestriaPsicoterapiaPsicoanalitica, universidadIberoamericana).
maestriaDe(maestriaArquitecturaDeInteriores, universidadNacionalAutonomaDeMexico).
maestriaDe(maestriaAdministracionConacentuacionFactorHumano, institutoTecnologicoDeEstudiosSuperioresDeMonterrey).

costoDe(167459747, doctoradoBiotecnologiaConActuacionBiocatalisis).
costoDe(75999170, doctoradoCienciasYTecnologiaDeAlimentos).
costoDe(113710824, doctoradoCienciasYTecnologiasDeMateriales).
costoDe(65849129, doctoradoFilosofiaDelDerecho).
costoDe(179601147, doctoradoAdministracion).
costoDe(81769100, doctoradoEstudiosUrbanosYAmbientales).
costoDe(107052987, doctoradoNanocienciasYMicroNanotecnologias).
costoDe(75746363, doctoradoCienciasSociales).
costoDe(127018840, doctoradoCienciasYHumanidadesParaElDesarrolloInterdisciplinar).
costoDe(187953286, doctoradoInmunologia).
costoDe(131144607, doctoradoCienciasBiomedicinaYBiotecnologiaMolecular).
costoDe(143828278, doctoradoCienciasBioeconomiaPesqueraYAcuicola).
costoDe(160504152, doctoradoPsicoanalisis).
costoDe(188732972, doctoradoLiteraturaHispanica).
costoDe(183798217, doctoradoEconomia).
costoDe(133382555, doctoradoIngenieria).
costoDe(179338841, doctoradoFilosofia).
costoDe(64797572, doctoradoDerecho).

costoDe(156521190, maestriaDireccionEInnovacionDeInstituciones).
costoDe(91774751, maestriaCienciasEIngenieriaDeMateriales).
costoDe(153635528, mbaConEnfasisAnalisisCuantitativo).
costoDe(60284555, mbaConEnfasisAdministracionDeTecnologiasDeInformacion).
costoDe(60425111, maestriaDireccionYGestionDeInstitucionesDeSalud).
costoDe(74496165, maestriaComunicacionConEnfasisNuevosMediosYMercadotecnia).
costoDe(163753415, maestriaCienciasDeLaComputacion).
costoDe(128031031, maestriaIngenieriaSistemas).
costoDe(145107660, maestriaMercadotecniaIntegral).
costoDe(93305463, maestriaResponsabilidadSocial).
costoDe(126446741, maestriaPsicologiaClinica).
costoDe(185733933, maestriaMercadotecniaConEnfasisMercadotecniaDigital).
costoDe(150313119, maestriaModaYMercadotecnia).
costoDe(157660741, maestriaDireccionDeHoteles).
costoDe(140949088, maestriaDeIdiomas).
costoDe(83086883, maestriaPsicoterapiaPsicoanalitica).
costoDe(122194228, maestriaArquitecturaDeInteriores).
costoDe(75672861, maestriaAdministracionConacentuacionFactorHumano).

modalidadDe(presencial, doctoradoBiotecnologiaConActuacionBiocatalisis).
modalidadDe(presencial, doctoradoCienciasYTecnologiaDeAlimentos).
modalidadDe(presencial, doctoradoCienciasYTecnologiasDeMateriales).
modalidadDe(presencial, doctoradoFilosofiaDelDerecho).
modalidadDe(presencial, doctoradoAdministracion).
modalidadDe(presencial, doctoradoEstudiosUrbanosYAmbientales).
modalidadDe(presencial, doctoradoNanocienciasYMicroNanotecnologias).
modalidadDe(presencial, doctoradoCienciasSociales).
modalidadDe(presencial, doctoradoCienciasYHumanidadesParaElDesarrolloInterdisciplinar).
modalidadDe(presencial, doctoradoInmunologia).
modalidadDe(presencial, doctoradoCienciasBiomedicinaYBiotecnologiaMolecular).
modalidadDe(presencial, doctoradoCienciasBioeconomiaPesqueraYAcuicola).
modalidadDe(presencial, doctoradoPsicoanalisis).
modalidadDe(presencial, doctoradoLiteraturaHispanica).
modalidadDe(virtual, doctoradoEconomia).
modalidadDe(presencial, doctoradoIngenieria).
modalidadDe(presencial, doctoradoFilosofia).
modalidadDe(virtual, doctoradoDerecho).

modalidadDe(presencial, maestriaDireccionEInnovacionDeInstituciones).
modalidadDe(virtual, maestriaCienciasEIngenieriaDeMateriales).
modalidadDe(presencial, mbaConEnfasisAnalisisCuantitativo).
modalidadDe(presencial, mbaConEnfasisAdministracionDeTecnologiasDeInformacion).
modalidadDe(presencial, maestriaDireccionYGestionDeInstitucionesDeSalud).
modalidadDe(presencial, maestriaComunicacionConEnfasisNuevosMediosYMercadotecnia).
modalidadDe(presencial, maestriaCienciasDeLaComputacion).
modalidadDe(presencial, maestriaIngenieriaSistemas).
modalidadDe(presencial, maestriaMercadotecniaIntegral).
modalidadDe(virtual, maestriaResponsabilidadSocial).
modalidadDe(presencial, maestriaPsicologiaClinica).
modalidadDe(presencial, maestriaMercadotecniaConEnfasisMercadotecniaDigital).
modalidadDe(presencial, maestriaModaYMercadotecnia).
modalidadDe(virtual, maestriaDireccionDeHoteles).
modalidadDe(presencial, maestriaDeIdiomas).
modalidadDe(presencial, maestriaPsicoterapiaPsicoanalitica).
modalidadDe(presencial, maestriaArquitecturaDeInteriores).
modalidadDe(virtual, maestriaAdministracionConacentuacionFactorHumano).

calificacionDe(4, doctoradoBiotecnologiaConActuacionBiocatalisis).
calificacionDe(3, doctoradoCienciasYTecnologiaDeAlimentos).
calificacionDe(5, doctoradoCienciasYTecnologiasDeMateriales).
calificacionDe(4, doctoradoFilosofiaDelDerecho).
calificacionDe(3, doctoradoAdministracion).
calificacionDe(5, doctoradoEstudiosUrbanosYAmbientales).
calificacionDe(5, doctoradoNanocienciasYMicroNanotecnologias).
calificacionDe(3, doctoradoCienciasSociales).
calificacionDe(4, doctoradoCienciasYHumanidadesParaElDesarrolloInterdisciplinar).
calificacionDe(5, doctoradoInmunologia).
calificacionDe(4, doctoradoCienciasBiomedicinaYBiotecnologiaMolecular).
calificacionDe(3, doctoradoCienciasBioeconomiaPesqueraYAcuicola).
calificacionDe(4, doctoradoPsicoanalisis).
calificacionDe(3, doctoradoLiteraturaHispanica).
calificacionDe(4, doctoradoEconomia).
calificacionDe(5, doctoradoIngenieria).
calificacionDe(3, doctoradoFilosofia).
calificacionDe(5, doctoradoDerecho).

calificacionDe(3, maestriaDireccionEInnovacionDeInstituciones).
calificacionDe(4, maestriaCienciasEIngenieriaDeMateriales).
calificacionDe(5, mbaConEnfasisAnalisisCuantitativo).
calificacionDe(4, mbaConEnfasisAdministracionDeTecnologiasDeInformacion).
calificacionDe(5, maestriaDireccionYGestionDeInstitucionesDeSalud).
calificacionDe(4, maestriaComunicacionConEnfasisNuevosMediosYMercadotecnia).
calificacionDe(5, maestriaCienciasDeLaComputacion).
calificacionDe(4, maestriaIngenieriaSistemas).
calificacionDe(4, maestriaMercadotecniaIntegral).
calificacionDe(4, maestriaResponsabilidadSocial).
calificacionDe(4, maestriaPsicologiaClinica).
calificacionDe(4, maestriaMercadotecniaConEnfasisMercadotecniaDigital).
calificacionDe(5, maestriaModaYMercadotecnia).
calificacionDe(5, maestriaDireccionDeHoteles).
calificacionDe(5, maestriaDeIdiomas).
calificacionDe(3, maestriaPsicoterapiaPsicoanalitica).
calificacionDe(4, maestriaArquitecturaDeInteriores).
calificacionDe(4, maestriaAdministracionConacentuacionFactorHumano).

duracionDe(5, doctoradoBiotecnologiaConActuacionBiocatalisis).
duracionDe(4, doctoradoCienciasYTecnologiaDeAlimentos).
duracionDe(10, doctoradoCienciasYTecnologiasDeMateriales).
duracionDe(4, doctoradoFilosofiaDelDerecho).
duracionDe(8, doctoradoAdministracion).
duracionDe(6, doctoradoEstudiosUrbanosYAmbientales).
duracionDe(6, doctoradoNanocienciasYMicroNanotecnologias).
duracionDe(10, doctoradoCienciasSociales).
duracionDe(7, doctoradoCienciasYHumanidadesParaElDesarrolloInterdisciplinar).
duracionDe(8, doctoradoInmunologia).
duracionDe(10, doctoradoCienciasBiomedicinaYBiotecnologiaMolecular).
duracionDe(4, doctoradoCienciasBioeconomiaPesqueraYAcuicola).
duracionDe(10, doctoradoPsicoanalisis).
duracionDe(10, doctoradoLiteraturaHispanica).
duracionDe(6, doctoradoEconomia).
duracionDe(10, doctoradoIngenieria).
duracionDe(6, doctoradoFilosofia).
duracionDe(4, doctoradoDerecho).

duracionDe(6, maestriaDireccionEInnovacionDeInstituciones).
duracionDe(6, maestriaCienciasEIngenieriaDeMateriales).
duracionDe(4, mbaConEnfasisAnalisisCuantitativo).
duracionDe(8, mbaConEnfasisAdministracionDeTecnologiasDeInformacion).
duracionDe(8, maestriaDireccionYGestionDeInstitucionesDeSalud).
duracionDe(6, maestriaComunicacionConEnfasisNuevosMediosYMercadotecnia).
duracionDe(6, maestriaCienciasDeLaComputacion).
duracionDe(5, maestriaIngenieriaSistemas).
duracionDe(4, maestriaMercadotecniaIntegral).
duracionDe(7, maestriaResponsabilidadSocial).
duracionDe(6, maestriaPsicologiaClinica).
duracionDe(7, maestriaMercadotecniaConEnfasisMercadotecniaDigital).
duracionDe(4, maestriaModaYMercadotecnia).
duracionDe(8, maestriaDireccionDeHoteles).
duracionDe(8, maestriaDeIdiomas).
duracionDe(7, maestriaPsicoterapiaPsicoanalitica).
duracionDe(7, maestriaArquitecturaDeInteriores).
duracionDe(4, maestriaAdministracionConacentuacionFactorHumano).

%Peru
ciudadDe(lima, peru).
ciudadDe(sanMartinDePorres, peru).
ciudadDe(piura, peru).
ciudadDe(villaElSalvador, peru).

universidadDe(pontificiaUniversidadCatolicaDePeru, lima).
universidadDe(universidadDeLima, lima).
universidadDe(universidadPeruanaCayetanoHeredia, sanMartinDePorres).
universidadDe(universidadNacionalMayorDeSanMarcos, lima).
universidadDe(universidadDePiura, piura).
universidadDe(universidadCientificaDelSur, villaElSalvador).

esDoctorado(doctoradoTurismo).
esDoctorado(doctoradoCienciasContablesYFinancieras).
esDoctorado(doctoradoIngenieriaDeSistemasDeInformacion).
esDoctorado(doctoradoAntropologiaArqueologiaHistoriaYLinguisticaAndinas).
esDoctorado(doctoradoCienciaPoliticaYGobierno).
esDoctorado(doctoradoAdministracionDeEmpresas).
esDoctorado(doctoradoSaludPublica).
esDoctorado(doctoradoCienciasDeLaVida).
esDoctorado(doctoradoCienciasConMencionMicrobiologia).
esDoctorado(doctoradoCienciasQuimicas).
esDoctorado(doctoradoAdministracionDeNegociosGlobales).
esDoctorado(doctoradoOdontologia).
esDoctorado(doctoradoComunicacionSocial).
esDoctorado(doctoradoContabilidad).
esDoctorado(doctoradoCienciasDeLaEducacion).
esDoctorado(doctoradoEnfermeria).
esDoctorado(doctoradoIngenieriaAmbiental).
esDoctorado(doctoradoRelacionesTranspacificas).

esMaestria(maestriaDerechoCienciasPenales).
esMaestria(maestriaGestionInmobiliaria).
esMaestria(maestriaPeriodismoYComunicacionMultimedia).
esMaestria(maestriaPoblacionComunicacionYDesarrolloSustentable).
esMaestria(maestriaCienciasGastronomicas).
esMaestria(maestriaDerechoCivil).
esMaestria(maestriaIngenieriaElectronica).
esMaestria(maestriaMedicinaConMencionParaEspecialistas).
esMaestria(maestriaMedicinaConMencionCienciasClinicas).
esMaestria(maestriaDocenciaUniversitaria).
esMaestria(maestriaDidacticaIdiomasExtranjeros).
esMaestria(maestriaGestionDelTalentoHumano).
esMaestria(maestriaRelacionesPublicasEImagenCorporativa).
esMaestria(maestriaEdificacionesInteligentesYDireccionDeLaConstruccion).
esMaestria(maestriaDerechoRegistralYNotarial).
esMaestria(maestriaMarketingTuristicoYHotelero).
esMaestria(maestriaMedicina).
esMaestria(maestriaSolucionDeConflictos).

doctoradoDe(doctoradoTurismo, universidadNacionalMayorDeSanMarcos).
doctoradoDe(doctoradoCienciasContablesYFinancieras, universidadDeLima).
doctoradoDe(doctoradoIngenieriaDeSistemasDeInformacion, universidadPeruanaCayetanoHeredia).
doctoradoDe(doctoradoAntropologiaArqueologiaHistoriaYLinguisticaAndinas, universidadNacionalMayorDeSanMarcos).
doctoradoDe(doctoradoCienciaPoliticaYGobierno, universidadDePiura).
doctoradoDe(doctoradoAdministracionDeEmpresas, universidadDePiura).
doctoradoDe(doctoradoSaludPublica, universidadPeruanaCayetanoHeredia).
doctoradoDe(doctoradoCienciasDeLaVida, universidadCientificaDelSur).
doctoradoDe(doctoradoCienciasConMencionMicrobiologia, universidadDeLima).
doctoradoDe(doctoradoCienciasQuimicas, universidadCientificaDelSur).
doctoradoDe(doctoradoAdministracionDeNegociosGlobales, pontificiaUniversidadCatolicaDePeru).
doctoradoDe(doctoradoOdontologia, universidadPeruanaCayetanoHeredia).
doctoradoDe(doctoradoComunicacionSocial, universidadDeLima).
doctoradoDe(doctoradoContabilidad, universidadDePiura).
doctoradoDe(doctoradoCienciasDeLaEducacion, universidadNacionalMayorDeSanMarcos).
doctoradoDe(doctoradoEnfermeria, universidadCientificaDelSur).
doctoradoDe(doctoradoIngenieriaAmbiental, pontificiaUniversidadCatolicaDePeru).
doctoradoDe(doctoradoRelacionesTranspacificas, pontificiaUniversidadCatolicaDePeru).

maestriaDe(maestriaDerechoCienciasPenales, universidadDePiura).
maestriaDe(maestriaGestionInmobiliaria, universidadPeruanaCayetanoHeredia).
maestriaDe(maestriaPeriodismoYComunicacionMultimedia, universidadNacionalMayorDeSanMarcos).
maestriaDe(maestriaPoblacionComunicacionYDesarrolloSustentable, universidadPeruanaCayetanoHeredia).
maestriaDe(maestriaCienciasGastronomicas, universidadDeLima).
maestriaDe(maestriaDerechoCivil, universidadNacionalMayorDeSanMarcos).
maestriaDe(maestriaIngenieriaElectronica, universidadCientificaDelSur).
maestriaDe(maestriaMedicinaConMencionParaEspecialistas, pontificiaUniversidadCatolicaDePeru).
maestriaDe(maestriaMedicinaConMencionCienciasClinicas, universidadPeruanaCayetanoHeredia).
maestriaDe(maestriaDocenciaUniversitaria, universidadCientificaDelSur).
maestriaDe(maestriaDidacticaIdiomasExtranjeros, universidadDeLima).
maestriaDe(maestriaGestionDelTalentoHumano, universidadDeLima).
maestriaDe(maestriaRelacionesPublicasEImagenCorporativa, pontificiaUniversidadCatolicaDePeru).
maestriaDe(maestriaEdificacionesInteligentesYDireccionDeLaConstruccion, universidadNacionalMayorDeSanMarcos).
maestriaDe(maestriaDerechoRegistralYNotarial, universidadCientificaDelSur).
maestriaDe(maestriaMarketingTuristicoYHotelero, universidadDePiura).
maestriaDe(maestriaMedicina, pontificiaUniversidadCatolicaDePeru).
maestriaDe(maestriaSolucionDeConflictos, universidadDePiura).

costoDe(161457571, doctoradoTurismo).
costoDe(149019115, doctoradoCienciasContablesYFinancieras).
costoDe(156921766, doctoradoIngenieriaDeSistemasDeInformacion).
costoDe(122309715, doctoradoAntropologiaArqueologiaHistoriaYLinguisticaAndinas).
costoDe(75854323, doctoradoCienciaPoliticaYGobierno).
costoDe(63449147, doctoradoAdministracionDeEmpresas).
costoDe(63606219, doctoradoSaludPublica).
costoDe(118989254, doctoradoCienciasDeLaVida).
costoDe(154999758, doctoradoCienciasConMencionMicrobiologia).
costoDe(113369836, doctoradoCienciasQuimicas).
costoDe(179687475, doctoradoAdministracionDeNegociosGlobales ).
costoDe(141673330, doctoradoOdontologia).
costoDe(118753588, doctoradoComunicacionSocial).
costoDe(85737433, doctoradoContabilidad).
costoDe(139574085, doctoradoCienciasDeLaEducacion).
costoDe(71890381, doctoradoEnfermeria).
costoDe(129812966, doctoradoIngenieriaAmbiental).
costoDe(81222867, doctoradoRelacionesTranspacificas).

costoDe(136638431, maestriaDerechoCienciasPenales).
costoDe(126880912, maestriaGestionInmobiliaria).
costoDe(87911879, maestriaPeriodismoYComunicacionMultimedia).
costoDe(178553955, maestriaPoblacionComunicacionYDesarrolloSustentable).
costoDe(148723869, maestriaCienciasGastronomicas).
costoDe(153577824, maestriaDerechoCivil).
costoDe(96124516, maestriaIngenieriaElectronica).
costoDe(77095335, maestriaMedicinaConMencionParaEspecialistas).
costoDe(76936634, maestriaMedicinaConMencionCienciasClinicas).
costoDe(180383730, maestriaDocenciaUniversitaria).
costoDe(61794976, maestriaDidacticaIdiomasExtranjeros).
costoDe(148858379, maestriaGestionDelTalentoHumano).
costoDe(176727480, maestriaRelacionesPublicasEImagenCorporativa).
costoDe(144794264, maestriaEdificacionesInteligentesYDireccionDeLaConstruccion).
costoDe(93719218, maestriaDerechoRegistralYNotarial).
costoDe(120835437, maestriaMarketingTuristicoYHotelero).
costoDe(80877789, maestriaMedicina).
costoDe(119202142, maestriaSolucionDeConflictos).

modalidadDe(virtual, doctoradoTurismo).
modalidadDe(presencial, doctoradoCienciasContablesYFinancieras).
modalidadDe(presencial, doctoradoIngenieriaDeSistemasDeInformacion).
modalidadDe(presencial, doctoradoAntropologiaArqueologiaHistoriaYLinguisticaAndinas).
modalidadDe(presencial, doctoradoCienciaPoliticaYGobierno).
modalidadDe(presencial, doctoradoAdministracionDeEmpresas).
modalidadDe(presencial, doctoradoSaludPublica).
modalidadDe(virtual, doctoradoCienciasDeLaVida).
modalidadDe(presencial, doctoradoCienciasConMencionMicrobiologia).
modalidadDe(presencial, doctoradoCienciasQuimicas).
modalidadDe(presencial, doctoradoAdministracionDeNegociosGlobales).
modalidadDe(presencial, doctoradoOdontologia).
modalidadDe(presencial, doctoradoComunicacionSocial).
modalidadDe(presencial, doctoradoContabilidad).
modalidadDe(presencial, doctoradoCienciasDeLaEducacion).
modalidadDe(presencial, doctoradoEnfermeria).
modalidadDe(presencial, doctoradoIngenieriaAmbiental).
modalidadDe(presencial, doctoradoRelacionesTranspacificas).

modalidadDe(presencial, maestriaDerechoCienciasPenales).
modalidadDe(presencial, maestriaGestionInmobiliaria).
modalidadDe(presencial, maestriaPeriodismoYComunicacionMultimedia).
modalidadDe(virtual, maestriaPoblacionComunicacionYDesarrolloSustentable).
modalidadDe(presencial, maestriaCienciasGastronomicas).
modalidadDe(presencial, maestriaDerechoCivil).
modalidadDe(presencial, maestriaIngenieriaElectronica).
modalidadDe(presencial, maestriaMedicinaConMencionParaEspecialistas).
modalidadDe(virtual, maestriaMedicinaConMencionCienciasClinicas).
modalidadDe(presencial, maestriaDocenciaUniversitaria).
modalidadDe(virtual, maestriaDidacticaIdiomasExtranjeros).
modalidadDe(virtual, maestriaGestionDelTalentoHumano).
modalidadDe(presencial, maestriaRelacionesPublicasEImagenCorporativa).
modalidadDe(presencial, maestriaEdificacionesInteligentesYDireccionDeLaConstruccion).
modalidadDe(presencial, maestriaDerechoRegistralYNotarial).
modalidadDe(presencial, maestriaMarketingTuristicoYHotelero).
modalidadDe(presencial, maestriaMedicina).
modalidadDe(presencial, maestriaSolucionDeConflictos).

calificacionDe(5, doctoradoTurismo).
calificacionDe(5, doctoradoCienciasContablesYFinancieras).
calificacionDe(5, doctoradoIngenieriaDeSistemasDeInformacion).
calificacionDe(4, doctoradoAntropologiaArqueologiaHistoriaYLinguisticaAndinas).
calificacionDe(3, doctoradoCienciaPoliticaYGobierno).
calificacionDe(4, doctoradoAdministracionDeEmpresas).
calificacionDe(5, doctoradoSaludPublica).
calificacionDe(3, doctoradoCienciasDeLaVida).
calificacionDe(5, doctoradoCienciasConMencionMicrobiologia).
calificacionDe(3, doctoradoCienciasQuimicas).
calificacionDe(5, doctoradoAdministracionDeNegociosGlobales).
calificacionDe(4, doctoradoOdontologia).
calificacionDe(4, doctoradoComunicacionSocial).
calificacionDe(5, doctoradoContabilidad).
calificacionDe(4, doctoradoCienciasDeLaEducacion).
calificacionDe(3, doctoradoEnfermeria).
calificacionDe(3, doctoradoIngenieriaAmbiental).
calificacionDe(5, doctoradoRelacionesTranspacificas).

calificacionDe(3, maestriaDerechoCienciasPenales).
calificacionDe(5, maestriaGestionInmobiliaria).
calificacionDe(3, maestriaPeriodismoYComunicacionMultimedia).
calificacionDe(4, maestriaPoblacionComunicacionYDesarrolloSustentable).
calificacionDe(4, maestriaCienciasGastronomicas).
calificacionDe(5, maestriaDerechoCivil).
calificacionDe(5, maestriaIngenieriaElectronica).
calificacionDe(5, maestriaMedicinaConMencionParaEspecialistas).
calificacionDe(3, maestriaMedicinaConMencionCienciasClinicas).
calificacionDe(3, maestriaDocenciaUniversitaria).
calificacionDe(5, maestriaDidacticaIdiomasExtranjeros).
calificacionDe(4, maestriaGestionDelTalentoHumano).
calificacionDe(4, maestriaRelacionesPublicasEImagenCorporativa).
calificacionDe(3, maestriaEdificacionesInteligentesYDireccionDeLaConstruccion).
calificacionDe(4, maestriaDerechoRegistralYNotarial).
calificacionDe(3, maestriaMarketingTuristicoYHotelero).
calificacionDe(4, maestriaMedicina).
calificacionDe(5, maestriaSolucionDeConflictos).

duracionDe(10, doctoradoTurismo).
duracionDe(8, doctoradoCienciasContablesYFinancieras).
duracionDe(6, doctoradoIngenieriaDeSistemasDeInformacion).
duracionDe(6, doctoradoAntropologiaArqueologiaHistoriaYLinguisticaAndinas).
duracionDe(4, doctoradoCienciaPoliticaYGobierno).
duracionDe(4, doctoradoAdministracionDeEmpresas).
duracionDe(5, doctoradoSaludPublica).
duracionDe(7, doctoradoCienciasDeLaVida).
duracionDe(8, doctoradoCienciasConMencionMicrobiologia).
duracionDe(4, doctoradoCienciasQuimicas).
duracionDe(10, doctoradoAdministracionDeNegociosGlobales).
duracionDe(4, doctoradoOdontologia).
duracionDe(10, doctoradoComunicacionSocial).
duracionDe(5, doctoradoContabilidad).
duracionDe(9, doctoradoCienciasDeLaEducacion).
duracionDe(9, doctoradoEnfermeria).
duracionDe(8, doctoradoIngenieriaAmbiental).
duracionDe(8, doctoradoRelacionesTranspacificas).

duracionDe(7, maestriaDerechoCienciasPenales).
duracionDe(5, maestriaGestionInmobiliaria).
duracionDe(4, maestriaPeriodismoYComunicacionMultimedia).
duracionDe(7, maestriaPoblacionComunicacionYDesarrolloSustentable).
duracionDe(9, maestriaCienciasGastronomicas).
duracionDe(6, maestriaDerechoCivil).
duracionDe(4, maestriaIngenieriaElectronica).
duracionDe(5, maestriaMedicinaConMencionParaEspecialistas).
duracionDe(5, maestriaMedicinaConMencionCienciasClinicas).
duracionDe(4, maestriaDocenciaUniversitaria).
duracionDe(6, maestriaDidacticaIdiomasExtranjeros).
duracionDe(7, maestriaGestionDelTalentoHumano).
duracionDe(9, maestriaRelacionesPublicasEImagenCorporativa).
duracionDe(9, maestriaEdificacionesInteligentesYDireccionDeLaConstruccion).
duracionDe(5, maestriaDerechoRegistralYNotarial).
duracionDe(5, maestriaMarketingTuristicoYHotelero).
duracionDe(9, maestriaMedicina).
duracionDe(6, maestriaSolucionDeConflictos).

%Colombia
ciudadDe(bogota, colombia).
ciudadDe(barranquilla, colombia).

universidadDe(universidadDistritalFranciscoJoseDeCaldas, bogota).
universidadDe(universidadSantoTomas, bogota).
universidadDe(universidadDeLosAndes, bogota).
universidadDe(pontificiaUniversidadJaveriana, bogota).
universidadDe(universidadDelExternado, bogota).
universidadDe(universidadDelNorte, barranquilla).

esDoctorado(doctoradoEstudiosArtisticos).
esDoctorado(doctoradoFilosofia).
esDoctorado(doctoradoLiteratura).
esDoctorado(doctoradoPsicologia).
esDoctorado(doctoradoEstudiosSociales).
esDoctorado(doctoradoCienciasJuridicas).
esDoctorado(doctoradoFinanzasGobiernoYRelacionesInternacionales).
esDoctorado(doctoradoHistoria).
esDoctorado(doctoradoEducacion).
esDoctorado(doctoradoEpidemiologiaClinica).
esDoctorado(doctoradoCienciasDelMar).
esDoctorado(doctoradoTeologia).
esDoctorado(doctoradoCienciasBiomedicas).
esDoctorado(doctoradoIngenieriaDeSistemasYComputacion).
esDoctorado(doctoradoCienciasFisicas).
esDoctorado(doctoradoComunicacionSocialYPeriodismo).
esDoctorado(doctoradoIngenieria).
esDoctorado(doctoradoContaduriaPublica).

esMaestria(maestriaTrastornosCognoscitivosYDelAprendizaje).
esMaestria(maestriaCienciasDeLaInformacionYLasComunicaciones).
esMaestria(maestriaAntropologia).
esMaestria(maestriaEstudiosDelPatrimonioCultural).
esMaestria(maestriaEconomia).
esMaestria(maestriaArtesPlasticasElectronicasYDelTiempo).
esMaestria(maestriaDesarrolloSustentableYGestionAmbiental).
esMaestria(maestriaEstadisticaAplicada).
esMaestria(maestriaActividadFisicaParaLaSalud).
esMaestria(maestriaCreacionAudiovisual).
esMaestria(maestriaCienciasEconomicas).
esMaestria(maestriaInfanciaYCultura).
esMaestria(maestriaEstudiosCulturalesLatinoamericanos).
esMaestria(maestriaBiologiaComputacional).
esMaestria(maestriaComunicacionDesarrolloYCambioSocial).
esMaestria(maestriaUrbanismoYDesarrolloTerritorial).
esMaestria(maestriaAdministracionDeEmpresasTuristicasYHoteleras).
esMaestria(maestriaPeriodismoCientifico).

doctoradoDe(doctoradoEstudiosArtisticos, universidadDistritalFranciscoJoseDeCaldas).
doctoradoDe(doctoradoFilosofia, universidadSantoTomas).
doctoradoDe(doctoradoLiteratura, universidadDeLosAndes).
doctoradoDe(doctoradoPsicologia, universidadSantoTomas).
doctoradoDe(doctoradoEstudiosSociales, universidadDistritalFranciscoJoseDeCaldas).
doctoradoDe(doctoradoCienciasJuridicas, pontificiaUniversidadJaveriana).
doctoradoDe(doctoradoFinanzasGobiernoYRelacionesInternacionales, universidadDelExternado).
doctoradoDe(doctoradoHistoria, universidadDeLosAndes).
doctoradoDe(doctoradoEducacion, universidadSantoTomas).
doctoradoDe(doctoradoEpidemiologiaClinica, pontificiaUniversidadJaveriana).
doctoradoDe(doctoradoCienciasDelMar, universidadDelNorte).
doctoradoDe(doctoradoTeologia, pontificiaUniversidadJaveriana).
doctoradoDe(doctoradoCienciasBiomedicas, universidadDelNorte).
doctoradoDe(doctoradoIngenieriaDeSistemasYComputacion, universidadDelNorte).
doctoradoDe(doctoradoCienciasFisicas, universidadDeLosAndes).
doctoradoDe(doctoradoComunicacionSocialYPeriodismo, universidadDelExternado).
doctoradoDe(doctoradoIngenieria, universidadDistritalFranciscoJoseDeCaldas).
doctoradoDe(doctoradoContaduriaPublica, universidadDelExternado).

maestriaDe(maestriaTrastornosCognoscitivosYDelAprendizaje, universidadDelNorte).
maestriaDe(maestriaCienciasDeLaInformacionYLasComunicaciones, universidadDistritalFranciscoJoseDeCaldas).
maestriaDe(maestriaAntropologia, universidadDeLosAndes).
maestriaDe(maestriaEstudiosDelPatrimonioCultural, universidadDelExternado).
maestriaDe(maestriaEconomia, universidadDelExternado).
maestriaDe(maestriaArtesPlasticasElectronicasYDelTiempo, universidadDeLosAndes).
maestriaDe(maestriaDesarrolloSustentableYGestionAmbiental, universidadDistritalFranciscoJoseDeCaldas).
maestriaDe(maestriaEstadisticaAplicada, universidadDelNorte).
maestriaDe(maestriaActividadFisicaParaLaSalud, universidadSantoTomas).
maestriaDe(maestriaCreacionAudiovisual, pontificiaUniversidadJaveriana).
maestriaDe(maestriaCienciasEconomicas, universidadSantoTomas).
maestriaDe(maestriaInfanciaYCultura, universidadDistritalFranciscoJoseDeCaldas).
maestriaDe(maestriaEstudiosCulturalesLatinoamericanos, pontificiaUniversidadJaveriana).
maestriaDe(maestriaBiologiaComputacional, universidadDeLosAndes).
maestriaDe(maestriaComunicacionDesarrolloYCambioSocial, universidadSantoTomas).
maestriaDe(maestriaUrbanismoYDesarrolloTerritorial, universidadDelNorte).
maestriaDe(maestriaAdministracionDeEmpresasTuristicasYHoteleras, universidadDelExternado).
maestriaDe(maestriaPeriodismoCientifico, pontificiaUniversidadJaveriana).

costoDe(98873413, doctoradoEstudiosArtisticos).
costoDe(79216497, doctoradoFilosofia).
costoDe(69593416, doctoradoLiteratura).
costoDe(102881559, doctoradoPsicologia).
costoDe(115968966, doctoradoEstudiosSociales).
costoDe(136936911, doctoradoCienciasJuridicas).
costoDe(62774883, doctoradoFinanzasGobiernoYRelacionesInternacionales).
costoDe(67397441, doctoradoHistoria).
costoDe(120141987, doctoradoEducacion).
costoDe(124125200, doctoradoEpidemiologiaClinica).
costoDe(71344385, doctoradoCienciasDelMar).
costoDe(66288015, doctoradoTeologia).
costoDe(64104784, doctoradoCienciasBiomedicas).
costoDe(148024521, doctoradoIngenieriaDeSistemasYComputacion).
costoDe(161332854, doctoradoCienciasFisicas).
costoDe(111731127, doctoradoComunicacionSocialYPeriodismo).
costoDe(114389292, doctoradoIngenieria).
costoDe(115882657, doctoradoContaduriaPublica).

costoDe(145609353, maestriaTrastornosCognoscitivosYDelAprendizaje).
costoDe(64394873, maestriaCienciasDeLaInformacionYLasComunicaciones).
costoDe(119940992, maestriaAntropologia).
costoDe(68384319, maestriaEstudiosDelPatrimonioCultural).
costoDe(100705909, maestriaEconomia).
costoDe(106557745, maestriaArtesPlasticasElectronicasYDelTiempo).
costoDe(143514880, maestriaDesarrolloSustentableYGestionAmbiental).
costoDe(136077354, maestriaEstadisticaAplicada).
costoDe(98305648, maestriaActividadFisicaParaLaSalud).
costoDe(130246297, maestriaCreacionAudiovisual).
costoDe(156703120, maestriaCienciasEconomicas).
costoDe(161787271, maestriaInfanciaYCultura).
costoDe(75111107, maestriaEstudiosCulturalesLatinoamericanos).
costoDe(107751802, maestriaBiologiaComputacional).
costoDe(105722053, maestriaComunicacionDesarrolloYCambioSocial).
costoDe(97994512, maestriaUrbanismoYDesarrolloTerritorial).
costoDe(78603013, maestriaAdministracionDeEmpresasTuristicasYHoteleras).
costoDe(150967650, maestriaPeriodismoCientifico).

modalidadDe(virtual, doctoradoEstudiosArtisticos).
modalidadDe(virtual, doctoradoFilosofia).
modalidadDe(presencial, doctoradoLiteratura).
modalidadDe(presencial, doctoradoPsicologia).
modalidadDe(presencial, doctoradoEstudiosSociales).
modalidadDe(presencial, doctoradoCienciasJuridicas).
modalidadDe(presencial, doctoradoFinanzasGobiernoYRelacionesInternacionales).
modalidadDe(presencial, doctoradoHistoria).
modalidadDe(presencial, doctoradoEducacion).
modalidadDe(presencial, doctoradoEpidemiologiaClinica).
modalidadDe(presencial, doctoradoCienciasDelMar).
modalidadDe(presencial, doctoradoTeologia).
modalidadDe(presencial, doctoradoCienciasBiomedicas).
modalidadDe(presencial, doctoradoIngenieriaDeSistemasYComputacion).
modalidadDe(presencial, doctoradoCienciasFisicas).
modalidadDe(presencial, doctoradoComunicacionSocialYPeriodismo).
modalidadDe(presencial, doctoradoIngenieria).
modalidadDe(presencial, doctoradoContaduriaPublica).

modalidadDe(presencial, maestriaTrastornosCognoscitivosYDelAprendizaje).
modalidadDe(virtual, maestriaCienciasDeLaInformacionYLasComunicaciones).
modalidadDe(virtual, maestriaAntropologia).
modalidadDe(presencial, maestriaEstudiosDelPatrimonioCultural).
modalidadDe(presencial, maestriaEconomia).
modalidadDe(presencial, maestriaArtesPlasticasElectronicasYDelTiempo).
modalidadDe(presencial, maestriaDesarrolloSustentableYGestionAmbiental).
modalidadDe(presencial, maestriaEstadisticaAplicada).
modalidadDe(presencial, maestriaActividadFisicaParaLaSalud).
modalidadDe(presencial, maestriaCreacionAudiovisual).
modalidadDe(presencial, maestriaCienciasEconomicas).
modalidadDe(presencial, maestriaInfanciaYCultura).
modalidadDe(presencial, maestriaEstudiosCulturalesLatinoamericanos).
modalidadDe(presencial, maestriaBiologiaComputacional).
modalidadDe(presencial, maestriaComunicacionDesarrolloYCambioSocial).
modalidadDe(virtual, maestriaUrbanismoYDesarrolloTerritorial).
modalidadDe(virtual, maestriaAdministracionDeEmpresasTuristicasYHoteleras).
modalidadDe(presencial, maestriaPeriodismoCientifico).

calificacionDe(3, doctoradoEstudiosArtisticos).
calificacionDe(3, doctoradoFilosofia).
calificacionDe(4, doctoradoLiteratura).
calificacionDe(3, doctoradoPsicologia).
calificacionDe(5, doctoradoEstudiosSociales).
calificacionDe(5, doctoradoCienciasJuridicas).
calificacionDe(4, doctoradoFinanzasGobiernoYRelacionesInternacionales).
calificacionDe(3, doctoradoHistoria).
calificacionDe(5, doctoradoEducacion).
calificacionDe(5, doctoradoEpidemiologiaClinica).
calificacionDe(3, doctoradoCienciasDelMar).
calificacionDe(4, doctoradoTeologia).
calificacionDe(4, doctoradoCienciasBiomedicas).
calificacionDe(4, doctoradoIngenieriaDeSistemasYComputacion).
calificacionDe(4, doctoradoCienciasFisicas).
calificacionDe(5, doctoradoComunicacionSocialYPeriodismo).
calificacionDe(4, doctoradoIngenieria).
calificacionDe(5, doctoradoContaduriaPublica).

calificacionDe(4, maestriaTrastornosCognoscitivosYDelAprendizaje).
calificacionDe(3, maestriaCienciasDeLaInformacionYLasComunicaciones).
calificacionDe(4, maestriaAntropologia).
calificacionDe(5, maestriaEstudiosDelPatrimonioCultural).
calificacionDe(5, maestriaEconomia).
calificacionDe(3, maestriaArtesPlasticasElectronicasYDelTiempo).
calificacionDe(5, maestriaDesarrolloSustentableYGestionAmbiental).
calificacionDe(3, maestriaEstadisticaAplicada).
calificacionDe(4, maestriaActividadFisicaParaLaSalud).
calificacionDe(5, maestriaCreacionAudiovisual).
calificacionDe(3, maestriaCienciasEconomicas).
calificacionDe(5, maestriaInfanciaYCultura).
calificacionDe(3, maestriaEstudiosCulturalesLatinoamericanos).
calificacionDe(5, maestriaBiologiaComputacional).
calificacionDe(4, maestriaComunicacionDesarrolloYCambioSocial).
calificacionDe(4, maestriaUrbanismoYDesarrolloTerritorial).
calificacionDe(5, maestriaAdministracionDeEmpresasTuristicasYHoteleras).
calificacionDe(5, maestriaPeriodismoCientifico).

duracionDe(8, doctoradoEstudiosArtisticos).
duracionDe(7, doctoradoFilosofia).
duracionDe(9, doctoradoLiteratura).
duracionDe(9, doctoradoPsicologia).
duracionDe(4, doctoradoEstudiosSociales).
duracionDe(8, doctoradoCienciasJuridicas).
duracionDe(9, doctoradoFinanzasGobiernoYRelacionesInternacionales).
duracionDe(6, doctoradoHistoria).
duracionDe(8, doctoradoEducacion).
duracionDe(9, doctoradoEpidemiologiaClinica).
duracionDe(9, doctoradoCienciasDelMar).
duracionDe(7, doctoradoTeologia).
duracionDe(10, doctoradoCienciasBiomedicas).
duracionDe(7, doctoradoIngenieriaDeSistemasYComputacion).
duracionDe(9, doctoradoCienciasFisicas).
duracionDe(7, doctoradoComunicacionSocialYPeriodismo).
duracionDe(8, doctoradoIngenieria).
duracionDe(5, doctoradoContaduriaPublica).

duracionDe(6, maestriaTrastornosCognoscitivosYDelAprendizaje).
duracionDe(4, maestriaCienciasDeLaInformacionYLasComunicaciones).
duracionDe(7, maestriaAntropologia).
duracionDe(6, maestriaEstudiosDelPatrimonioCultural).
duracionDe(7, maestriaEconomia).
duracionDe(9, maestriaArtesPlasticasElectronicasYDelTiempo).
duracionDe(5, maestriaDesarrolloSustentableYGestionAmbiental).
duracionDe(10, maestriaEstadisticaAplicada).
duracionDe(9, maestriaActividadFisicaParaLaSalud).
duracionDe(9, maestriaCreacionAudiovisual).
duracionDe(4, maestriaCienciasEconomicas).
duracionDe(5, maestriaInfanciaYCultura).
duracionDe(10, maestriaEstudiosCulturalesLatinoamericanos).
duracionDe(4, maestriaBiologiaComputacional).
duracionDe(8, maestriaComunicacionDesarrolloYCambioSocial).
duracionDe(9, maestriaUrbanismoYDesarrolloTerritorial).
duracionDe(6, maestriaAdministracionDeEmpresasTuristicasYHoteleras).
duracionDe(8, maestriaPeriodismoCientifico).

%Reglas de Clasificacion
maestriaEnPais(X, Y) :- maestriaDe(X, A), universidadDe(A, B), ciudadDe(B, Y).
doctoradoEnPais(X, Y) :- doctoradoDe(X, A), universidadDe(A, B), ciudadDe(B, Y).

maestriaEnCiudad(X, Y) :- maestriaDe(X, A), universidadDe(A, Y).
doctoradoEnCiudad(X, Y) :- doctoradoDe(X, A), universidadDe(A, Y).

%------------------------

costoMaestriaMenorA(X, Y, Z) :- esMaestria(Y), costoDe(X, Y), X < Z.
costoDoctoradoMenorA(X, Y, Z) :- esDoctorado(Y), costoDe(X, Y), X < Z.

costoMaestriaMenorAEnPais(X, Y, Z, P) :- maestriaEnPais(Y, P), costoDe(X, Y), X < Z.
costoDoctoradoMenorAEnPais(X, Y, Z, P) :- doctoradoEnPais(Y, P), costoDe(X, Y), X < Z.

costoMaestriaMenorAEnCiudad(X, Y, Z, P) :- maestriaEnCiudad(Y, P), costoDe(X, Y), X < Z.
costoDoctoradoMenorAEnCiudad(X, Y, Z, P) :- doctoradoEnCiudad(Y, P), costoDe(X, Y), X < Z.

costoMaestriaMayorA(X, Y, Z) :- esMaestria(Y), costoDe(X, Y), X >= Z.
costoDoctoradoMayorA(X, Y, Z) :- esDoctorado(Y), costoDe(X, Y), X >= Z.

costoMaestriaMayorAEnPais(X, Y, Z, P) :- maestriaEnPais(Y, P), costoDe(X, Y), X >= Z.
costoDoctoradoMayorAEnPais(X, Y, Z, P) :- doctoradoEnPais(Y, P), costoDe(X, Y), X >= Z.

costoMaestriaMayorAEnCiudad(X, Y, Z, P) :- maestriaEnCiudad(Y, P), costoDe(X, Y), X >= Z.
costoDoctoradoMayorAEnCiudad(X, Y, Z, P) :- doctoradoEnCiudad(Y, P), costoDe(X, Y), X >= Z.

%------------------------

calificacionMaestriaMenorA(X, Y, Z) :- esMaestria(Y), calificacionDe(X, Y), X < Z.
calificacionDoctoradoMenorA(X, Y, Z) :- esDoctorado(Y), calificacionDe(X, Y), X < Z.

calificacionMaestriaMayorA(X, Y, Z) :- esMaestria(Y), calificacionDe(X, Y), X >= Z.
calificacionDoctoradoMayorA(X, Y, Z) :- esDoctorado(Y), calificacionDe(X, Y), X >= Z.

%------------------------

duracionMaestriaMenorA(X, Y, Z) :- esMaestria(Y), duracionDe(X, Y), X < Z.
duracionDoctoradoMenorA(X, Y, Z) :- esDoctorado(Y), duracionDe(X, Y), X < Z.

duracionMaestriaMayorA(X, Y, Z) :- esMaestria(Y), duracionDe(X, Y), X >= Z.
duracionDoctoradoMayorA(X, Y, Z) :- esDoctorado(Y), duracionDe(X, Y), X >= Z.

%------------------------

maestriaVirtualEnPais(X, Y) :- maestriaEnPais(X, Y), modalidadDe(virtual, X).
doctoradoVirtualEnPais(X, Y) :- doctoradoEnPais(X, Y), modalidadDe(virtual, X).

%------------------------

maestriaCostoEnUniversidadEnCiudadEnPaisConCalificacionDeDuracionYModalidad(M, CO, U, C, P, CA, D, MO) :- 
	costoDe(CO, M), maestriaDe(M, U), maestriaEnCiudad(M, C), maestriaEnPais(M, P), calificacionDe(CA, M), duracionDe(D, M), modalidadDe(MO, M).

doctoradoCostoEnUniversidadEnCiudadEnPaisConCalificacionDeDuracionYModalidad(D, CO, U, C, P, CA, DU, MO) :- 
	costoDe(CO, D), doctoradoDe(D, U), doctoradoEnCiudad(D, C), doctoradoEnPais(D, P), calificacionDe(CA, D), duracionDe(DU, D), modalidadDe(MO, D).
