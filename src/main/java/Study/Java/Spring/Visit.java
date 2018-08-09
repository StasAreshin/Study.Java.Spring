package Study.Java.Spring;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Stas on 2018-08-09.
 */
@Entity
public class Visit {

    @Id
    @GeneratedValue
    public Long id;

    public String description;
}
