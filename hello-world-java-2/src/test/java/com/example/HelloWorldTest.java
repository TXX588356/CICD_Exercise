package com.example;

import org.junit.Test;
import static org.junit.Assert.*;
public class HelloWorldTest {
    @Test
    public void testGetGreeting() {
        Main helloWorld = new Main();
        assertEquals("Hello, World!", helloWorld.getGreeting());
    }
}
