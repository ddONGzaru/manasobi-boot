package io.manasobi.domain.core.message;

import io.manasobi.core.base.BaseJPAQueryDSLRepo;
import org.springframework.stereotype.Repository;

/**
 * Created by manasobi on 2017-02-26.
 */
@Repository
public interface MsgSeqRepository extends BaseJPAQueryDSLRepo<MsgSeq, MsgSeq.MsgSeqId> {

}
