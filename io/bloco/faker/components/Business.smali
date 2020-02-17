.class public Lio/bloco/faker/components/Business;
.super Lio/bloco/faker/FakerComponent;
.source "Business.java"


# static fields
.field private static final CREDIT_CARD_PLUS_YEARS_MAX:I = 0x4


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 0
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 15
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 16
    return-void
.end method


# virtual methods
.method public creditCardExpireDate()Ljava/util/Date;
    .locals 3

    .line 23
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v0

    iget-object v1, p0, Lio/bloco/faker/components/Business;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    .line 24
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->plusYears(I)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v0

    .line 23
    return-object v0
.end method

.method public creditCardNumber()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "business.credit_card_numbers"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Business;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public creditCardType()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "business.credit_card_types"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Business;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
