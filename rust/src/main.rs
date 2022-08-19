use actix_web::{web, App, HttpResponse, HttpServer};
use std::fs::File;
use std::io::prelude::*;
use tokio::time::Duration;

async fn index() -> HttpResponse {
    HttpResponse::Ok().body("Hello")
}

#[actix_web::main]
async fn main() {
    let mut web = HttpServer::new(|| App::new().service(web::resource("/").to(index)))
        .bind(("0.0.0.0", 8080))
        .unwrap()
        .run();

    if let Err(_) = tokio::time::timeout(Duration::from_secs(3), &mut web).await {
        let mut file = File::open(format!("/proc/{}/status", std::process::id())).unwrap();
        let mut status = String::new();
        file.read_to_string(&mut status).unwrap();
        print!("{}", status);
    }
}
