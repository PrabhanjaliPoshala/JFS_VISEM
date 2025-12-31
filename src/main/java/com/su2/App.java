package com.su2;

import java.util.Scanner;

public class App {

    // Function to check if a number is prime
    public static boolean isPrime(int n) {
        if (n <= 1) return false; // Numbers <=1 are not prime

        // Check divisibility from 2 to √n
        for (int i = 2; i * i <= n; i++) {
            if (n % i == 0) return false;
        }

        return true; // No divisors found → prime
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int num = sc.nextInt();

        if (isPrime(num))
            System.out.println(num + " is a PRIME number");
        else
            System.out.println(num + " is NOT a prime number");

        sc.close();
    }
}
