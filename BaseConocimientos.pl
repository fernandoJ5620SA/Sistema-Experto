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

conocimiento('Cancer_de_estomago',
    ['¿Se siente cansado con frecuencia?', '¿Siente que tu estómago está hinchado?', 
    '¿Se siente lleno rápidamente después de comer?', 
    '¿Siente dolor o molestias en la parte superior del abdomen después de comer?', 
    '¿Ha vomitado más de lo normal recientemente?', '¿Ha perdido peso sin intentarlo?', 
    '¿Se siente mareado o con náuseas?',
    '¿Siente dolor o ardor en la parte superior del abdomen?']).

conocimiento('Infarto_intestinal',
    ['¿Ha experimentado un dolor abdominal severo y repentino?', 
    '¿Ha tenido vómitos recientemente?', 
    '¿Ha notado cambios en sus hábitos intestinales, como diarrea o estreñimiento?', 
    '¿Ha observado la presencia de sangrado rectal?', 
    '¿Ha sentido una distensión abdominal?']).


/* Úlcera péptica */
conocimiento('Ulcera_peptica',
    ['¿Ha experimentado dolor y ardor estomacal?', 
    '¿Ha presentado intolerancia a los regrescos con gas?', 
    '¿Ha presentado nauseas?', 
    '¿Ha sentido acidez en el estomago?',
    '¿Ha experimentado sensacion de hincazon?']).

/* Enfermedad celíaca */
conocimiento('Enfermedad_celiaca',
    ['¿Ha experimentado un dolor abdominal?', 
    '¿Ha tenido diarrea ultimamente?', 
    '¿Ha presentadoIrritabilidad?', 
    '¿Ha observado decaimiento animico?']).



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

/*Cancer*/

id_imagen_preg('¿Se siente cansado con frecuencia?', 'fatiga_tres').
id_imagen_preg('¿Siente que tu estómago está hinchado?', 'sensacion_de_hinchazon').
id_imagen_preg('¿Se siente lleno rápidamente después de comer?', 'saciedad_rapida').
id_imagen_preg('¿Siente dolor o molestias en la parte superior del abdomen después de comer?', 'indigestion').
id_imagen_preg('¿Ha vomitado más de lo normal recientemente?', 'vomitos_frecuentes').
id_imagen_preg('¿Ha perdido peso sin intentarlo?', 'adelgazamiento_involuntario').
id_imagen_preg('¿Se siente mareado o con náuseas?', 'nauseas_dos').
id_imagen_preg('¿Siente dolor o ardor en la parte superior del abdomen?', 'dolor_y_ardor_estomacal').

/*Infarto intestinal*/

id_imagen_preg('¿Ha experimentado un dolor abdominal severo y repentino?', 'dolor_abdominal_severo').
id_imagen_preg('¿Ha tenido vómitos recientemente?', 'vomitos_infarto').
id_imagen_preg('¿Ha notado cambios en sus hábitos intestinales, como diarrea o estreñimiento?', 'diarrea_o_estreñimiento').
id_imagen_preg('¿Ha observado la presencia de sangrado rectal?', 'sangrado_rectal').
id_imagen_preg('¿Ha sentido una distensión abdominal?', 'distension_abdominal').


/* Úlcera péptica */
id_imagen_preg('¿Ha experimentado dolor y ardor estomacal?', 'dolor_ardor').
id_imagen_preg('¿Ha presentado intolerancia a los regrescos con gas?', 'intoleran_refrescos').
id_imagen_preg('¿Ha presentado nauseas?', 'nauseas').
id_imagen_preg('¿Ha sentido acidez en el estomago?', 'acidez_estomago').
id_imagen_preg('¿Ha experimentado sensacion de hincazon?', 'sensa_hincha').


/* Enfermedad celíaca */
id_imagen_preg('¿Ha experimentado un dolor abdominal?', 'dolor_adominal').
id_imagen_preg('¿Ha tenido diarrea ultimamente?', 'diarrea').
id_imagen_preg('¿Ha presentado Irritabilidad?', 'irritabili').
id_imagen_preg('¿Ha observado decaimiento animico?', 'decaimiento').
