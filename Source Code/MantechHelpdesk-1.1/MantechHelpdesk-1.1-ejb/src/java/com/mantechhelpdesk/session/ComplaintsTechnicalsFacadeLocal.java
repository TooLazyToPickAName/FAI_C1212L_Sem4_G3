/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.session;

import com.mantechhelpdesk.entity.ComplaintsTechnicals;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author tinblanc
 */
@Local
public interface ComplaintsTechnicalsFacadeLocal {

    void create(ComplaintsTechnicals complaintsTechnicals);

    void edit(ComplaintsTechnicals complaintsTechnicals);

    void remove(ComplaintsTechnicals complaintsTechnicals);

    ComplaintsTechnicals find(Object id);

    List<ComplaintsTechnicals> findAll();

    List<ComplaintsTechnicals> findRange(int[] range);

    int count();
    
}
