/* BASE DE CONOCIMIENTOS: Sintomas y Enfermedades del Aparato Respiratorio, contiente ademas
el identificador de imagenes de acuerdo al  sintoma
*/

/*Oli*/ 

conocimiento('gingivitis',
['¿tiene inflamacion de las encias?', '¿tiene sangrado durante el cepillado dental?',
'¿tiene coloracion rojo oscuro de las encias?','¿tiene mal aliento?','¿Es sensible con las encias?']).

conocimiento('enfermedad_de_crohn',
['¿Siente dolor abdominal (zona del vientre) con cólicos?', '¿Tiene fiebre?', 
'¿siente fatiga?', '¿tiene falta de apetito y pérdida de peso?', 
'¿tiene diarrea acuosa?', '¿tiene llagas en la boca?']).

conocimiento('cirrosis_hepatica',
['¿tiene fatiga?', '¿Tiene perdida de apetito?', '¿Aparicion de hematonas?',
'¿tiene dificultad de hablar?','¿tiene Hinchazon en las piernas?',
'¿Siente picazon en la piel?']).

conocimiento('Intolerancia_a_la_lactosa',
    ['¿Experimenta Diarrea?', '¿Experimenta Gases?', '¿Experimenta Hinchazon?',
     '¿Experimenta Nauseas?', '¿Experimenta Vomitos?', '¿Experimenta Dolores agudos en el abdomen?']).



/*Oli*/
id_imagen_preg('¿tiene inflamacion de las encias?','inflamacion_de_encias').
id_imagen_preg('¿tiene sangrado durante el cepillado dental?','sangrado_al_sepillarse').
id_imagen_preg('¿tiene coloracion rojo oscuro de las encias?','encias_color_rojo').
id_imagen_preg('¿tiene mal aliento?','mal_aliento').
id_imagen_preg('¿Es sensible con las encias?','encias_sencibles').


id_imagen_preg('¿tiene fatiga?','fatiga').
id_imagen_preg('¿Tiene perdida de apetito?','perdida_de_apetito').
id_imagen_preg('¿Aparicion de hematonas?','aparicion_de_hematonas').
id_imagen_preg('¿tiene dificultad de hablar?','dificultad_de_respirar').
id_imagen_preg('¿tiene Hinchazon en las piernas?','hinchazon_de_pies').
id_imagen_preg('¿Siente picazon en la piel?','picazon_en_la_piel').


id_imagen_preg('¿Siente dolor abdominal (zona del vientre) con cólicos?','dolor_abdominal').
id_imagen_preg('¿Tiene fiebre?','fiebre').
id_imagen_preg('¿siente fatiga?','fatiga_dos').
id_imagen_preg('¿tiene falta de apetito y pérdida de peso?','perdida_de_apetitoII').
id_imagen_preg('¿tiene diarrea acuosa?','diarea_ocuosa').
id_imagen_preg('¿tiene llagas en la boca?','llagas_en_la_boca').


id_imagen_preg('�tiene presenta frecuentemente p�rdida de peso?','perdida_de_peso').
id_imagen_preg('�tiene ansiedad?','ansiedad').
id_imagen_preg('�tiene degluci�n dif�cil?','deglusion_dificil').
id_imagen_preg('�tiene hinchazon de la garganta?','hinchazon_de_la_garganta').
id_imagen_preg('�tiene fiebre m�s o menos elevada?','fiebre').
id_imagen_preg('�tiene prurito (comezon) far�ngeo?','prurito_faringeo').
id_imagen_preg('�tiene dolor local (odinofagia) que puede ser intenso?','dolor_local').
id_imagen_preg('�tiene fiebre y malestar general?','fiebre').
id_imagen_preg('�tiene voz gangosa?','voz_gangosa').
id_imagen_preg('�tiene adenopat�as cervicales dolorosas (inflamaci�n de los ganglios linf�ticos)?','adenopatia_cervical').
id_imagen_preg('�tiene sensaci�n de v�rtigo y zumbido en los o�dos?','sensacion_de_vertigo_y_zumbido_en_los_oidos').
id_imagen_preg('�tiene dolor de cabeza?','dolor_de_cabeza').
id_imagen_preg('�tiene tiene enrojecimiento de la piel con picaz�n y sensaci�n de calor, generalmente en el abdomen y la cara interna de brazos y piernas?','enrojecimiento_de_la_piel_con_picazon_y_sensacion_de_calor_generalmente_en_el_abdomen').
id_imagen_preg('�tiene d�ficit de agudeza visual con visi�n borrosa?','deficit_de_agudeza_visual_con_vision_borrosa').

