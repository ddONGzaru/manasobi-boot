package io.manasobi.controller.api;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.domain.program.menu.Menu;
import io.manasobi.core.domain.program.menu.MenuRequestVO;
import io.manasobi.core.domain.program.menu.MenuService;
import io.manasobi.core.domain.user.auth.menu.AuthGroupMenu;
import io.manasobi.core.domain.user.auth.menu.AuthGroupMenuService;
import io.manasobi.core.domain.user.auth.menu.AuthGroupMenuVO;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.util.List;


@RestController
@RequestMapping("/api/v1/menu")
public class MenuController extends BaseController {

    @Inject
    private MenuService menuService;

    @Inject
    private AuthGroupMenuService authGroupMenuService;

    @GetMapping
    public Responses.ListResponse menuList(RequestParams requestParams) {
        List<Menu> list = menuService.get(requestParams);
        return Responses.ListResponse.of(list);
    }

    @PutMapping
    public ApiResponse save(@RequestBody MenuRequestVO menuVO) {
        menuService.processMenu(menuVO);
        return ok();
    }

    @GetMapping("/auth")
    public AuthGroupMenuVO authMapList(RequestParams requestParams) {
        return authGroupMenuService.get(requestParams);
    }

    @PutMapping("/auth")
    public ApiResponse save(@RequestBody List<AuthGroupMenu> authGroupMenuList) {
        authGroupMenuService.saveAuth(authGroupMenuList);
        return ok();
    }
}
