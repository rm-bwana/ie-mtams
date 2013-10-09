/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ServiceLayer;

import Entities.Finalcosting;
import Entities.Motivation;
import Entities.Quotes;
import javax.ejb.Local;

/**
 *
 * @author Michelle Thornton
 */
@Local
public interface MotivationFormHandlerLocal {

    public void persist(Motivation motivation);

    public Motivation findMotivation(Integer id, Integer appID);

    public void updateMoti(Motivation MotivEdit, Integer id, Integer appID);

    public Quotes findQuotes(Integer id);

    public Finalcosting findFinalCosting(Integer id);
}