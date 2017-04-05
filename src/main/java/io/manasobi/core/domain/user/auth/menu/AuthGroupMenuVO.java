package io.manasobi.core.domain.user.auth.menu;

import io.manasobi.core.domain.program.Program;
import lombok.Data;

import java.util.List;

@Data
public class AuthGroupMenuVO {

    private List<AuthGroupMenu> list;

    private Program program;
}
