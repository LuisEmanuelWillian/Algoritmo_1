Algoritmo UNAMAD
	Definir NomEstudiante Como Caracter
	Definir carrera Como Entero
	Definir ConFecha Como Numero
	Definir Matricula, Mensualidad como Entero
	Escribir "*** --- Universidad Nacional Amazonica de Madre de Dios ---- ***"
	Escribir "SISTEMAS DE PAGO DE MATRICULAS Y PENSIONES"
	Escribir "Ingrese el nombre del estudiante: " Sin Saltar
	Leer NomEstudiante
	Escribir "¿Que carrera estudia?"
	Escribir "[1] Computacion e Informatica"
	Escribir "[2] Secretariado Ejecutivo"
	Escribir "[3] Administracion"
	Escribir "Selecione la Opcion: " Sin Saltar
	Leer Carrera
	Si (carrera = 1) Entonces
		Matricula = 300
		Mensualidad = 450
	FinSi
	Si (carrera = 2) Entonces
		Matricula = 200
		Mensualidad = 350
	FinSi
	si (carrera = 3) Entonces
		Matricula = 250
		Mensualidad = 400
	FinSi
	Escribir "¿Esta en el rango de la fecha permitido?" Sin Saltar
	Escribir "(1) = SI (0) = NO" Sin Saltar
	Leer ConFecha
	Si (ConFecha = 1) Entonces
		Definir concepto Como Entero
		Escribir "El estudiante esta dentro del rango de las fechas permitidas"
		Escribir "¿Que concepto desea pagar?"
		Escribir "[1] Matricula o mensualidad"
		Escribir "[2] Matricula y mensualidades"
		Escribir "[3] Todo el semestre"
		Escribir "[4] Toda la carrera"
		Escribir "Seleccione el concepto a pagar: " Sin Saltar
		Leer concepto
		Definir NroMensualidades Como Entero
		Definir NueMatricula, NueMensualidad, MontoPagar Como Real
		Si (concepto = 1) Entonces
			//Condición 1: pago Cuando matricula y mensualidad, no hay descuento.
			Definir opcionMM Como Entero
			Escribir "Elija una opcion para pagar: "
			Escribir "[1] Matricula"
			Escribir "[2] Mensualidad"
			Leer opcionMM
			si opcionMM = 1 Entonces
				Escribir "usted debe pagar: " Matricula
			SiNo
				Escribir "Usted debe pagar: " Mensualidad
			FinSi
		FinSi
		Si (concepto = 2) Entonces
			//Condición 2: pago de matricula + 2 hasta 4 mensualidades5% de descuento en la matricula y el 10% en las pensiones.
			Escribir "¿Cuantas mensualidades desea pagar?"
			Leer NroMensualidades
			si (NroMensualidades >= 2) Y (NroMensualidades <= 4 ) Entonces
				NueMatricula = Matricula * 0.05
				NueMensualidad = Mensualidad * 0.10
				MontoPagar = (Matricula - NueMatricula) + ((Mensualidad - NueMensualidad)* NroMensualidades)
				Escribir "Usted debe pagar: " MontoPagar
			SiNo
				Escribir "Error!!! No se puede realizar la operación"
			FinSi
		FinSi
		Si (concepto = 3) Entonces
			//Condición 3: Todo un semestre + matrícula; 
			//descuento del 20% al monto total de pensiones 
			//y el 10% a la matricula.
			NueMatricula = Matricula * 0.10
			NueMensualidad = Mensualidad * 0.20
			MontoPagar = (Matricula - NueMatricula) + ((Mensualidad - NueMensualidad)* 5)
			Escribir "Usted debe pagar: " MontoPagar
		FinSi
		Si (concepto = 4) Entonces
			//Condición 4: Toda la carrera descuento del 40% al 
			//monto total de pensiones y el 20% a las matrículas.
			NueMatricula = Matricula * 0.20
			NueMensualidad = Mensualidad * 0.40
			MontoPagar = ((Matricula - NueMatricula)*6) + ((Mensualidad - NueMensualidad)*30)
			Escribir "Usted debe pagar: " MontoPagar
		FinSi
	SiNo
		Escribir "El estudiante esta fuera del rango de las fechas permitidas"
		//si no está dentro del rango 
		//de las fechas de matricula y pago de pensiones (cuotas), 
		//el sistema le genera el 1% de multa por retraso a la mensualidad, 
		//de lo contrario se le pueden aplicar las siguientes condiciones:
		Definir multa Como Real
		multa = Mensualidad * 0.01
		Mensualidad = Mensualidad + multa
		Escribir "La nueva Mensualidad es: " Mensualidad
	FinSi
FinAlgoritmo
