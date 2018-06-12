package util

import java.text.SimpleDateFormat
import java.util.concurrent.ThreadLocalRandom

/**
 * Created by trini on 31/01/2018.
 */
class Utilidades {

    static generarFechaAleatoria() {
		int numero = 0;
		Random aleatorio;
		aleatorio = new Random();

		Calendar unaFecha = Calendar.getInstance();
		unaFecha.set (aleatorio.nextInt(10)+2014, aleatorio.nextInt(12)+1, aleatorio.nextInt(30)+1);
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MMMMM/yyyy");
		return sdf.format(unaFecha.getTime());
    }
}
