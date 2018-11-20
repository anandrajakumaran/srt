package com.company.sales.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.List;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

@NamePattern("%s %s|bookingDate,customer")
@Table(name = "SALES_BOOKING")
@Entity(name = "sales$Booking")
public class Booking extends StandardEntity {
    private static final long serialVersionUID = 5602880376063487368L;

    @Temporal(TemporalType.DATE)
    @Column(name = "BOOKING_DATE", nullable = false)
    protected Date bookingDate;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup", "open"})
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CUSTOMER_ID")
    protected Customer customer;


    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup", "open"})
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "SHOW_DATE_TIME_ID")
    protected ShowDate showDateTime;

    @Column(name = "TICKET_CATEGORY", length = 50)
    protected String ticketCategory;

    @Column(name = "BOOKING_TYPE", length = 50)
    protected String bookingType;

    @Column(name = "QUANTITY")
    protected Integer quantity;

    @Column(name = "AMOUNT")
    protected BigDecimal amount;

    public void setShowDateTime(ShowDate showDateTime) {
        this.showDateTime = showDateTime;
    }

    public ShowDate getShowDateTime() {
        return showDateTime;
    }


    public void setBookingDate(Date bookingDate) {
        this.bookingDate = bookingDate;
    }

    public Date getBookingDate() {
        return bookingDate;
    }

    public void setTicketCategory(String ticketCategory) {
        this.ticketCategory = ticketCategory;
    }

    public String getTicketCategory() {
        return ticketCategory;
    }

    public void setBookingType(String bookingType) {
        this.bookingType = bookingType;
    }

    public String getBookingType() {
        return bookingType;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getQuantity() {
        return quantity;
    }




    public BigDecimal getAmount() {
        return amount;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Customer getCustomer() {
        return customer;
    }


}