/*Milton*/

id_imagen_preg('�tiene congestion nasal?','congestion_nasal').
id_imagen_preg('�tiene tos?','tos').
id_imagen_preg('�tiene dolor de garganta?','dolor_graganta').
id_imagen_preg('�tiene estornudos?','estornudo').
id_imagen_preg('�tiene mucosidad nasal?','congestion_nasal').
id_imagen_preg('�tiene tos escasa?','tos').
id_imagen_preg('�tiene fiebre?','fiebre').
id_imagen_preg('�tiene inflamacion de garganta?','irritacion_de_la_garganta').
id_imagen_preg('�tiene labios azules?','labios_azules').
id_imagen_preg('�tiene dificultades para respirar?','dificultad_para_respirar').
id_imagen_preg('�tiene dolor en el torax?','dolor_de_torax').
id_imagen_preg('�tiene tos cronica?','tos').
id_imagen_preg('�tiene tos productiva o constante?','tos').
id_imagen_preg('�tiene dificultades para respirar?','dificultad_para_respirar').
id_imagen_preg('�tiene los senos nasales inflamados?','senos_nasales_inflamado').
id_imagen_preg('�tiene irritada la nariz o senncible?','irritada_la_nariz_o_sencible').
id_imagen_preg('�tiene perdida de fuerza en extremidades?','perdida_de_fuerza_en_extremidades').
id_imagen_preg('�tiene picores en las manos y pies?','picores_en_manos_y_pies').
id_imagen_preg('�tiene a sentirse so�oliento todo el dia?','sonoliento_todo_el_dia').
id_imagen_preg('�tiene vision borrosa?','Vision_borrosa').
id_imagen_preg('�tiene dificultad para respirar?','dificultad_para_respirar').
id_imagen_preg('�tiene tos fuerte?','tos').
id_imagen_preg('�tiene debilidad en el cuerpo?','perdida_de_fuerza_en_extremidades').
id_imagen_preg('�tiene perdida de peso?','perdida_de_peso').
id_imagen_preg('�tiene babeo espontaneo?','babeo_espontaneo').
id_imagen_preg('�tiene dificultad para respirar?','dificultad_para_respirar').
id_imagen_preg('�tiene fiebre?','fiebre').
id_imagen_preg('�tiene retraccion de la pared toracica?','retraccion_de_la_pared_toracica').
id_imagen_preg('�tiene dolor toracico muy amenudo?','dolor_de_torax').
id_imagen_preg('�respira profundamente o realiza movimientos brucos con el pecho?','realiza_movimientos_bruscos_en_el_pecho').
id_imagen_preg('�tiene dolor de cuerpo?','Dolor_de_cuerpo').
id_imagen_preg('�tiene tos seca e irritativa?','tos').
id_imagen_preg('�tiene frio?','frio').
id_imagen_preg('�tiene alergias?','alergiacronica').
id_imagen_preg('�tiene dolor de cabeza?','dolor_de_cabeza').
id_imagen_preg('�tiene lagrimeo?','lagrimeo').
id_imagen_preg('�tiene tos perruna?','tos').
id_imagen_preg('�tiene irritacion de garganta?','irritacion_de_la_garganta').
id_imagen_preg('�tiene malestar general del cuerpo como al respirar?','Dolor-de_cuerpo').
id_imagen_preg('�tiene dificultad respiratoria?','dificultad_para_respirar').


id_imagen_preg('¿Experimenta Diarrea?', 'diarrea_intolerancia_ala_lactosa').
id_imagen_preg('¿Experimenta Gases?', 'gases_intolerancia_ala_lactosa').
id_imagen_preg('¿Experimenta Hinchazón?', 'Hinchazón_intolerancia_ala_lactosa').
id_imagen_preg('¿Experimenta Náuseas?', 'Náuseas_intolerancia_ala_lactosa').
id_imagen_preg('¿Experimenta Vómitos?', 'Vómitos_intolerancia_ala_lactosa').
id_imagen_preg('¿Experimenta Dolores agudos en el abdomen?', 'Dolores_agudos_en_el_abdomen_intolerancia_ala_lactosa').

