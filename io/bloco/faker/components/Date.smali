.class public Lio/bloco/faker/components/Date;
.super Lio/bloco/faker/FakerComponent;
.source "Date.java"


# static fields
.field private static final DEFAULT_MAX_AGE:I = 0x41

.field private static final DEFAULT_MIN_AGE:I = 0x12

.field private static final DEFAULT_NUM_OF_DAYS:I = 0x16d


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 2
    .param p1, "fakerData"    # Lio/bloco/faker/FakerData;

    .line 22
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bloco/faker/components/Date;->dateFormat:Ljava/text/DateFormat;

    .line 24
    return-void
.end method

.method private between(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Ljava/util/Date;
    .locals 1
    .param p1, "from"    # Lorg/joda/time/DateTime;
    .param p2, "to"    # Lorg/joda/time/DateTime;

    .line 70
    invoke-direct {p0, p1, p2}, Lio/bloco/faker/components/Date;->getRandomDate(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->withTimeAtStartOfDay()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private getRandomDate(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;
    .locals 5
    .param p1, "from"    # Lorg/joda/time/DateTime;
    .param p2, "to"    # Lorg/joda/time/DateTime;

    .line 78
    new-instance v0, Lorg/joda/time/Duration;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/Duration;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    .line 79
    .local v0, "duration":Lorg/joda/time/Duration;
    invoke-virtual {v0}, Lorg/joda/time/Duration;->getStandardDays()J

    move-result-wide v1

    .line 80
    .local v1, "diffInDays":J
    iget-object v3, p0, Lio/bloco/faker/components/Date;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v3, v1, v2}, Lio/bloco/faker/helpers/RandomHelper;->number(J)J

    move-result-wide v3

    long-to-int v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    return-object v3
.end method

.method private today()Lorg/joda/time/DateTime;
    .locals 1

    .line 74
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->withTimeAtStartOfDay()Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public backward()Ljava/util/Date;
    .locals 1

    .line 52
    const/16 v0, 0x16d

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Date;->backward(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public backward(I)Ljava/util/Date;
    .locals 2
    .param p1, "numberOfDays"    # I

    .line 56
    invoke-direct {p0}, Lio/bloco/faker/components/Date;->today()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-direct {p0}, Lio/bloco/faker/components/Date;->today()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/bloco/faker/components/Date;->between(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public between(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .line 30
    :try_start_0
    iget-object v0, p0, Lio/bloco/faker/components/Date;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 31
    .local v0, "fromDate":Ljava/util/Date;
    iget-object v1, p0, Lio/bloco/faker/components/Date;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .local v1, "toDate":Ljava/util/Date;
    nop

    .line 36
    invoke-virtual {p0, v0, v1}, Lio/bloco/faker/components/Date;->between(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 32
    .end local v0    # "fromDate":Ljava/util/Date;
    .end local v1    # "toDate":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "exception":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public between(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p1, "from"    # Ljava/util/Date;
    .param p2, "to"    # Ljava/util/Date;

    .line 40
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1, p2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lio/bloco/faker/components/Date;->between(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public birthday()Ljava/util/Date;
    .locals 2

    .line 60
    const/16 v0, 0x12

    const/16 v1, 0x41

    invoke-virtual {p0, v0, v1}, Lio/bloco/faker/components/Date;->birthday(II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public birthday(II)Ljava/util/Date;
    .locals 2
    .param p1, "minAge"    # I
    .param p2, "maxAge"    # I

    .line 64
    invoke-direct {p0}, Lio/bloco/faker/components/Date;->today()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTime;->plusYears(I)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-direct {p0}, Lio/bloco/faker/components/Date;->today()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/joda/time/DateTime;->plusYears(I)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/bloco/faker/components/Date;->between(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public forward()Ljava/util/Date;
    .locals 1

    .line 44
    const/16 v0, 0x16d

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Date;->forward(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public forward(I)Ljava/util/Date;
    .locals 2
    .param p1, "numberOfDays"    # I

    .line 48
    invoke-direct {p0}, Lio/bloco/faker/components/Date;->today()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-direct {p0}, Lio/bloco/faker/components/Date;->today()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/bloco/faker/components/Date;->between(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
