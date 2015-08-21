/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.session;

import com.mantechhelpdesk.entitybean.Complaintstechnicals;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author tinblanc
 */
@Stateless
public class ComplaintstechnicalsFacade extends AbstractFacade<Complaintstechnicals> implements ComplaintstechnicalsFacadeLocal {
    @PersistenceContext(unitName = "MantechHelpdeskEE-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ComplaintstechnicalsFacade() {
        super(Complaintstechnicals.class);
    }
    
}
