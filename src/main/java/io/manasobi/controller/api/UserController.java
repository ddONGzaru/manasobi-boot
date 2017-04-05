package io.manasobi.controller.api;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.domain.user.User;
import io.manasobi.core.domain.user.UserService;
import io.manasobi.core.domain.user.UserVO;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/user")
public class UserController extends BaseController {

    @Inject
    private UserService userService;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<User> requestParams) {
        Page<User> page = userService.get(pageable, requestParams);
        return Responses.PageResponse.of(UserVO.of(page.getContent()), page);
    }

    /*@GetMapping
    public Responses.ListResponse list(RequestParams<User> requestParams) {
        List<User> users = userService.get(requestParams);
        return Responses.ListResponse.of(users);
    }*/

    @GetMapping(params = "userCd")
    public User get(RequestParams requestParams) {
        return userService.getUser(requestParams);
    }

    @PutMapping
    public ApiResponse save(@Valid @RequestBody UserVO user) throws Exception {
        userService.saveUser(user);
        return ok();
    }

    /*@PutMapping
    public ApiResponse save(@Valid @RequestBody List<User> users) throws Exception {
        userService.saveUser(users);
        return ok();
    }*/
}
