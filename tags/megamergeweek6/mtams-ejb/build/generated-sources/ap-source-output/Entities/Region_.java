package Entities;

import Entities.Country;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2013-08-20T22:02:48")
@StaticMetamodel(Region.class)
public class Region_ { 

    public static volatile SingularAttribute<Region, Integer> cities;
    public static volatile SingularAttribute<Region, String> name;
    public static volatile SingularAttribute<Region, Country> code2;
    public static volatile SingularAttribute<Region, Integer> idregion;
    public static volatile SingularAttribute<Region, Double> longitude;
    public static volatile SingularAttribute<Region, String> code;
    public static volatile SingularAttribute<Region, Double> latitude;
    public static volatile SingularAttribute<Region, String> url;

}