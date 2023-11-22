

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


 resource(cancer_de_laringe, image, image('tratamiento_cancer_laringe.jpg')).
 resource(fibrosis_pulmonar, image, image('tratamiento_fibrosis_pulmonar.jpg')).
 resource(enfisema_pulmonar, image, image('tratamiento_enfisema_pulmonar.jpg')).
 resource(faringitis, image, image('tratamiento_faringitis.jpg')).
 resource(amigdalitis, image, image('tratamiento_amigdalitis.jpg')).
 resource(hidrocucion, image, image('tratamiento_hidrocusion.jpg')).
 
 % gingivitis
 resource(inflamacion_de_encias, image, image('inflamacion_de_encias.jpg')).
 resource(sangrado_al_sepillarse, image, image('sangrado_al_sepillarse.jpg')).
 resource(encias_color_rojo, image, image('encias_color_rojo.jpg')).
 resource(mal_aliento, image, image('mal_aliento.jpg')).
 resource(encias_sencibles, image, image('encias_sencibles.jpg')).

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

%Intolerancia a la lactosa
resource(Diarrea, image, image('diarrea_intolerancia_ala_lactosa.jpg')).
resource(Gases, image, image('gases_intolerancia_ala_lactosa.jpg')).
resource(Hinchazon, image, image('Hinchazon_intolerancia_ala_lactosa.jpg')).
resource(Nauseas, image, image('Nauseas_intolerancia_ala_lactosa.jpg')).
resource(Vomitos, image, image('Vomitos_intolerancia_ala_lactosa.jpg')).
resource(Dolores_agudos_en_el_abdomen, image, image('Dolores_agudos_en_el_abdomen_intolerancia_ala_lactosa.jpg')).


%Intolerancia a la lactosa

 
 % Todos los tratamientos importante ponerlos al final.
 resource(gingivitis, image, image('tratamiento_gingivitis.jpg')).
 resource(cirrosis_hepatica, image, image('tratamiento_cirrosis.jpg')).
 resource(enfermedad_de_crohn, image, image('tratamiento_enfermedad_crohn.jpg')).
 resource(Intolerancia_a_la_lactosa, image, image('tratamiento_intoleranciaalalactosa.png')).


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
                send(@main, display,@boton,point(20,450)),
                send(@main, display,@btntratamiento,point(138,450)).



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
  

   preguntar(Preg,Resp):-new(Di,dialog('Colsultar Datos:')),
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

  interfaz_principal:-new(@main,dialog('Sistema Experto Diagnosticador de Enfermedades del Aparato Respiratorio',
        size(1000,1000))),
        new(@texto, label(nombre,'El Diagnostico a partir de los datos es:',font('times','roman',18))),
        new(@resp1, label(nombre,'',font('times','roman',22))),
        new(@lblExp1, label(nombre,'',font('times','roman',14))),
        new(@lblExp2, label(nombre,'',font('times','roman',14))),
        new(@salir,button('SALIR',and(message(@main,destroy),message(@main,free)))),
        new(@boton, button('Iniciar consulta',message(@prolog, botones))),

        new(@btntratamiento,button('�Tratamiento?')),

        nueva_imagen(@main, img_principal),
        send(@main, display,@boton,point(138,450)),
        send(@main, display,@texto,point(20,130)),
        send(@main, display,@salir,point(300,450)),
        send(@main, display,@resp1,point(20,180)),
        send(@main,open_centered).

       borrado:- send(@resp1, selection('')).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  crea_interfaz_inicio:- new(@interfaz,dialog('Sistema Experto Diagnosticador de Enfermedades del Aparato Respiratorio',
  size(1000,1000))),

  mostrar_imagen(@interfaz, portada),

  new(BotonComenzar,button('COMENZAR',and(message(@prolog,interfaz_principal) ,
  and(message(@interfaz,destroy),message(@interfaz,free)) ))),
  new(BotonSalir,button('SALIDA',and(message(@interfaz,destroy),message(@interfaz,free)))),
  send(@interfaz,append(BotonComenzar)),
  send(@interfaz,append(BotonSalir)),
  send(@interfaz,open_centered).

  :-crea_interfaz_inicio, consult('Shell.pl'), consult('BaseConocimientos.pl').