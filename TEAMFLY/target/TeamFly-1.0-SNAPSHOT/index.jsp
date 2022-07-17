<%-- 
    Document   : index
    Created on : 14/07/2022, 13:57:50
    Author     : Mart�n
--%>


<%@include file="/views/partials/header.jsp" %>
        <div class="container-fluid text-center">
            <h1>TeamFly</h1>
            <div class="dropdown m5">
                <button class="btn btn-lg btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Comprar pasajes
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <form method="POST" action="/pasajero/verificarDisponibilidad" class="bg-light p-5 rounded">
                        
                        <div>
                            <p>Se verifica si existen vuelos desde el origen hacia el destino y, en caso afirmativo, se verifica la disponibilidad de pasajes solicitada</p>
                        </div>

                        <div class="form-group m3">
                            <label for="cantPasajes">Cantidad de pasajes:</label>
                            <input type="number" name="cantPasajes" class="form-control" id="exampleInputEmail1">
                        </div>
                        
                        <div class="form-group m3">
                          <label class="formlabel">Origen: </label>
                          <select name="origen" class="form-control">
                            <option value="AEP">Buenos Aires (Aeroparque)</option>
                            <option value="BCR">Bariloche</option>
                            <option value="IGR">Iguaz�</option>
                            <option value="MDZ">Mendoza</option>
                            <option value="SLA">Salta</option>
                          </select>
                        </div>

                        <div class="form-group m3">
                          <label class="formlabel">Destino: </label>
                          <select name="destino" class="form-control">
                            <option value="AEP">Buenos Aires (Aeroparque)</option>
                            <option value="BCR">Bariloche</option>
                            <option value="IGR">Iguaz�</option>
                            <option value="MDZ">Mendoza</option>
                            <option value="SLA">Salta</option>
                          </select>
                        </div>

                        <div class="m3">
                          <button class="btn btn-dark" type="submit">Verificar disponibilidad</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="dropdown m5">
                <button class="btn btn-lg btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Ver pasajes
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <form method="POST" action="/pasajero/verPasajes" class="bg-light p-5 rounded">
                      
                    <div>
                        <p>Con el ingreso de su DNI se verifica la compra de su viaje. </p>
                    </div>
                    <div>
                      <label for="nroDni" class="formlabel">Ingrese su DNI: </label>
                      <input type="text" id="dni" name="nroDni" class="formcontrol">
                    </div>
                    <div class="m3">
                      <button class="btn btn-dark" type="submit">Ver pasajes</button>
                    </div>
                  </form>
                </div>
            </div>
            
            <div class="dropdown m5">
                <button class="btn btn-lg btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Modificar datos (EN CONSTRUCCI�N)
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <form method="POST" action="ModificarPasajesController" class="bg-light p-5 rounded">
                    <div>
                      <label for="dni" class="formlabel">Ingrese su DNI: </label>
                      <input type="text" id="dni" name="dni" class="formcontrol">
                    </div>
                    <div class="m3">
                      <button class="btn btn-dark" type="submit">Modificar datos</button>
                    </div>
                  </form>
                </div>
            </div>
            <div class="dropdown m5">
                <button class="btn btn-lg btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Cancelar compra (EN CONSTRUCCI�N)
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <form method="POST" action="VerPasajesController" class="bg-light p-5 rounded">
                    <div>
                      <label for="dni" class="formlabel">Ingrese su DNI: </label>
                      <input type="text" id="dni" name="dni" class="formcontrol">
                    </div>
                    <div class="m3">
                      <button class="btn btn-dark text-center" type="submit">Cancelar compra</button>
                    </div>
                  </form>
                </div>
            </div>
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
<%@include file="/views/partials/footer.jsp" %>
