module PagesHelper
    def cookies_handler
        def home
            if cookies[:plana]
              puts cookies[:plana]
            else
              cookies[:plana] = "COOKIE PLANA 🥞"
            end
        
            if cookies.signed[:firmada]
              puts cookies.signed[:firmada]
            else
              cookies.signed[:firmada] = "Hola mundo FIRMADO 🍕"
            end
        
            if cookies.encrypted[:encriptada]
              puts cookies.encrypted[:encriptada]
            else
              cookies.encrypted[:encriptada] = "TEXTO SECRETO 🍔"
            end
        
            if session[:variable_sesion]
              puts session[:variable_sesion]
            else
              session[:variable_sesion] = "EN LA SESION 🥓"
            end
          end
        end
        def print_icon
          
        end
        def set_cart_from_cookie
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
        end
        
        
    
end
