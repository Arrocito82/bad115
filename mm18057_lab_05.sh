#!/bin/bash
use bad115
db.createCollection("Clientes");
db.Clientes.insert({ nombre: "Fernando", ciudad: "Madrid" });
db.Clientes.insertMany([
    {
        nombre: "Miguel Angel",
        ciudad: "San Salvador"
    },
    {
        nombre: "Carlos Jose",
        ciudad: "Mexico"
    },
    {
        nombre: "Guillermo Hotel",
        ciudad: "Nueva York"
    },
    {
        nombre: "Ana Mercedes",
        ciudad: "Guatemala"
    },
    {
        nombre: "Manuel Rivera",
        ciudad: "San Jose"
    },
    {
        nombre: "Arquimides Mena",
        ciudad: "Los Angeles"
    },
]);
db.Clientes.find();
db.Clientes.find().sort({ nombre: 1 });
db.Clientes.find().limit(3);
db.Clientes.updateMany({ ciudad: "Nueva York" }, { $set: { ciudad: "New York" } });
db.Clientes.updateOne({ nombre: "Fernando" }, { $set: { nombre: "Pedro Apostol" } });
db.Clientes.deleteOne({ nombre: "Pedro Apostol" });
use libros
db.createCollection("coleccionLibros");
db.coleccionLibros.insertMany([
    {
        isbn: "9788408045076",
        titulo: "Alquimista",
        autor: {
            nombre: "Paulo",
            apellido: "Coelho",
        },
        precio: 8.46,
    },
    {
        isbn: "9788408131625",
        titulo: "Adulterio",
        autor: {
            nombre: "Paulo",
            apellido: "Coelho",
        },
        precio: 20.99,
    },
    {
        isbn: "9788427201187",
        titulo: "Divergente",
        autor: {
            nombre: "Verónica",
            apellido: "Roth",
        },
        precio: 22.99,
    },
    {
        isbn: "9788427206861",
        titulo: "Leal ",
        autor: {
            nombre: "Verónica",
            apellido: "Roth",
        },
        precio: 20.99,
    },
    {
        isbn: "9788427203181",
        titulo: "Insurgente",
        autor: {
            nombre: "Verónica",
            apellido: "Roth",
        },
        precio: 20.99,
    }
]);
db.coleccionLibros.find({"autor.nombre":"Paulo"});
db.coleccionLibros.find({"autor.nombre":"Verónica", "autor.apellido":"Roth"});
db.coleccionLibros.find().limit(3);
db.coleccionLibros.find().sort({titulo:1});
