Algoritmo PromedioNotas
	Definir Nota1, Nota2, Nota3, promedio Como Real
	Escribir "Ingresar las calificaciones: "
	Leer Nota1
	Leer Nota2
	Leer Nota3
	promedio = redon((Nota1 + Nota2 + Nota3)/3)
	
	si promedio >= 11 Entonces
		Escribir "El promedio es: " promedio ",el estudiante esta APROBADO "
	SiNo
		Escribir "El promedio es: " promedio ",el estudiante esta DESAPROBADO "
	FinSi
FinAlgoritmo
