package Entities;

import Entities.Attachement;
import Entities.Travel;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.3.2.v20111125-r10461", date="2013-05-02T16:13:42")
@StaticMetamodel(Conference.class)
public class Conference_ { 

    public static volatile SingularAttribute<Conference, String> replacement;
    public static volatile SingularAttribute<Conference, String> replacementarrangments;
    public static volatile SingularAttribute<Conference, Integer> idconference;
    public static volatile SingularAttribute<Conference, String> country;
    public static volatile SingularAttribute<Conference, String> city;
    public static volatile SingularAttribute<Conference, String> authors;
    public static volatile SingularAttribute<Conference, Date> datefrom;
    public static volatile SingularAttribute<Conference, String> presentationtitle;
    public static volatile SingularAttribute<Conference, Short> presenting;
    public static volatile SingularAttribute<Conference, String> webpage;
    public static volatile SingularAttribute<Conference, String> conferencename;
    public static volatile SingularAttribute<Conference, String> otherreasonattendance;
    public static volatile SingularAttribute<Conference, Integer> conferenceduration;
    public static volatile SingularAttribute<Conference, Date> dateto;
    public static volatile CollectionAttribute<Conference, Travel> travelCollection;
    public static volatile CollectionAttribute<Conference, Attachement> attachementCollection;
    public static volatile SingularAttribute<Conference, Date> datemsapresentation;

}