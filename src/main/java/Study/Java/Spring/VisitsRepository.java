package Study.Java.Spring;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Stas on 2018-08-09.
 */
@Repository
public interface VisitsRepository extends CrudRepository<Visit, Long> {

}
