package com.cuit.CoalTradeSystem.domain;

public class User {

    private String loginNumber;
    private String loginPassword;
    private String suppilerName;
    private String businessTpye;
    private String legalId;
    private String registArea;
    private String enterpriseMail;
    private String phoneNuber;
    private String faxes;
    private String postalCode;
    private String registFund;
    private String businessNumber;
    private String organizCode;
    private String  licenseNumber;
    private String taxRegistrCode;
    private String  depositBank;
    private String accountNumber;
    private String locationQuantityQualityOfStorage;
    private String transportationOfCapacity ;
    private String suppilerIntroduction;
    private String legalPerson;

    public User() {
    }

    public User(String loginNumber,String legalPerson, String loginPassword, String suppilerName, String businessTpye, String legalId, String registArea, String enterpriseMail, String phoneNuber, String faxes, String postalCode, String registFund, String businessNumber, String organizCode, String licenseNumber, String taxRegistrCode, String depositBank, String accountNumber, String locationQuantityQualityOfStorage, String transportationOfCapacity, String suppilerIntroduction) {
        this.legalPerson = legalPerson;
        this.loginNumber = loginNumber;
        this.loginPassword = loginPassword;
        this.suppilerName = suppilerName;
        this.businessTpye = businessTpye;
        this.legalId = legalId;
        this.registArea = registArea;
        this.enterpriseMail = enterpriseMail;
        this.phoneNuber = phoneNuber;
        this.faxes = faxes;
        this.postalCode = postalCode;
        this.registFund = registFund;
        this.businessNumber = businessNumber;
        this.organizCode = organizCode;
        this.licenseNumber = licenseNumber;
        this.taxRegistrCode = taxRegistrCode;
        this.depositBank = depositBank;
        this.accountNumber = accountNumber;
        this.locationQuantityQualityOfStorage = locationQuantityQualityOfStorage;
        this.transportationOfCapacity = transportationOfCapacity;
        this.suppilerIntroduction = suppilerIntroduction;
    }

    public String getLegalPerson() {
        return legalPerson;
    }

    public void setLegalPerson(String legalPerson) {
        this.legalPerson = legalPerson;
    }

    public String getLoginNumber() {
        return loginNumber;
    }

    public void setLoginNumber(String loginNumber) {
        this.loginNumber = loginNumber;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }

    public String getSuppilerName() {
        return suppilerName;
    }

    public void setSuppilerName(String suppilerName) {
        this.suppilerName = suppilerName;
    }

    public String getBusinessTpye() {
        return businessTpye;
    }

    public void setBusinessTpye(String businessTpye) {
        this.businessTpye = businessTpye;
    }

    public String getLegalId() {
        return legalId;
    }

    public void setLegalId(String legalId) {
        this.legalId = legalId;
    }

    public String getRegistArea() {
        return registArea;
    }

    public void setRegistArea(String registArea) {
        this.registArea = registArea;
    }

    public String getEnterpriseMail() {
        return enterpriseMail;
    }

    public void setEnterpriseMail(String enterpriseMail) {
        this.enterpriseMail = enterpriseMail;
    }

    public String getPhoneNuber() {
        return phoneNuber;
    }

    public void setPhoneNuber(String phoneNuber) {
        this.phoneNuber = phoneNuber;
    }

    public String getFaxes() {
        return faxes;
    }

    public void setFaxes(String faxes) {
        this.faxes = faxes;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getRegistFund() {
        return registFund;
    }

    public void setRegistFund(String registFund) {
        this.registFund = registFund;
    }

    public String getBusinessNumber() {
        return businessNumber;
    }

    public void setBusinessNumber(String businessNumber) {
        this.businessNumber = businessNumber;
    }

    public String getOrganizCode() {
        return organizCode;
    }

    public void setOrganizCode(String organizCode) {
        this.organizCode = organizCode;
    }

    public String getLicenseNumber() {
        return licenseNumber;
    }

    public void setLicenseNumber(String licenseNumber) {
        this.licenseNumber = licenseNumber;
    }

    public String getTaxRegistrCode() {
        return taxRegistrCode;
    }

    public void setTaxRegistrCode(String taxRegistrCode) {
        this.taxRegistrCode = taxRegistrCode;
    }

    public String getDepositBank() {
        return depositBank;
    }

    public void setDepositBank(String depositBank) {
        this.depositBank = depositBank;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getLocationQuantityQualityOfStorage() {
        return locationQuantityQualityOfStorage;
    }

    public void setLocationQuantityQualityOfStorage(String locationQuantityQualityOfStorage) {
        this.locationQuantityQualityOfStorage = locationQuantityQualityOfStorage;
    }

    public String getTransportationOfCapacity() {
        return transportationOfCapacity;
    }

    public void setTransportationOfCapacity(String transportationOfCapacity) {
        this.transportationOfCapacity = transportationOfCapacity;
    }

    public String getSuppilerIntroduction() {
        return suppilerIntroduction;
    }

    public void setSuppilerIntroduction(String suppilerIntroduction) {
        this.suppilerIntroduction = suppilerIntroduction;
    }
}
