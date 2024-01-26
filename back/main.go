package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"net/http"

	_ "github.com/go-sql-driver/mysql"
)

type User struct {
	ID            int    `json:"id"`
	Username      string `json:"username"`
	Password_hash string `json:"password_hash"`
	Email         string `json:"email"`
}

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World")
}

func getUsers() []*User {
	db, err := sql.Open("mysql", "tester:password@tcp(db:3306)/GistsBoard")

	if err != nil {
		log.Println("CANT CONNECT TO DB")
		panic(err)

	}
	defer db.Close()

	results, err := db.Query("SELECT * FROM users")
	if err != nil {
		log.Println("CANT QUERY DB")
		panic(err)
	}

	var users []*User
	for results.Next() {
		var u User
		err := results.Scan(&u.ID, &u.Username, &u.Password_hash, &u.Email)
		if err != nil {
			panic(err)
		}
		users = append(users, &u)
		log.Println(users[0])
	}
	return users
}

func usersPage(w http.ResponseWriter, r *http.Request) {
	users := getUsers()
	json.NewEncoder(w).Encode(users)
}

func main() {
	http.HandleFunc("/", handler)
	http.HandleFunc("/users", usersPage)
	log.Fatal(http.ListenAndServe(":8080", nil))
}
