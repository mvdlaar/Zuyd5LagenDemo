using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Zuyd5LagenDemo.Models
{
    public partial class Gebruiker
    {
        public void GeoCacheGevonden(string locatie)
        {
            using (Zuyd5LagenDemoModelContainer context = new Zuyd5LagenDemoModelContainer())
            {
                IQueryable<GeoCache> geoCaches = context.GeoCaches;

                GeoCache[] geoArray = (
                    from g in geoCaches
                    where g.Locatie == locatie
                    select g).ToArray();

                if (geoArray.Length > 0)
                {
                    context.GeoCaches.Add(geoArray[0]);
                    context.SaveChanges();
                }
                else
                {
                    new Exception("Locatie niet gevonden");
                }
            }
        }

    }
}