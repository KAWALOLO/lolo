.class public Lio/bloco/faker/components/Time;
.super Lio/bloco/faker/FakerComponent;
.source "Time.java"


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 0
    .param p1, "fakerData"    # Lio/bloco/faker/FakerData;

    .line 14
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 15
    return-void
.end method

.method private between(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;Lio/bloco/faker/helpers/Period;)Lorg/joda/time/DateTime;
    .locals 3
    .param p1, "from"    # Lorg/joda/time/DateTime;
    .param p2, "to"    # Lorg/joda/time/DateTime;
    .param p3, "period"    # Lio/bloco/faker/helpers/Period;

    .line 46
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {p0, p1, p2}, Lio/bloco/faker/components/Time;->getRandomTimeBetweenTwoDates(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-direct {p0, v0, p3}, Lio/bloco/faker/components/Time;->randomTime(Lorg/joda/time/DateTime;Lio/bloco/faker/helpers/Period;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method private getRandomTimeBetweenTwoDates(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)J
    .locals 8
    .param p1, "from"    # Lorg/joda/time/DateTime;
    .param p2, "to"    # Lorg/joda/time/DateTime;

    .line 50
    invoke-virtual {p2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 51
    .local v0, "diff":J
    invoke-virtual {p1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    long-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    return-wide v2
.end method

.method private hours(Lio/bloco/faker/helpers/Period;)I
    .locals 3
    .param p1, "period"    # Lio/bloco/faker/helpers/Period;

    .line 61
    invoke-virtual {p1}, Lio/bloco/faker/helpers/Period;->getValues()[I

    move-result-object v0

    .line 62
    .local v0, "values":[I
    iget-object v1, p0, Lio/bloco/faker/components/Time;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    array-length v2, v0

    invoke-virtual {v1, v2}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v1

    aget v1, v0, v1

    return v1
.end method

.method private minutes()I
    .locals 2

    .line 66
    iget-object v0, p0, Lio/bloco/faker/components/Time;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v0

    return v0
.end method

.method private now()Lorg/joda/time/DateTime;
    .locals 1

    .line 42
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method private randomTime(Lorg/joda/time/DateTime;Lio/bloco/faker/helpers/Period;)Lorg/joda/time/DateTime;
    .locals 2
    .param p1, "dateTime"    # Lorg/joda/time/DateTime;
    .param p2, "period"    # Lio/bloco/faker/helpers/Period;

    .line 55
    invoke-direct {p0, p2}, Lio/bloco/faker/components/Time;->hours(Lio/bloco/faker/helpers/Period;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTime;->withHourOfDay(I)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lio/bloco/faker/components/Time;->minutes()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->withMinuteOfHour(I)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 57
    invoke-direct {p0}, Lio/bloco/faker/components/Time;->seconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->withSecondOfMinute(I)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 55
    return-object v0
.end method

.method private seconds()I
    .locals 2

    .line 70
    iget-object v0, p0, Lio/bloco/faker/components/Time;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public backward(I)Ljava/util/Date;
    .locals 1
    .param p1, "numberOfDays"    # I

    .line 38
    sget-object v0, Lio/bloco/faker/helpers/Period;->all:Lio/bloco/faker/helpers/Period;

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Time;->backward(ILio/bloco/faker/helpers/Period;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public backward(ILio/bloco/faker/helpers/Period;)Ljava/util/Date;
    .locals 1
    .param p1, "numberOfDays"    # I
    .param p2, "period"    # Lio/bloco/faker/helpers/Period;

    .line 34
    invoke-direct {p0}, Lio/bloco/faker/components/Time;->now()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/bloco/faker/components/Time;->randomTime(Lorg/joda/time/DateTime;Lio/bloco/faker/helpers/Period;)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public between(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "from"    # Ljava/util/Date;
    .param p2, "to"    # Ljava/util/Date;

    .line 22
    sget-object v0, Lio/bloco/faker/helpers/Period;->all:Lio/bloco/faker/helpers/Period;

    invoke-virtual {p0, p1, p2, v0}, Lio/bloco/faker/components/Time;->between(Ljava/util/Date;Ljava/util/Date;Lio/bloco/faker/helpers/Period;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public between(Ljava/util/Date;Ljava/util/Date;Lio/bloco/faker/helpers/Period;)Ljava/util/Date;
    .locals 2
    .param p1, "from"    # Ljava/util/Date;
    .param p2, "to"    # Ljava/util/Date;
    .param p3, "period"    # Lio/bloco/faker/helpers/Period;

    .line 18
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1, p2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1, p3}, Lio/bloco/faker/components/Time;->between(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;Lio/bloco/faker/helpers/Period;)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public forward(I)Ljava/util/Date;
    .locals 1
    .param p1, "numberOfDays"    # I

    .line 30
    sget-object v0, Lio/bloco/faker/helpers/Period;->all:Lio/bloco/faker/helpers/Period;

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Time;->forward(ILio/bloco/faker/helpers/Period;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public forward(ILio/bloco/faker/helpers/Period;)Ljava/util/Date;
    .locals 1
    .param p1, "numberOfDays"    # I
    .param p2, "period"    # Lio/bloco/faker/helpers/Period;

    .line 26
    invoke-direct {p0}, Lio/bloco/faker/components/Time;->now()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/bloco/faker/components/Time;->randomTime(Lorg/joda/time/DateTime;Lio/bloco/faker/helpers/Period;)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
