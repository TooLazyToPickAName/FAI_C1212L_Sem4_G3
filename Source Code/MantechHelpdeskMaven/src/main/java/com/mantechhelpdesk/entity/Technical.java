/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.entity;

/**
 *
 * @author windluffy
 */
public class Technical extends User{
    private int numberProgressing;

    public Technical() {
    }

    public int getNumberProgressing() {
        return numberProgressing;
    }

    public void setNumberProgressing(int numberProgressing) {
        this.numberProgressing = numberProgressing;
    }
    
    
    
}
