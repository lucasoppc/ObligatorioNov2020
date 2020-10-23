using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Reflection;

namespace Model
{
    /// <summary>
    /// Permite validar si alguna Entidad es valida Importante: usar try catch porque lanza exepciones
    /// </summary>
    public static class EntityValidation
    {
        public static void Validar(EMPLEADO empleado)
        {
            //nom logueo //contrasena
            bool Valido = true;
            String Errores="Han ocurrido errores al intentar validar el Empleado: ";

            if (empleado.NOM_LOGUEO.Trim().Length != 10)
            {
                Errores += "[ El Nombre de empleado solo debe tener 10 caracteres ] ";
                Valido = false;
            }
            if ((Regex.IsMatch(empleado.CONTRASENA.Trim(), "[A-Z,a-z][A-Z,a-z][A-Z,a-z][A-Z,a-z][A-Z,a-z][0-9][0-9]")) == false)
            {
                Errores += "[ La contraseña no es valida (5 letras + 2 numeros) ] ";
                Valido = false;
            }

            if (!Valido)
            {
                throw new Exception(Errores);
            }
                
        }
        public static void Validar(CLIENTE cliente)
        {
            //cedula //direccion //nombre
            bool Valido = true;
            String Errores = "Han ocurrido errores al intentar validar el Cliente: ";

            if(cliente.CEDULA < 9000000 && cliente.CEDULA > 99999999)
            {
                Errores += "[ Cedula invalida (debe tener entre 7 y 8 digitos) ] ";
                Valido = false;
            }
            if(cliente.NOMBRE.Trim().Length > 20 || cliente.NOMBRE.Trim().Length == 0)
            {
                Errores += "[ El nombre no puede estar vacio y no puede exceder 20 caracteres ] ";
                Valido = false;
            }
            if(cliente.DIRECCION.Trim().Length > 50 || cliente.DIRECCION.Trim().Length == 0)
            {
                Errores += "[ La direccion no puede estar vacia o exceder los 50 caracteres ] ";
                Valido = false;
            }

            if (!Valido)
            {
                throw new Exception(Errores);
            }
        }

        public static void Validar(CATEGORIA categoria)
        {
            //codigo //nombre
            bool Valido = true;
            String Errores = "Han ocurrido errores al intentar validar la Categoria: ";

            if((categoria.COD.Trim().Length == 3) == false)
            {
                Errores += "[ El codigo debe tener 3 caracteres ] ";
                Valido = false;
            }
            if(categoria.NOMBRE.Trim().Length > 20 || categoria.NOMBRE.Trim().Length == 0)
            {
                Errores += "[ El nombre de categoria no puede estar vacio y no debe superar los 20 caracteres ] ";
                Valido = false;
            }

            if (!Valido)
            {
                throw new Exception(Errores);
            }
        }

        public static void Validar(ARTICULO articulo)
        {
            //descripcion //precio
            bool Valido = true;
            String Errores = "Han ocurrido errores al intentar validar el Articulo: ";

            if(articulo.DESCRIPCION.Trim().Length > 200 || articulo.DESCRIPCION.Trim().Length == 0)
            {
                Errores += "[ La descripcion no puede superar los 200 caracteres ni estar vacia ] ";
                Valido = false;
            }
            if(articulo.PRECIO <= 0)
            {
                Errores += "[ El precio debe ser mayor a 0 ] ";
                Valido = false;
            }

            if (!Valido)
            {
                throw new Exception(Errores);
            }
        }

        public static void Validar(AVISO aviso)
        {
            //fecha ini //fecha fin //telefono
            bool Valido = true;
            String Errores = "Han ocurrido errores al intentar validar el Aviso: ";

            foreach(ARTICULO i in aviso.ARTICULO)
            {
                Validar(i);
            }
            Validar(aviso.CATEGORIA);
            Validar(aviso.EMPLEADO);
            Validar(aviso.CLIENTE);

            if(aviso.FECHA_INICIO < DateTime.Today)
            {
                Errores += "[ La fecha de inicio no puede ser anterior a hoy ] ";
                Valido = false;
            }
            if(aviso.FECHA_FIN <= aviso.FECHA_INICIO)
            {
                Errores += "[ La fecha de fin no puede ser anterior o igual a la fecha de inicio ] ";
                Valido = false;
            }
            if(aviso.TELEFONO.Trim().Length > 15 || aviso.TELEFONO.Trim().Length == 0)
            {
                Errores += "[ El telefono no puede estar vacio y debe tener maximo 15 digitos ] ";
                Valido = false;
            }
            Convert.ToInt32(aviso.TELEFONO);

            if (!Valido)
            {
                throw new Exception(Errores);
            }

        }
    }
}
