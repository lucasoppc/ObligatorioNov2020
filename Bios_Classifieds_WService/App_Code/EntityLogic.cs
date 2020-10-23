using System;
using System.Activities.Validation;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model;
using System.Data;
using System.Data.SqlClient;


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


}