package com.ortodoxmd.core.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;
import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "prayers", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class Prayer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titleEn;
    private String titleRo;
    private String titleRu;

    @Column(columnDefinition = "TEXT")
    private String textEn;
    @Column(columnDefinition = "TEXT")
    private String textRo;
    @Column(columnDefinition = "TEXT")
    private String textRu;

    @Enumerated(EnumType.STRING)
    @Column(name = "category", nullable = false)
    private PrayerCategory category;

    @Column(name = "order_index", nullable = false)
    private int orderIndex = 0;

    @ManyToOne
    @JoinColumn(name = "parent_id")
    @JsonIgnore  // Fix: Ignoră parent la serializare pentru a preveni loop infinit
    private Prayer parent;

    @OneToMany(mappedBy = "parent", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Prayer> subPrayers = new ArrayList<>();

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        Prayer prayer = (Prayer) o;
        return getId() != null && Objects.equals(getId(), prayer.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }

    public enum PrayerCategory {
        MORNING("Morning Prayers"),
        EVENING("Evening Prayers"),
        FOR_ILLNESS("Prayers for Illness"),
        GENERAL("General Prayers");

        private final String displayName;

        PrayerCategory(String displayName) {
            this.displayName = displayName;
        }

        public String getDisplayName() {
            return displayName;
        }
    }
}