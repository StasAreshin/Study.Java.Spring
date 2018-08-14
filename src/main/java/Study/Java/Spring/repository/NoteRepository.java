package Study.Java.Spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import Study.Java.Spring.entity.Note;

import java.util.List;

public interface NoteRepository extends JpaRepository<Note, Integer> {

    List<Note> findAllByOrderByDateAsc();
    List<Note> findAllByOrderByDateDesc();
}
