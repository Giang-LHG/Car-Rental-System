package com.fa.carrentalsystem.model;

import java.time.LocalDate;

public class Feedback {
    private float ratings;
    private String content;
    private LocalDate dateTime;

    public Feedback(float ratings, String content, LocalDate dateTime) {
        this.ratings = ratings;
        this.content = content;
        this.dateTime = dateTime;
    }

    public float getRatings() {
        return ratings;
    }

    public void setRatings(float ratings) {
        this.ratings = ratings;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public LocalDate getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDate dateTime) {
        this.dateTime = dateTime;
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "ratings=" + ratings +
                ", content='" + content + '\'' +
                ", dateTime=" + dateTime +
                '}';
    }
}
