/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.session;

import com.mantechhelpdesk.entity.ComplaintsTechnicals;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author tinblanc
 */
@Stateless
public class ComplaintsTechnicalsFacade extends AbstractFacade<ComplaintsTechnicals> implements ComplaintsTechnicalsFacadeLocal {
    @PersistenceContext(unitName = "MantechHelpdesk-1.1-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ComplaintsTechnicalsFacade() {
        super(ComplaintsTechnicals.class);
    }
    
}
