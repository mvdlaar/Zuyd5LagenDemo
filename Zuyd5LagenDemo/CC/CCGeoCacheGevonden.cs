using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Zuyd5LagenDemo.Models;

namespace Zuyd5LagenDemo.CC
{
    public class CCGeoCacheGevonden
    {
        private Gebruiker _ingelogdeGebruiker;

        public void GeoCacheGevonden(string locatie)
        {
            _ingelogdeGebruiker.GeoCacheGevonden(locatie);
        }
    }
}