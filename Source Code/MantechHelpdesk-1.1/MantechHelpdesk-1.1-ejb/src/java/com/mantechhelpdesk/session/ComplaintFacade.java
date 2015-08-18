/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.session;

import com.mantechhelpdesk.entity.Complaint;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author tinblanc
 */
@Stateless
public class ComplaintFacade extends AbstractFacade<Complaint> implements ComplaintFacadeLocal {
    @PersistenceContext(unitName = "MantechHelpdesk-1.1-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ComplaintFacade() {
        super(Complaint.class);
    }
    
}
