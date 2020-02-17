.class public Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;
.super Ljava/lang/Object;
.source "SafeRepresenter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/representer/Represent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/representer/SafeRepresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RepresentDate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 24
    .param p1, "data"    # Ljava/lang/Object;

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Ljava/util/Calendar;

    if-eqz v2, :cond_0

    .line 328
    move-object v2, v1

    check-cast v2, Ljava/util/Calendar;

    goto :goto_1

    .line 330
    :cond_0
    iget-object v2, v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    iget-object v2, v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->timeZone:Ljava/util/TimeZone;

    :goto_0
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 332
    .local v2, "calendar":Ljava/util/Calendar;
    move-object v3, v1

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 334
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 335
    .local v4, "years":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    .line 336
    .local v6, "months":I
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 337
    .local v8, "days":I
    const/16 v9, 0xb

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 338
    .local v9, "hour24":I
    const/16 v10, 0xc

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 339
    .local v10, "minutes":I
    const/16 v11, 0xd

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 340
    .local v11, "seconds":I
    const/16 v12, 0xe

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 341
    .local v13, "millis":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .local v14, "buffer":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    const/4 v12, 0x4

    const/4 v7, 0x0

    if-ge v15, v12, :cond_2

    .line 344
    const-string v12, "0"

    invoke-virtual {v14, v7, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    const/16 v12, 0xe

    goto :goto_2

    .line 346
    :cond_2
    const-string v12, "-"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const/16 v12, 0xa

    if-ge v6, v12, :cond_3

    .line 348
    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    if-ge v8, v12, :cond_4

    .line 353
    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v15, "T"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    if-ge v9, v12, :cond_5

    .line 358
    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_5
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    if-ge v10, v12, :cond_6

    .line 363
    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_6
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    if-ge v11, v12, :cond_7

    .line 368
    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_7
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    if-lez v13, :cond_a

    .line 372
    if-ge v13, v12, :cond_8

    .line 373
    const-string v15, ".00"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 374
    :cond_8
    const/16 v15, 0x64

    if-ge v13, v15, :cond_9

    .line 375
    const-string v15, ".0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 377
    :cond_9
    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :goto_3
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_a
    const-string v15, "UTC"

    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 382
    const-string v3, "Z"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v2

    goto :goto_6

    .line 385
    :cond_b
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v17

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v18

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v20

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v22

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v23

    invoke-virtual/range {v17 .. v23}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v3

    .line 389
    .local v3, "gmtOffset":I
    const v5, 0xea60

    div-int v5, v3, v5

    .line 390
    .local v5, "minutesOffset":I
    div-int/lit8 v7, v5, 0x3c

    .line 391
    .local v7, "hoursOffset":I
    rem-int/lit8 v12, v5, 0x3c

    .line 392
    .local v12, "partOfHour":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v7, :cond_c

    const-string v16, "+"

    goto :goto_4

    :cond_c
    const-string v16, ""

    :goto_4
    move-object/from16 v1, v16

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    if-ge v12, v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "calendar":Ljava/util/Calendar;
    .local v16, "calendar":Ljava/util/Calendar;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .end local v16    # "calendar":Ljava/util/Calendar;
    .restart local v2    # "calendar":Ljava/util/Calendar;
    :cond_d
    move-object/from16 v16, v2

    .end local v2    # "calendar":Ljava/util/Calendar;
    .restart local v16    # "calendar":Ljava/util/Calendar;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .end local v3    # "gmtOffset":I
    .end local v5    # "minutesOffset":I
    .end local v7    # "hoursOffset":I
    .end local v12    # "partOfHour":I
    :goto_6
    iget-object v1, v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v1, v2, v3}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->getTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Ljava/lang/Character;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1
.end method
