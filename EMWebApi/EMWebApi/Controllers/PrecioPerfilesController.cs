using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using EMWebApi;

namespace EMWebApi.Controllers
{
    public class PrecioPerfilesController : ApiController
    {
        private EnglishMentorEntities db = new EnglishMentorEntities();

        // GET: api/PrecioPerfiles
        public IQueryable<PrecioPerfile> GetPrecioPerfiles()
        {
            return db.PrecioPerfiles;
        }

        // GET: api/PrecioPerfiles/5
        [ResponseType(typeof(PrecioPerfile))]
        public async Task<IHttpActionResult> GetPrecioPerfile(decimal id)
        {
            PrecioPerfile precioPerfile = await db.PrecioPerfiles.FindAsync(id);
            if (precioPerfile == null)
            {
                return NotFound();
            }

            return Ok(precioPerfile);
        }

        // PUT: api/PrecioPerfiles/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutPrecioPerfile(decimal id, PrecioPerfile precioPerfile)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != precioPerfile.IdPerfil)
            {
                return BadRequest();
            }

            db.Entry(precioPerfile).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PrecioPerfileExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/PrecioPerfiles
        [ResponseType(typeof(PrecioPerfile))]
        public async Task<IHttpActionResult> PostPrecioPerfile(PrecioPerfile precioPerfile)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.PrecioPerfiles.Add(precioPerfile);

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (PrecioPerfileExists(precioPerfile.IdPerfil))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = precioPerfile.IdPerfil }, precioPerfile);
        }

        // DELETE: api/PrecioPerfiles/5
        [ResponseType(typeof(PrecioPerfile))]
        public async Task<IHttpActionResult> DeletePrecioPerfile(decimal id)
        {
            PrecioPerfile precioPerfile = await db.PrecioPerfiles.FindAsync(id);
            if (precioPerfile == null)
            {
                return NotFound();
            }

            db.PrecioPerfiles.Remove(precioPerfile);
            await db.SaveChangesAsync();

            return Ok(precioPerfile);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool PrecioPerfileExists(decimal id)
        {
            return db.PrecioPerfiles.Count(e => e.IdPerfil == id) > 0;
        }
    }
}