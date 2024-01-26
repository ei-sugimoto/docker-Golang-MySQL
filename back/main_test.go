package main

import (
    "net/http"
    "net/http/httptest"
    "testing"
)

func TestHandler(t *testing.T) {
    req, err := http.NewRequest("GET", "", nil)
    if err != nil {
        t.Fatal(err)
    }

    rec := httptest.NewRecorder()
    handler := http.HandlerFunc(handler)

    handler.ServeHTTP(rec, req)

    if status := rec.Code; status != http.StatusOK {
        t.Errorf("handler returned wrong status code: got %v want %v", status, http.StatusOK)
    }

    expected := "Hello World"
    if rec.Body.String() != expected {
        t.Errorf("handler returned unexpected body: got %v want %v", rec.Body.String(), expected)
    }
}

func TestGetUsers(t *testing.T) {
    users := getUsers()
    if users == nil {
        t.Errorf("getUsers returned nil")
    }
}