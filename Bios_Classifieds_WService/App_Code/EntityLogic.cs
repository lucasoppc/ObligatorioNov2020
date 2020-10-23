using System;
using System.Activities.Validation;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

/// <summary>
/// Brinda los servicios del modelo del Entity Framework
/// </summary>
public class EntityLogic
{
    //Constructor
    public EntityLogic(){}

    #region Entity Framework
    //Declaracion del contexto del Entity
    private static Model.Entities _context = null;
    //Singleton del context
    public static Model.Entities Context
    {
        get
        {
            if (_context == null)
            {
                _context = new Entities();
                _context.Configuration.ProxyCreationEnabled = false;
            }
            return _context;
        }
    }
    #endregion

    //OPERACIONES
    #region Altas (Incompleto)
    public static void AltaEmpleado(EMPLEADO emp)
    {
        if(emp != null)
        {
            Context.EMPLEADO.Add(emp);
            Context.SaveChanges();
        }
    }
    #endregion

    #region Eliminaciones
    public void EliminarArticulo(ARTICULO articulo)
    {
        try
        {
            SqlParameter CodigoArticulo = new SqlParameter("@CODIGO", articulo.CODIGO);
            SqlParameter Retrono = new SqlParameter("@RETORNO", SqlDbType.Int);
            Retrono.Direction = ParameterDirection.Output;

            Context.Database.ExecuteSqlCommand("exec ELIMINARARTICULO @CODIGO, @RETORNO", CodigoArticulo, Retrono);

            int ProcedureOutput = (int)Retrono.Value;

            switch (ProcedureOutput)
            {
                case -1:
                    throw new Exception("Error, el articulo no existe");
                case -2:
                    throw new Exception("Error, el articulo esta en publicacion");
                case -3:
                    throw new Exception("Error desconocido, el articulo no se pudo eliminar");
                case 1:
                    {
                        Context.SaveChanges();
                        return;
                    }
                    
            }
        }
        catch(Exception ex)
        {
            throw ex;
        }
    }

    public void EliminarCategoria(CATEGORIA categoria)
    {
        try
        {
            SqlParameter CodigoCategoria = new SqlParameter("@CODIGO", categoria.COD);
            SqlParameter Retrono = new SqlParameter("@RETORNO", SqlDbType.Int);
            Retrono.Direction = ParameterDirection.Output;

            Context.Database.ExecuteSqlCommand("exec ELIMINARCATEGORIA @CODIGO, @RETORNO", CodigoCategoria, Retrono);

            int ProcedureOutput = (int)Retrono.Value;

            switch (ProcedureOutput)
            {
                case -1:
                    throw new Exception("Error, la categoria no existe");
                case -2:
                    throw new Exception("Error, la categoria esta en publicacion");
                case -3:
                    throw new Exception("Error desconocido, la categoria no se pudo eliminar");
                case 1:
                    {
                        Context.SaveChanges();
                        return;
                    }

            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    public void EliminarCliente(CLIENTE cliente)
    {
        try
        {
            SqlParameter CedulaCliente = new SqlParameter("@CEDULA", cliente.CEDULA);
            SqlParameter Retrono = new SqlParameter("@RETORNO", SqlDbType.Int);
            Retrono.Direction = ParameterDirection.Output;

            Context.Database.ExecuteSqlCommand("exec ELIMINARCLIENTE @CEDULA, @RETORNO", CedulaCliente, Retrono);

            int ProcedureOutput = (int)Retrono.Value;

            switch (ProcedureOutput)
            {
                case -1:
                    throw new Exception("Error, el cliente no existe");
                case -2:
                    throw new Exception("Error, el cliente tiene publicaciones");
                case -3:
                    throw new Exception("Error desconocido, el cliente no se pudo eliminar");
                case 1:
                    {
                        Context.SaveChanges();
                        return;
                    }

            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    #endregion

}