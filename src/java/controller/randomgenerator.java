/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author amisha
 */
 import java.util.concurrent.ThreadLocalRandom;

public class randomgenerator {
   
	public static int random() {
		int randomInt = ThreadLocalRandom.current().nextInt(1000, 9999);
		return randomInt;
	}
}

