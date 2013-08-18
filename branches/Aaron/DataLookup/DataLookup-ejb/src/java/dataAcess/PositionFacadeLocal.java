/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAcess;

import entities.Position;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author aaron
 */
@Local
public interface PositionFacadeLocal {

    void create(Position position);

    void edit(Position position);

    void remove(Position position);

    Position find(Object id);

    List<Position> findAll();

    List<Position> findRange(int[] range);

    int count();
    
}
