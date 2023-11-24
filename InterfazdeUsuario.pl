

/*
INTERFAZ GRAFICA: Esta parte del sistema experto es la que se encarga de
interactuar con la persona comun, mostrar imagenes, botones, textos, etc.
INICIAR SISTEMA EXPERTO:
PARA CORRER EL PROGRAMA, ES NESESARIO CARGAR LAS 3 PARTES AL SWI PROLOG
Y LUEGO SOLO CONSULTAR TODO, AUTOMATICAMENTE SE ABRIRA LA VENTANA DEL PROGRAMA
*/
 :- use_module(library(pce)).
 :- pce_image_directory('./img').
 :- use_module(library(pce_style_item)).
 :- dynamic color/2.


 resource(img_principal, image, image('principal.jpg')).
 resource(portada, image, image('portada.jpg')).
 resource('lo siento diagnostico desconocido', image, image('lo_siento_diagnostico_desconocido.jpg')).

 % gingivitis
 resource(inflamacion_de_encias, image, image('inflamacion_de_encias.jpg')).
 resource(sangrado_al_sepillarse, image, image('sangrado_al_sepillarse.jpg')).
 resource(encias_color_rojo, image, image('encias_color_rojo.jpg')).
 resource(mal_aliento, image, image('mal_aliento.jpg')).
 resource(encias_sencibles, image, image('encias_sencibles.jpg')).

 % Apendicitis
 resource(dolor_derecho_del_abdomen, image, image('abdominal_lado.jpg')).
 resource(dolor_que_empeora_gradualmente, image, image('dolor_abdominal.jpg')).
 resource(fiebre, image, image('fiebre.jpg')).
 resource(nauseas, image, image('nauseas.jpg')).
 resource(vomito, image, image('vomito.jpg')).
 resource(hinchazon_abdominal, image, image('hinchazon.jpg')).
 resource(diarrea, image, image('diarrea.jpg')).

  % Colitis Ulcerosa
 resource(diarrea_con_sangre, image, image('diarea_ocuosa.jpg')).
 resource(colicos_abdominales, image, image('dolor_abdominal.jpg')).
 resource(fatiga_tres, image, image('fatiga.jpg')).
 resource(perdida_de_apetitoIII, image, image('perdida_de_apetitoII.jpg')).
 resource(cu_ganas_de_evacuar, image, image('cu_ganas_de_evacuar.jpg')).

 % Cirrosis Hepatica
 resource(fatiga, image, image('fatiga.jpg')).
 resource(perdida_de_apetito, image, image('perdida_de_apetito.jpg')).
 resource(aparicion_de_hematonas, image, image('aparicion_de_hematonas.jpg')).
 resource(dificultad_de_respirar, image, image('dificultad_de_respirar.jpg')).
 resource(hinchazon_de_pies, image, image('hinchazon_de_pies.jpg')).
 resource(picazon_en_la_piel, image, image('picazon_en_la_piel.jpg')).

