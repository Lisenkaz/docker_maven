package com.example;

public class App {
    public static void main(String[] args) {
        System.out.println("Hello, Maven!");
        // Чтобы приложение не завершалось сразу, добавьте задержку
        try {
            Thread.sleep(60000); // Задержка на 60 секунд для тестирования
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}