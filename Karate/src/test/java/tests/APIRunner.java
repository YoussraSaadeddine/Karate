package tests;

import org.junit.runner.RunWith;


import com.intuit.karate.junit4.Karate;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;


@RunWith(Karate.class)
@CucumberOptions(plugin = {"pretty","html:target/rapport.html","json:target/cucumber.json"})

public class APIRunner {
	

}