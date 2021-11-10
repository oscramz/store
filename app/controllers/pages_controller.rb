class PagesController < ApplicationController
 
  def home
    # 1. Preguntar si existe la variable cookies[:cart_id]
    if cookies[:cart_id]
      # si existe: buscar el registro Cart segun el cookies[:cart_id]
      @cart = Cart.find(cookies[:cart_id])
      # definir variable @cart
    else
      # Si no existe: Crear registro en Cart
      # asignar la cookie con el id
      @cart = Cart.create(total: 0)
      cookies[:cart_id] = @cart.id
    end
    # 2. Mostrar productos en el carrito
  end
  

end
