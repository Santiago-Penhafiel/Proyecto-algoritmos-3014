Algoritmo vitaminas
	Definir i, s, varon, edad Como Entero;
	Definir estatura, peso, a, b, total Como Real;
	
	Escribir "Escriba 1 para empezar, 0 para finalizar";
	Leer i;
	
	si i<>0 Entonces
		Repetir
			s=0;
			Mostrar "Escriba 1 si el paciente es varon, cualquier otro número si es mujer";
			Leer s;
			Mostrar "Escriba la estatura del paciente en metros";
			Leer estatura;
			Mientras estatura<1 o estatura>2.2 Hacer
				Mostrar "Escriba una estatura válida";
				Leer estatura;
			Fin Mientras
			
			Mostrar "Escriba el peso en lb del estudiante";
			Leer peso;
			Mientras peso<=50 o peso>300 Hacer
				Mostrar "Escriba un peso valido";
				Leer peso;
			Fin Mientras
			
			Mostrar "Escriba la edad del estudiante";
			Leer edad;
			Mientras edad<=0 o edad>60 Hacer
				Mostrar "Escriba una edad valida";
				Leer edad;
			Fin Mientras
			
			Si edad>=18
				Si s==1
					Si estatura>1.6 y peso>=150
						a=estatura*0.2;
						b=peso*0.8;
					SiNo
						a=estatura*0.3;
						b=peso*0.7;
					FinSi
				SiNo
					Si estatura>1.5 y peso>=130
						a=estatura*0.25;
						b=peso*0.75;
					SiNo
						a=estatura*0.35;
						b=peso*0.65;
					FinSi
				FinSi
				total=a+b;
				Mostrar "La dosis recetada es de ",total;
			SiNo
				Mostrar "La dosis no aplica para personas menores a 18 años de edad";
			FinSi
			Mostrar "Escriba 1 para continuar, 0 para finalizar";
			Leer i;
		Mientras que i<>0
	FinSi
	Mostrar "Fin";
	
FinAlgoritmo
