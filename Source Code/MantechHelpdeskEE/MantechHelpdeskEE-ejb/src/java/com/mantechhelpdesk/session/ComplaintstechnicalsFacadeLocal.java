/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.session;

import com.mantechhelpdesk.entitybean.Complaintstechnicals;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author tinblanc
 */
@Local
public interface ComplaintstechnicalsFacadeLocal {

    void create(Complaintstechnicals complaintstechnicals);

    void edit(Complaintstechnicals complaintstechnicals);

    void remove(Complaintstechnicals complaintstechnicals);

    Complaintstechnicals find(Object id);

    List<Complaintstechnicals> findAll();

    List<Complaintstechnicals> findRange(int[] range);

    int count();
    
}
