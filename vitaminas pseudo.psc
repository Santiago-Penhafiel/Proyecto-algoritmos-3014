Algoritmo vitaminas
	definir altura, peso Como Real;
	definir sexo, edad como cadena;
	definir estudiantes como entero;
	imprimir "Ingrese el numero de estudiantes";
	leer estudiantes;
	Mientras estudiantes<=0 Hacer
		imprimir "Ingrese una cantidad valida";
		leer estudiantes;
	FinMientras
	Dimension vita[estudiantes];
	para i<-0 Hasta estudiantes-1 con paso 1 Hacer
		Imprimir "¿El estudiante ", i+1 ," tiene mas de 18 anios? s/n";
		leer edad;
		Mientras (edad<>'s' y edad<>'n')
			Imprimir "Ingrese una respuesta valida";
			leer edad;
		FinMientras
		si edad=='s'
			Imprimir "Si el estudiante ", i+1 ," es varon ingrese M, si es mujer ingrese F";
			leer sexo;
			sexo<-Mayusculas(sexo);
			Mientras (sexo<>'M' y sexo<>'F')
				Imprimir "Ingrese un sexo valido";
				leer sexo;
				sexo<-Mayusculas(sexo);
			FinMientras
			Imprimir "Ingrese la altura del estudiante ", i+1, " en metros";
			leer altura;
			Mientras (altura<=1 o altura>2.5) Hacer
				Imprimir "Ingrese una cantidad valida";
				leer altura;
			FinMientras
			imprimir "Ingrese el peso del estudiante ", i+1, " en libras";
			leer peso;
			Mientras (peso <=60 o peso>400) Hacer
				Imprimir "Ingrese una cantidad valida";
				leer peso;
			FinMientras
			si sexo=='M' Entonces
				si (altura>1.6 y peso>=150) Entonces
					vita[i]<-altura*0.2+peso*0.8;
				SiNo
					vita[i]<-altura*0.3+peso*0.7;
				FinSi
			SiNo
				si (altura>1.5 y peso>=130) Entonces
					vita[i]<-altura*0.25+peso*0.75;
				SiNo
					vita[i]<-altura*0.35+peso*0.65;
				FinSi
			FinSi
		sino
			Imprimir "La dosis solo es aplicable para mayores de edad";
			vita[i]<-0;
		FinSi
	FinPara
	Para i<-0 Hasta estudiantes-1 Con Paso 1 Hacer
		si (vita[i]<>0) Entonces
			Imprimir "La dosis de vitaminas para el estudiante ", i+1, " es de ", vita[i], " gramos";
		SiNo
			Imprimir "El estudiante ", i+1, " es menor de edad, la dosis no aplica";
		FinSi
	FinPara	
FinAlgoritmo
