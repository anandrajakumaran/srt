package com.company.sales.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s|showDateTime")
@Table(name = "SALES_SHOW_DATE")
@Entity(name = "sales$ShowDate")
public class ShowDate extends StandardEntity {
    private static final long serialVersionUID = -5278352369130064640L;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup", "open"})
    @NotNull
    @OnDeleteInverse(DeletePolicy.CASCADE)
    @OnDelete(DeletePolicy.CASCADE)
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "SHOW_ID")
    protected Show show;

    @NotNull
    @Column(name = "TOTAL_TICKETS", nullable = false)
    protected Integer totalTickets;

    @Temporal(TemporalType.TIMESTAMP)
    @NotNull
    @Column(name = "SHOW_DATE_TIME", nullable = false)
    protected Date showDateTime;

    public void setTotalTickets(Integer totalTickets) {
        this.totalTickets = totalTickets;
    }

    public Integer getTotalTickets() {
        return totalTickets;
    }


    public void setShow(Show show) {
        this.show = show;
    }

    public Show getShow() {
        return show;
    }

    public void setShowDateTime(Date showDateTime) {
        this.showDateTime = showDateTime;
    }

    public Date getShowDateTime() {
        return showDateTime;
    }


}