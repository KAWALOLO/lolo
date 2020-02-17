.class public Lio/bloco/faker/components/PhoneNumber;
.super Lio/bloco/faker/FakerComponent;
.source "PhoneNumber.java"


# static fields
.field private static final DEFAULT_EXTENSION_LENGHT:I = 0x4


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 0
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 11
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 12
    return-void
.end method


# virtual methods
.method public areaCode()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "phone_number.area_code"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/PhoneNumber;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cellPhone()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "cell_phone.formats"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/PhoneNumber;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/PhoneNumber;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/PhoneNumber;->numerify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exchangeCode()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "phone_number.exchange_code"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/PhoneNumber;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extension()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/bloco/faker/components/PhoneNumber;->subscriberNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extension(I)Ljava/lang/String;
    .locals 1
    .param p1, "length"    # I

    .line 49
    invoke-virtual {p0, p1}, Lio/bloco/faker/components/PhoneNumber;->subscriberNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public phoneNumber()Ljava/lang/String;
    .locals 1

    .line 15
    const-string v0, "phone_number.formats"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/PhoneNumber;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/PhoneNumber;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/PhoneNumber;->numerify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subscriberNumber()Ljava/lang/String;
    .locals 1

    .line 34
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/PhoneNumber;->subscriberNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subscriberNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/bloco/faker/components/PhoneNumber;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v2, p1}, Lio/bloco/faker/helpers/RandomHelper;->numberByLength(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
