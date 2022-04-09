package Com.karate.automation;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Runner.Builder;

public class Testrunner {
	@Test
	public void executeparalleltests() {
		Builder arunner = new Builder();
		arunner.path("classpath:Com/karate/automation");

		
		arunner.tags("@Regression","@Smoke");
	
		arunner.parallel(5);
		
	}
	

}