% Enfermedad de Crohn
 resource(dolor_abdominal, image, image('dolor_abdominal.jpg')).
 resource(fiebre, image, image('fiebre.jpg')).
 resource(fatiga_dos, image, image('fatiga_dos.jpg')).
 resource(perdida_de_apetitoII, image, image('perdida_de_apetitoII.jpg')).
 resource(diarea_ocuosa, image, image('diarea_ocuosa.jpg')).
 resource(llagas_en_la_boca, image, image('llagas_en_la_boca.jpg')).

 % Cancer de estomago
 resource(fatiga_tres, image, image('fatiga.jpg')).
 resource(sensacion_de_hinchazon, image, image('sensa_hinchazon.jpg')).
 resource(saciedad_rapida, image, image('saciedad_rapida.jpg')).
 resource(indigestion, image, image('indigestiones.jpg')).
 resource(vomitos_frecuentes, image, image('vomitos_frecuentes.jpg')).
 resource(adelgazamiento_invol, image, image('adelgazamiento_involuntario.jpg')).
 resource(nauseas_dos, image, image('nauseas_dos.jpg')).
 resource(dolor_y_ardor_estomacal, image, image('dolor_y_ardor_estomacal.jpg')).

 % Infarto intestinal
 resource(dolor_abdominal_severo, image, image('dolor_abdominal_severo.jpg')).
 resource(vomitos_infarto, image, image('vomitos_infarto.jpg')).
 resource(estrenimiento, image, image('estrenimiento.jpg')).
 resource(sangrado_rectal, image, image('sangrado_rectal.jpg')).
 resource(distension_abdominal, image, image('distension_abdominal.jpg')).

 % Úlcera péptica
 resource(dolor_ardor, image, image('dolor_ardor.jpg')). 
 resource(intoleran_refrescos, image, image('intoleran_refrescos.jpg')).
 resource(nauseasII, image, image('nauseas_dos.jpg')).
 resource(acidez_estomago, image, image('acidez_estomago.jpg')).
 resource(sensa_hincha, image, image('sensa_hinchazon.jpg')).

 % Enfermedad celíaca
 resource(dolor_abdominal, image, image('dolor_abdominal.jpg')). 
 resource(diarrea_one, image, image('diarrea.jpg')).
 resource(irritabilidad, image, image('irritabilidad.jpg')).
 resource(decaimiento, image, image('decaimiento.jpg')).

 % Intolerancia a la lactosa
 resource(diarrea, image, image('diarrea.jpg')).
 resource(gases, image, image('gases.jpg')).
 resource(hinchazon, image, image('hinchazon.jpg')).
 resource(nauseas, image, image('nauseas.jpg')).
 resource(vomito, image, image('vomito.jpg')).
 resource(dolor_abdominal, image, image('dolor_abdominal.jpg')).


 % Todos los tratamientos importante ponerlos al final.
 resource(gingivitis, image, image('tratamiento_gingivitis.jpg')).
 resource(apendicitis, image, image('tratamiento_apendicitis.jpg')).
 resource(colitis_ulcerosa, image, image('tratamiento_colitis_ulcerosa.jpg')).
 resource(cirrosis_hepatica, image, image('tratamiento_cirrosis.jpg')).
 resource(enfermedad_de_crohn, image, image('tratamiento_enfermedad_crohn.jpg')).
 resource(cancer_de_estomago, image, image('tratamiento_cancer_estomago.jpg')).
 resource(infarto_intestinal, image, image('tratamiento_infarto_intestinal.jpg')).
 resource(ulcera_peptica, image, image('tratamiento_ulcera_peptica.jpg')).
 resource(enfermedad_celiaca, image, image('tratamiento_enfermedad_celiaca.jpg')).
 resource(intolerancia_a_la_lactosa, image, image('tratamiento_intolerancialactosa.jpg')).


mostrar_imagen(Pantalla, Imagen) :- new(Figura, figure),
                                     new(Bitmap, bitmap(resource(Imagen),@on)),
                                     send(Bitmap, name, 1),
                                     send(Figura, display, Bitmap),
                                     send(Figura, status, 1),
                                     send(Pantalla, display,Figura,point(100,80)).
