package Com.karate.automation;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;


public class parallelBuilder {
	
	
	@Test
	public void executearateTest() {
		
		Builder arunner =new Builder();
		
		arunner.path("classpath:Com/karate/automation");
	Results result =arunner.parallel(5);
	
	System.out.println("Total feature" + result.getFeaturesTotal());	
	

	System.out.println("Total PASSED" + result.getScenariosTotal());
	

		System.out.println("Total Failed" + result.getFailCount());
		
		Assertions.assertEquals(0, result.getFailCount(),"There are some failed scenarios");
		
	}

}
