package com.ortodoxmd.core.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;
import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "bible_testaments", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class Testament {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nameRo;
    private String nameEn;
    private String nameRu;

    @OneToMany(mappedBy = "testament", cascade = CascadeType.ALL)
    @ToString.Exclude
    @JsonIgnore  // Fix: Ignoră books pentru a evita loop infinit la serializare
    private List<BibleBook> books = new ArrayList<>();

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        Testament testament = (Testament) o;
        return getId() != null && Objects.equals(getId(), testament.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}