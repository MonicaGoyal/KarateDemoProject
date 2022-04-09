package practicenew;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class Parallelrunner {
	
	@Test
	public void executeparallelrunner() {
		
		Builder arunner = new Builder();
		arunner.path("classpath:practicenew");
		Results result =arunner.parallel(5);
		System.out.println("The value of total features" + result.getFeaturesTotal());
		System.out.println("The value of total failed cases " + result.getFeaturesFailed());
		System.out.println(result.getScenariosTotal());
		System.out.println(result.getScenariosFailed());
	    Assertions.assertEquals(0, result.getFeaturesFailed(), "There are some failed cases");
		
		
		
		
	}
	

}