mostrar_imagen_tratamiento(Pantalla, Imagen) :-new(Figura, figure),
                                     new(Bitmap, bitmap(resource(Imagen),@on)),
                                     send(Bitmap, name, 1),
                                     send(Figura, display, Bitmap),
                                     send(Figura, status, 1),
                                     send(Pantalla, display,Figura,point(20,100)).
 nueva_imagen(Ventana, Imagen) :-new(Figura, figure),
                                new(Bitmap, bitmap(resource(Imagen),@on)),
                                send(Bitmap, name, 1),
                                send(Figura, display, Bitmap),
                                send(Figura, status, 1),
                                send(Ventana, display,Figura,point(0,0)).
 imagen_pregunta(Ventana, Imagen) :-new(Figura, figure),
                                new(Bitmap, bitmap(resource(Imagen),@on)),
                                send(Bitmap, name, 1),
                                send(Figura, display, Bitmap),
                                send(Figura, status, 1),
                                send(Ventana, display,Figura,point(500,60)).

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
 botones:-borrado,
                send(@boton, free),
                send(@btntratamiento,free),
                mostrar_diagnostico(Enfermedad), %modifique
                send(@texto, selection('El Diagnostico a partir de los datos es:')),
                send(@resp1, selection(Enfermedad)),
                new(@boton, button('Iniciar consulta',
                message(@prolog, botones)
                )),

                new(@btntratamiento,button('Detalles y Tratamiento',
                message(@prolog, mostrar_tratamiento,Enfermedad)
                )),
                send(@main, display,@boton,point(20,580)),
                send(@main, display,@btntratamiento,point(250,580)).



  mostrar_tratamiento(X):-new(@tratam, dialog('Tratamiento')),
                          send(@tratam, append, label(nombre, 'Explicacion: ')),
                          send(@tratam, display,@lblExp1,point(70,51)),
                          send(@tratam, display,@lblExp2,point(50,80)),
                          tratamiento(X),
                          send(@tratam, transient_for, @main),
                          send(@tratam, open_centered).

tratamiento(X):- send(@lblExp1,selection('De Acuerdo Al Diagnostico El Tratamiento Es:')),
                 mostrar_imagen_tratamiento(@tratam,X).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  

   preguntar(Preg,Resp):-new(Di,dialog('Consultar Datos:')),
                        new(L2,label(texto,'Responde las siguientes preguntas')),
                        id_imagen_preg(Preg,Imagen),
                        imagen_pregunta(Di,Imagen),
                        new(La,label(prob,Preg)),
                        new(B1,button(si,and(message(Di,return,si)))),
                        new(B2,button(no,and(message(Di,return,no)))),
                        send(Di, gap, size(25,25)),
                        send(Di,append(L2)),
                        send(Di,append(La)),
                        send(Di,append(B1)),
                        send(Di,append(B2)),
                        send(Di,default_button,'si'),
                        send(Di,open_centered),get(Di,confirm,Answer),
                        free(Di),
                        Resp=Answer.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  interfaz_principal:-new(@main,dialog('Sistema Experto - Sistema Digestivo',
        size(1000,1000))),
        new(@texto, label(nombre,'El Diagnostico a partir de los datos es:',font('times','roman',18))),
        new(@resp1, label(nombre,'',font('times','roman',22))),
        new(@lblExp1, label(nombre,'',font('times','roman',14))),
        new(@lblExp2, label(nombre,'',font('times','roman',14))),
        new(@salir,button('SALIR',and(message(@main,destroy),message(@main,free)))),
        new(@boton, button('Iniciar consulta',message(@prolog, botones))),

        new(@btntratamiento,button('�Tratamiento?')),

        nueva_imagen(@main, img_principal),
        send(@main, display,@boton,point(138,580)),
        send(@main, display,@texto,point(20,270)),
        send(@main, display,@salir,point(500,580)),
        send(@main, display,@resp1,point(20,310)),
        send(@main,open_centered).

       borrado:- send(@resp1, selection('')).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  crea_interfaz_inicio:- new(@interfaz,dialog('Sistema Experto - Sistema Digestivo',
  size(1000,1000))),

  mostrar_imagen(@interfaz, portada),

  new(BotonComenzar,button('COMENZAR',and(message(@prolog,interfaz_principal) ,
  and(message(@interfaz,destroy),message(@interfaz,free)) ))),
  new(BotonSalir,button('SALIDA',and(message(@interfaz,destroy),message(@interfaz,free)))),
  send(@interfaz,append(BotonComenzar)),
  send(@interfaz,append(BotonSalir)),
  send(@interfaz,open_centered).

  :-crea_interfaz_inicio, consult('Shell.pl'), consult('BaseConocimientos.pl').
