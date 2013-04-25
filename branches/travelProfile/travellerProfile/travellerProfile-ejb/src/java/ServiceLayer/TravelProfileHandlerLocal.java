/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ServiceLayer;

import Entities.Rewardsprogram;
import Entities.Traveldocument;
import Entities.Travelerprofile;
import javax.ejb.Local;

/**
 *
 * @author Sparda
 */
@Local
public interface TravelProfileHandlerLocal {

    public void persist(Travelerprofile profile,Traveldocument passport);
    public void persistReward(Rewardsprogram reward);
    public Travelerprofile findTravelProf(Integer id);
    public Traveldocument findTravelDoc(Integer id);
    
}