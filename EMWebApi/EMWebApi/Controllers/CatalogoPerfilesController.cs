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
    public class CatalogoPerfilesController : ApiController
    {
        private EnglishMentorEntities db = new EnglishMentorEntities();

        // GET: api/CatalogoPerfiles
        public IQueryable<CatalogoPerfile> GetCatalogoPerfiles()
        {
            return db.CatalogoPerfiles;
        }

        // GET: api/CatalogoPerfiles/5
        [ResponseType(typeof(CatalogoPerfile))]
        public async Task<IHttpActionResult> GetCatalogoPerfile(decimal id)
        {
            CatalogoPerfile catalogoPerfile = await db.CatalogoPerfiles.FindAsync(id);
            if (catalogoPerfile == null)
            {
                return NotFound();
            }

            return Ok(catalogoPerfile);
        }

        // PUT: api/CatalogoPerfiles/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutCatalogoPerfile(decimal id, CatalogoPerfile catalogoPerfile)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != catalogoPerfile.Id)
            {
                return BadRequest();
            }

            db.Entry(catalogoPerfile).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CatalogoPerfileExists(id))
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

        // POST: api/CatalogoPerfiles
        [ResponseType(typeof(CatalogoPerfile))]
        public async Task<IHttpActionResult> PostCatalogoPerfile(CatalogoPerfile catalogoPerfile)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.CatalogoPerfiles.Add(catalogoPerfile);

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (CatalogoPerfileExists(catalogoPerfile.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = catalogoPerfile.Id }, catalogoPerfile);
        }

        // DELETE: api/CatalogoPerfiles/5
        [ResponseType(typeof(CatalogoPerfile))]
        public async Task<IHttpActionResult> DeleteCatalogoPerfile(decimal id)
        {
            CatalogoPerfile catalogoPerfile = await db.CatalogoPerfiles.FindAsync(id);
            if (catalogoPerfile == null)
            {
                return NotFound();
            }

            db.CatalogoPerfiles.Remove(catalogoPerfile);
            await db.SaveChangesAsync();

            return Ok(catalogoPerfile);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool CatalogoPerfileExists(decimal id)
        {
            return db.CatalogoPerfiles.Count(e => e.Id == id) > 0;
        }
    }
}