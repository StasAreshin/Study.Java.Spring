package Study.Java.Spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import Study.Java.Spring.entity.Note;
import Study.Java.Spring.repository.NoteRepository;

import java.util.List;
import java.util.Optional;

@Service
public class NoteServiceImpl implements NoteService {

    private NoteRepository repository;

    @Autowired
    public void setProductRepository(NoteRepository repository) {
        this.repository = repository;
    }

    @Override
    public Note getNoteById(Integer id) {
        Optional<Note> result = repository.findById(id);
        return result == null ? null : result.get();
    }

    @Override
    public void saveNote(Note note) {
        repository.save(note);
    }

    @Override
    public void updateNote(Integer id, String message, boolean done) {
        Note updated = repository.findById(id).get();
        updated.setDone(done);
        updated.setMessage(message);
        repository.save(updated);
    }

    @Override
    public void deleteNote(Integer id) {
        repository.deleteById(id);
    }

    @Override
    public List<Note> findAllByOrderByDateAsc() {
        return repository.findAllByOrderByDateAsc();
    }

    @Override
    public List<Note> findAllByOrderByDateDesc() {
        return repository.findAllByOrderByDateDesc();
    }
}
