.class public Luc/ciceron/cerberus/RandomDataGenerator;
.super Ljava/lang/Object;
.source "RandomDataGenerator.java"


# instance fields
.field private faker:Lio/bloco/faker/Faker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lio/bloco/faker/Faker;

    invoke-direct {v0}, Lio/bloco/faker/Faker;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    return-void
.end method


# virtual methods
.method public ramdomSvc()Ljava/lang/String;
    .locals 4

    .line 128
    const-string v0, "com.%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v2, v2, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    invoke-virtual {v2}, Lio/bloco/faker/components/Lorem;->word()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v2, v2, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    invoke-virtual {v2}, Lio/bloco/faker/components/Lorem;->word()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public randomA()Ljava/lang/String;
    .locals 5

    .line 68
    const-string v0, "abcdef0123456789"

    .line 70
    .local v0, "chars":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v1, "salt":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 72
    .local v2, "rnd":Ljava/util/Random;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 73
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 74
    .local v3, "index":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .end local v3    # "index":I
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public randomBuildId()Ljava/lang/String;
    .locals 3

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v1, v1, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lio/bloco/faker/components/Lorem;->characters(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v1, v1, Lio/bloco/faker/Faker;->number:Lio/bloco/faker/components/Number;

    .line 15
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lio/bloco/faker/components/Number;->number(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v1, v1, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    .line 16
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/bloco/faker/components/Lorem;->characters(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 14
    return-object v0
.end method

.method public randomDate()Ljava/lang/String;
    .locals 6

    .line 29
    const-string v0, "2015-01-01"

    .line 30
    .local v0, "date_from":Ljava/lang/String;
    const-string v1, "2015-12-31"

    .line 31
    .local v1, "date_to":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v3, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v3, v3, Lio/bloco/faker/Faker;->date:Lio/bloco/faker/components/Date;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/bloco/faker/components/Date;->between(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 35
    :catch_0
    move-exception v3

    .line 36
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 39
    .end local v3    # "e":Ljava/text/ParseException;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public randomI()Ljava/lang/String;
    .locals 5

    .line 94
    const-string v0, "0123456789"

    .line 96
    .local v0, "chars":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v1, "salt":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 98
    .local v2, "rnd":Ljava/util/Random;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_0

    .line 99
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 100
    .local v3, "index":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .end local v3    # "index":I
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public randomInt(II)Ljava/lang/String;
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 64
    iget-object v0, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v0, v0, Lio/bloco/faker/Faker;->number:Lio/bloco/faker/components/Number;

    invoke-virtual {v0, p1, p2}, Lio/bloco/faker/components/Number;->between(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public randomK()Ljava/lang/String;
    .locals 6

    .line 120
    const-string v0, "3.4.%s-%s-V%s %s"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v3, v3, Lio/bloco/faker/Faker;->number:Lio/bloco/faker/components/Number;

    const/16 v4, 0x64

    const/16 v5, 0xc8

    invoke-virtual {v3, v4, v5}, Lio/bloco/faker/components/Number;->between(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v3, v3, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    invoke-virtual {v3}, Lio/bloco/faker/components/Lorem;->word()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v3, v3, Lio/bloco/faker/Faker;->number:Lio/bloco/faker/components/Number;

    invoke-virtual {v3, v4}, Lio/bloco/faker/components/Number;->number(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v3, v3, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    invoke-virtual {v3, v1}, Lio/bloco/faker/components/Lorem;->sentence(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public randomM()Ljava/lang/String;
    .locals 6

    .line 107
    const-string v0, "abcdef0123456789"

    .line 109
    .local v0, "chars":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v1, "salt":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 111
    .local v2, "rnd":Ljava/util/Random;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    .line 112
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 113
    .local v3, "index":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .end local v3    # "index":I
    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(.{2})"

    const-string v5, "$1 "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public randomS()Ljava/lang/String;
    .locals 5

    .line 81
    const-string v0, "abcdef0123456789"

    .line 83
    .local v0, "chars":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, "salt":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 85
    .local v2, "rnd":Ljava/util/Random;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 86
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 87
    .local v3, "index":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .end local v3    # "index":I
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public randomString(I)Ljava/lang/String;
    .locals 1
    .param p1, "length"    # I

    .line 56
    iget-object v0, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v0, v0, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    invoke-virtual {v0, p1}, Lio/bloco/faker/components/Lorem;->characters(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public randomTime()Ljava/lang/String;
    .locals 8

    .line 43
    iget-object v0, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v0, v0, Lio/bloco/faker/Faker;->number:Lio/bloco/faker/components/Number;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lio/bloco/faker/components/Number;->between(II)I

    move-result v0

    .line 44
    .local v0, "hour":I
    iget-object v2, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v2, v2, Lio/bloco/faker/Faker;->number:Lio/bloco/faker/components/Number;

    const/16 v3, 0x3b

    invoke-virtual {v2, v1, v3}, Lio/bloco/faker/components/Number;->between(II)I

    move-result v2

    .line 46
    .local v2, "minutes":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "hour_":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "minutes_":Ljava/lang/String;
    const/16 v5, 0x9

    if-ltz v0, :cond_0

    if-gt v0, v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    :cond_0
    if-ltz v2, :cond_1

    if-gt v2, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    :cond_1
    const-string v5, "%s:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    const/4 v1, 0x1

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public randomVersionIncremental()Ljava/lang/String;
    .locals 5

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v1, v1, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/bloco/faker/components/Lorem;->characters(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v1, v1, Lio/bloco/faker/Faker;->number:Lio/bloco/faker/components/Number;

    .line 21
    const/16 v3, 0x3e8

    const/16 v4, 0x270f

    invoke-virtual {v1, v3, v4}, Lio/bloco/faker/components/Number;->between(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v1, v1, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    .line 22
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lio/bloco/faker/components/Lorem;->characters(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v1, v1, Lio/bloco/faker/Faker;->number:Lio/bloco/faker/components/Number;

    .line 23
    invoke-virtual {v1, v2}, Lio/bloco/faker/components/Number;->number(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v1, v1, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    .line 24
    invoke-virtual {v1, v3}, Lio/bloco/faker/components/Lorem;->characters(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v1, v1, Lio/bloco/faker/Faker;->number:Lio/bloco/faker/components/Number;

    .line 25
    invoke-virtual {v1, v2}, Lio/bloco/faker/components/Number;->number(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 20
    return-object v0
.end method

.method public randomW()Ljava/lang/String;
    .locals 4

    .line 124
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v2, v2, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    invoke-virtual {v2}, Lio/bloco/faker/components/Lorem;->word()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v2, v2, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    invoke-virtual {v2}, Lio/bloco/faker/components/Lorem;->word()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public randomWord()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Luc/ciceron/cerberus/RandomDataGenerator;->faker:Lio/bloco/faker/Faker;

    iget-object v0, v0, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    invoke-virtual {v0}, Lio/bloco/faker/components/Lorem;->word()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
