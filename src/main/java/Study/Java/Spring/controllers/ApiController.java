package Study.Java.Spring.controllers;

import Study.Java.Spring.entity.Note;
import Study.Java.Spring.repository.NoteRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ApiController {

    final NoteRepository noteRepository;

    public ApiController(NoteRepository noteRepository) {
        this.noteRepository = noteRepository;
    }

    @GetMapping("/notes")
    public Iterable<Note> getNotes() {
        return noteRepository.findAll();
    }

}
