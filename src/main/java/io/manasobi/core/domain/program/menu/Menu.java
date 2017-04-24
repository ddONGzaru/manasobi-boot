package io.manasobi.core.domain.program.menu;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.manasobi.core.annotations.Comment;
import io.manasobi.core.base.model.BaseJpaModel;
import io.manasobi.core.domain.program.Program;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;


@Setter
@Getter
@DynamicInsert
@DynamicUpdate
@Entity
@EqualsAndHashCode(callSuper = true)
@Table(name = "atms_menu")
@Comment(value = "메뉴")
//oracle에서 사용하기 위해 만들어진 시퀀스 제너레이터. 다른 벤더에서는 사용하지 않아도 무방.
@SequenceGenerator(name = "MENU_SEQ_GENERATOR", sequenceName = "SEQ_MENU_ID", allocationSize = 1)
@ToString
public class Menu extends BaseJpaModel<Long> implements Cloneable {

    @Id
    @Column(name = "MENU_ID", precision = 20, nullable = false)
    @Comment(value = "ID")
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "MENU_SEQ_GENERATOR")
    private Long menuId;

    @Column(name = "MENU_GRP_CD", length = 100)
    @Comment(value = "메뉴 그룹코드")
    private String menuGrpCd;

    @Column(name = "MENU_NM", length = 100)
    @Comment(value = "메뉴명")
    private String menuNm;

    @Column(name = "PARENT_ID", precision = 19)
    @Comment(value = "부모 ID")
    private Long parentId;

    @Column(name = "LEVEL_M", precision = 10)
    @Comment(value = "레벨")
    private Integer level;

    @Column(name = "SORT", precision = 10)
    @Comment(value = "정렬")
    private Integer sort;

    @Column(name = "PROG_CD", length = 50)
    @Comment(value = "프로그램 코드")
    private String progCd;

    @Transient
    private boolean open = false;

    @Transient
    private List<Menu> children = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "PROG_CD", referencedColumnName = "PROG_CD", insertable = false, updatable = false)
    private Program program;

    @Override
    public Long getId() {
        return menuId;
    }

    @JsonProperty("name")
    public String label() {
        return menuNm;
    }

    @JsonProperty("id")
    public Long id() {
        return menuId;
    }

    @JsonProperty("open")
    public boolean isOpen() {
        return open;
    }

    public void addChildren(Menu menu) {
        children.add(menu);
    }

    public Menu clone() {
        try {
            Menu menu = (Menu) super.clone();
            menu.setChildren(new ArrayList<>());
            return menu;
        } catch (Exception e) {
            // ignore
        }
        return null;
    }

    public static Menu of(Long id, String menuGrpCd, String menuNm, Long parentId, int level, int sort, String progCd) {
        Menu menu = new Menu();
        menu.setMenuId(id);
        menu.setMenuGrpCd(menuGrpCd);
        menu.setMenuNm(menuNm);
        menu.setParentId(parentId);
        menu.setLevel(level);
        menu.setSort(sort);
        menu.setProgCd(progCd);
        return menu;
    }
}
