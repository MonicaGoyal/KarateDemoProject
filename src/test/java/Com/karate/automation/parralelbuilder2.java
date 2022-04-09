package Com.karate.automation;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;

public class parralelbuilder2 {
	@Test
	public void executetestcases() {
		
		Builder arunner = new Builder();
		arunner.path("classpath:Com/karate/automation");
		Results result = arunner.parallel(5);
		System.out.println("the no of scenario" + result.getScenariosTotal());
		System.out.println("the no of features" + result.getFeaturesPassed());
		
	}

	
}
