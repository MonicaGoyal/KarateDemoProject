package practicenew;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class testrunner {
	
	@Test
	public Karate testapirun() {
		return Karate.run("creatrjobentrywithvariables.feature").relativeTo(getClass());
		

}
}