.class public Lio/bloco/faker/components/Address;
.super Lio/bloco/faker/FakerComponent;
.source "Address.java"


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 0
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 9
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 10
    return-void
.end method


# virtual methods
.method public buildingNumber()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "address.building_number"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->numerify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public city()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "address.city"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cityPrefix()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "address.city_prefix"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public citySuffix()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "address.city_suffix"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public country()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "address.country"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public countryCode()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "address.country_code"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defaultCountry()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "address.default_country"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postcode()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "address.postcode"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public secondaryAddress()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "address.secondary_address"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public state()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "address.state"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stateAbbr()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "address.state_abbr"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public streetAddress()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "address.street_address"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public streetName()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "address.street_name"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public streetSuffix()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "address.street_suffix"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public timeZone()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "address.time_zone"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Address;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
