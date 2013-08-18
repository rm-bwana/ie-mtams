/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAcess;

import entities.Leavelookup;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author aaron
 */
@Stateless
public class LeavelookupFacade extends AbstractFacade<Leavelookup> implements LeavelookupFacadeLocal {
    @PersistenceContext(unitName = "DataLookup-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public LeavelookupFacade() {
        super(Leavelookup.class);
    }
    
}
