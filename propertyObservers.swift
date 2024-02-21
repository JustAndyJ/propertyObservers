

struct User {
   var name: String
   static var type: String = "Blog"
 }

let user = User(name: "SwiftBeta")
print(user.name)
print(User.type)

print("\n----------------------\n")

struct Person {
  var salary: Int = 10_000
  var salaryPerMonth: Int {
    get {
      return salary / 12
    }
    set(newValue) {
      self.salary = newValue
    }
  }
}

var person = Person()
print(person.salary)
print(person.salaryPerMonth)
person.salaryPerMonth = 20_000
print(person.salary)
print(person.salaryPerMonth)

print("\n----------------------\n")

struct Database {
  var name: String {
    willSet(newName) {
      print("Will set \(newName)")
    }
    didSet {
      print("Added \(name)")
    }
  }
}
var database = Database(name: "MainApp")
database.name = "New MaintApp"

print("\n----------------------\n")

struct Employee {
  let name: String
  var vacationAllocated = 14
  var vacationTaken = 0

  var vacationRemaining: Int {
    vacationAllocated - vacationTaken
  }
}

var archer = Employee(name: "Starling Archer", vacationAllocated: 20)
archer.vacationAllocated += 4
print(archer.vacationRemaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)

print("\n----------------------\n")

struct MiClase {
  var miPropiedad: Int 

  var propiedadCalculada: Int {
      get { // Se ejecuta cuando se accede a la propiedad para obtener su valor.
          return miPropiedad * 2
      }
      set(nuevoValor) { //  Se ejecuta cuando se asigna un nuevo valor a la propiedad.
          miPropiedad = nuevoValor / 2
      }
  }
}

var objeto = MiClase(miPropiedad: 20)
print(objeto.miPropiedad)
print(objeto.propiedadCalculada) 
objeto.propiedadCalculada = 10 // Establece el valor de la propiedad calculada
print(objeto.propiedadCalculada) // Obtiene el valor de la propiedad calculada
print("\n----------------------\n")

struct MiClass {
  var miPropiedad: Int = 0 {
      willSet { // Se activa justo antes de asignar un nuevo valor a una variable. Útil para realizar acciones antes de que el valor cambie.
          print("Nuevo valor: \(newValue)")
      }
      didSet { // Se activa justo después de asignar un nuevo valor a una variable. Útil para realizar acciones después de que el valor ha cambiado.
          print("Valor anterior: \(oldValue)")
      }
  }
}

var objetos = MiClass()
objetos.miPropiedad = 0
// Salida:
// Nuevo valor: 5
// Valor anterior: 0



