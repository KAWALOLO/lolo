.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstructYamlTimestamp"
.end annotation


# instance fields
.field private calendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 22
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 316
    .local v1, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "nodeValue":Ljava/lang/String;
    invoke-static {}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$200()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 318
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    .line 319
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "year_s":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 321
    .local v9, "month_s":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "day_s":Ljava/lang/String;
    const-string v10, "UTC"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    .line 323
    iget-object v10, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->clear()V

    .line 324
    iget-object v10, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v8, v11}, Ljava/util/Calendar;->set(II)V

    .line 326
    iget-object v10, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v10, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 327
    iget-object v7, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 328
    iget-object v6, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    return-object v6

    .line 330
    .end local v4    # "year_s":Ljava/lang/String;
    .end local v5    # "day_s":Ljava/lang/String;
    .end local v9    # "month_s":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$300()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 331
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 335
    .restart local v4    # "year_s":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 336
    .restart local v9    # "month_s":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 337
    .restart local v5    # "day_s":Ljava/lang/String;
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 338
    .local v10, "hour_s":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 340
    .local v11, "min_s":Ljava/lang/String;
    const/4 v12, 0x6

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "seconds":Ljava/lang/String;
    const/4 v13, 0x7

    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 342
    .local v13, "millis":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 343
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 345
    :cond_1
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 346
    .local v14, "fractions":D
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v7, v6

    .line 347
    .local v7, "sec_s":I
    move-object/from16 v16, v9

    .end local v9    # "month_s":Ljava/lang/String;
    .local v16, "month_s":Ljava/lang/String;
    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v14, v8

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v8, v8, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v9, v8

    .line 349
    .local v9, "usec":I
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, "timezoneh_s":Ljava/lang/String;
    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "timezonem_s":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 353
    if-eqz v6, :cond_2

    move-object/from16 v18, v1

    .end local v1    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .local v18, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    .end local v3    # "match":Ljava/util/regex/Matcher;
    .local v19, "match":Ljava/util/regex/Matcher;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v18    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v19    # "match":Ljava/util/regex/Matcher;
    .restart local v1    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v3    # "match":Ljava/util/regex/Matcher;
    :cond_2
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    .end local v1    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v3    # "match":Ljava/util/regex/Matcher;
    .restart local v18    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v19    # "match":Ljava/util/regex/Matcher;
    const-string v1, "00"

    .line 354
    .local v1, "time":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v6

    .end local v6    # "timezonem_s":Ljava/lang/String;
    .local v20, "timezonem_s":Ljava/lang/String;
    const-string v6, "GMT"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 355
    .local v1, "timeZone":Ljava/util/TimeZone;
    goto :goto_1

    .line 357
    .end local v18    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v19    # "match":Ljava/util/regex/Matcher;
    .end local v20    # "timezonem_s":Ljava/lang/String;
    .local v1, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v3    # "match":Ljava/util/regex/Matcher;
    .restart local v6    # "timezonem_s":Ljava/lang/String;
    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    .end local v1    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v3    # "match":Ljava/util/regex/Matcher;
    .end local v6    # "timezonem_s":Ljava/lang/String;
    .restart local v18    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v19    # "match":Ljava/util/regex/Matcher;
    .restart local v20    # "timezonem_s":Ljava/lang/String;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 359
    .local v1, "timeZone":Ljava/util/TimeZone;
    :goto_1
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    .line 360
    iget-object v3, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "timeZone":Ljava/util/TimeZone;
    .local v21, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 362
    iget-object v3, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v1, 0x2

    invoke-virtual {v3, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 363
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x5

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 364
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 365
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 366
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 367
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v9}, Ljava/util/Calendar;->set(II)V

    .line 368
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 332
    .end local v4    # "year_s":Ljava/lang/String;
    .end local v5    # "day_s":Ljava/lang/String;
    .end local v7    # "sec_s":I
    .end local v8    # "timezoneh_s":Ljava/lang/String;
    .end local v9    # "usec":I
    .end local v10    # "hour_s":Ljava/lang/String;
    .end local v11    # "min_s":Ljava/lang/String;
    .end local v12    # "seconds":Ljava/lang/String;
    .end local v13    # "millis":Ljava/lang/String;
    .end local v14    # "fractions":D
    .end local v16    # "month_s":Ljava/lang/String;
    .end local v18    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v19    # "match":Ljava/util/regex/Matcher;
    .end local v20    # "timezonem_s":Ljava/lang/String;
    .end local v21    # "timeZone":Ljava/util/TimeZone;
    .local v1, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v3    # "match":Ljava/util/regex/Matcher;
    :cond_4
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    .end local v1    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v3    # "match":Ljava/util/regex/Matcher;
    .restart local v18    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v19    # "match":Ljava/util/regex/Matcher;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    return-object v0
.end method
