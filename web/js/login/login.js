/*
 * Patronato Universitario
 * Universidad Nacional Autónoma de México
 * 
 * @Date 22 de Enero del 2018   
 */

$(function () {
 
    $("#submit_login").click(function () { // if submit button is clicked
        
        var username = $("input#usuario").val(); // define username variable
        var password = $("input#password").val(); // define username variable     
        var json_param = JSON.stringify({"usuario": username, "pass": password});
        $.ajax({// JQuery ajax function
            type: "POST", // Submitting Method
            url: 'http://localhost:8080/conacyt-war/resources/conacyt/login/getLogin',
            data: 'json=' + json_param, //'{\"usuario\":\"'+ username + '\",\"pass\":\"' + password+'\"}',      
            dataType: "json", // type of returned data
            success: function (data) {
                
                // if ajax function results success
                var json = JSON.stringify(data);
                var content = JSON.parse(json);
                //console.log(content['getLogin']);
                
                if (content['getLogin']==='-1') { // if the returned data equal 0
                $("#remember").parent().attr("class","form-group  has-error has-feedback" );
                $("#remember").parent().children("span").text("El usuario o contraseña son inválidos  ").show();
		
                 //bootbox.alert("No existe el usuario…");
                    
                } else { 
                    var usuario = content["nombre_completo"];
                    var idUsuario = content["id_usuario"];
                    var idRol = content["id_cat_cat_catalogos"];
                    //console.log(content["nombre_completo"]);
                    sessionStorage.usuario=usuario;// usuario en almacenamiento local
                    sessionStorage.idUsuario=idUsuario;// usuario en almacenamiento local
                    sessionStorage.idRol=idRol;// usuario en almacenamiento local
                    //alert(sessionStorage.usuario);
                    document.location.href = 'navmenu.jsp';
                   
                }
            },
        })    
                
                
                
                
              
                
        return  false;        
        });
 
});

