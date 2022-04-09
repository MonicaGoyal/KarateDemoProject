package ignoretegs;



import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class testrunner {
	@Test
	public Karate executetest() {
		
		return Karate.run("fuzzymatcher","updatejobentry").tags("~@ignore").relativeTo(getClass());
		
		
		
		
	}

}
