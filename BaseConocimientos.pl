/* BASE DE CONOCIMIENTOS: Sintomas y Enfermedades del Aparato Respiratorio, contiente ademas
el identificador de imagenes de acuerdo al  sintoma
*/

/*Oli*/ 

conocimiento('gingivitis',
['¿Tiene inflamacion de las encias?', '¿Tiene sangrado durante el cepillado dental?',
'¿Tiene coloracion rojo oscuro de las encias?','¿Tiene mal aliento?','¿Es sensible con las encias?']).

conocimiento('cirrosis_hepatica',
['¿Tiene fatiga?', '¿Tiene perdida de apetito?', '¿Aparicion de hematonas?',
'¿Tiene dificultad de hablar?','¿Tiene Hinchazon en las piernas?',
'¿Siente picazon en la piel?']).

conocimiento('enfermedad_de_crohn',
['¿Siente dolor abdominal (zona del vientre) con colicos?', '¿Tiene fiebre?', 
'¿Siente fatiga?', '¿Tiene falta de apetito y pérdida de peso?', 
'¿Tiene diarrea acuosa?', '¿Tiene llagas en la boca?']).

conocimiento('intolerancia_a_la_lactosa',
    ['¿Experimenta Diarrea?', '¿Experimenta Gases?', '¿Experimenta Hinchazon?',
     '¿Experimenta Nauseas?', '¿Experimenta Vomitos?', '¿Experimenta Dolores agudos en el abdomen?']).

conocimiento('apendicitis',
    ['¿Tienes dolor repentino en el lado inferior derecho del abdomen?', '¿Tienes Dolor que empeora gradualmente?', '¿Tienes Fiebre?',
     '¿Presentas nauseas?', '¿Experimenta Vomitos?', '¿Experimenta hinchazon abdominal?','¿Experimenta Diarrea?']).

conocimiento('Colitis_Ulcerosa',
['¿Experimenta Diarrea con sangre o moco?', '¿Tiene colicos abdominales?', 
'¿Siente fatiga?', '¿Tiene falta de apetito y perdida de peso?', 
'¿Tiene ganas de evacuar y urgencias defectadora?']).

/*Oli*/
% Gingivitis
id_imagen_preg('¿Tiene inflamacion de las encias?','inflamacion_de_encias').
id_imagen_preg('¿Tiene sangrado durante el cepillado dental?','sangrado_al_sepillarse').
id_imagen_preg('¿Tiene coloracion rojo oscuro de las encias?','encias_color_rojo').
id_imagen_preg('¿Tiene mal aliento?','mal_aliento').
id_imagen_preg('¿Es sensible con las encias?','encias_sencibles').

%Cirrosis hepatica
id_imagen_preg('¿Tiene fatiga?','fatiga').
id_imagen_preg('¿Tiene perdida de apetito?','perdida_de_apetito').
id_imagen_preg('¿Aparicion de hematonas?','aparicion_de_hematonas').
id_imagen_preg('¿Tiene dificultad de hablar?','dificultad_de_respirar').
id_imagen_preg('¿Tiene Hinchazon en las piernas?','hinchazon_de_pies').
id_imagen_preg('¿Siente picazon en la piel?','picazon_en_la_piel').

%Enfermedad de crohn
id_imagen_preg('¿Siente dolor abdominal (zona del vientre) con colicos?','dolor_abdominal').
id_imagen_preg('¿Tiene fiebre?','fiebre').
id_imagen_preg('¿Siente fatiga?','fatiga_dos').
id_imagen_preg('¿Tiene falta de apetito y pérdida de peso?','perdida_de_apetitoII').
id_imagen_preg('¿Tiene diarrea acuosa?','diarea_ocuosa').
id_imagen_preg('¿Tiene llagas en la boca?','llagas_en_la_boca').

% Intolerancia a la lactosa
id_imagen_preg('¿Experimenta Diarrea?', 'diarrea').
id_imagen_preg('¿Experimenta Gases?', 'gases').
id_imagen_preg('¿Experimenta Hinchazon?', 'hinchazon').
id_imagen_preg('¿Experimenta Nauseas?', 'nauseas').
id_imagen_preg('¿Experimenta Vomitos?', 'vomito').
id_imagen_preg('¿Experimenta Dolores agudos en el abdomen?', 'dolor_abdominal').


% apendicitis
id_imagen_preg('¿Tienes dolor repentino en el lado inferior derecho del abdomen?', 'dolor_derecho_del_abdomen').
id_imagen_preg('¿Tienes Dolor que empeora gradualmente?', 'dolor_que_empeora_gradualmente').
id_imagen_preg('¿Tienes Fiebre?', 'fiebre').
id_imagen_preg('¿Presentas nauseas?', 'nauseas').
id_imagen_preg('¿Experimenta Vomitos?', 'vomito').
id_imagen_preg('¿Experimenta hinchazon abdominal?', 'hinchazon_abdominal').
id_imagen_preg('¿Experimenta Diarrea?', 'diarrea').


% Colitis Ulcerosa
id_imagen_preg('¿Experimenta Diarrea con sangre o moco?', 'diarrea_con_sangre').
id_imagen_preg('¿Tiene colicos abdominales?', 'colicos_abdominales').
id_imagen_preg('¿Siente fatiga?', 'fatiga_tres').
id_imagen_preg('¿Tiene falta de apetito y perdida de peso?', 'perdida_de_apetitoIII').
id_imagen_preg('¿Tiene ganas de evacuar y urgencias defectadora?', 'cu_ganas_de_evacuar').
