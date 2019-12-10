package dao.impl;

import dao.BillDao;
import entity.TBillEntity;
import org.springframework.stereotype.Repository;

@Repository
public class BillDaoImpl extends BasicDaoImpl<TBillEntity> implements BillDao {

    @Override
    public Class<TBillEntity> getEntityClass() {
        return TBillEntity.class;
    }

}
