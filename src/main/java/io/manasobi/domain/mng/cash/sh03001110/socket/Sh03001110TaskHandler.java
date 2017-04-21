package io.manasobi.domain.mng.cash.sh03001110.socket;

import io.manasobi.core.api.ApiException;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.domain.core.TaskWorker;
import io.manasobi.domain.core.code.RemoteGateway;
import io.manasobi.domain.mng.cash.sh03001110.Sh03001110;
import io.manasobi.domain.mng.cash.sh03001110.Sh03001110Repo;
import io.manasobi.domain.mng.cash.sh03001110.Sh03001110Service;
import io.manasobi.domain.mng.cash.sh03001110.Sh03001110VO;
import io.manasobi.utils.ModelMapperUtils;
import io.manasobi.utils.TaskUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * Created by manasobi on 2017-01-25.
 */
@Slf4j
@Component
public class Sh03001110TaskHandler {

    @Inject
    private Sh03001110Service sh03001110Service;

    @Autowired
    private Sh03001110Repo repo;

    public Sh03001110VO process(Sh03001110VO vo) {

        return doProcess(vo);
    }

    private Sh03001110VO doProcess(Sh03001110VO vo) {

        Sh03001110SendMsg sendMsg = TaskWorker.buildSendMsg(vo, Sh03001110SendMsg.class);

        try {

            Sh03001110RecvMsg recvMsg = TaskWorker.sendAndReceiveMsgToRemoteGateway(sendMsg, RemoteGateway.SH_BANK);

            saveEntity(recvMsg, vo);

            return ModelMapperUtils.map(recvMsg, Sh03001110VO.class);

        } catch (Exception e) {

            log.error("Sh03001110TaskHandler-doProcess :: {}", e.getMessage());
            throw new ApiException(ApiStatus.SYSTEM_ERROR, e.getMessage());
        }
    }

    private void saveEntity(Sh03001110RecvMsg recvMsg, Sh03001110VO vo) {

        Sh03001110 entity = buildEntity(recvMsg, vo);
        repo.save(entity);
    }

    private Sh03001110 buildEntity(Sh03001110RecvMsg recvMsg, Sh03001110VO vo) {

        Sh03001110 entity = ModelMapperUtils.map(recvMsg, Sh03001110.class);

        entity.setTxId(Timestamp.valueOf(LocalDateTime.now()));
        entity.setReferDate(Timestamp.valueOf(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd 00:00:00"))));
        entity.setJisaCode(TaskUtils.getJisaCode(entity.getBranchCode()));

        return entity;
    }

}