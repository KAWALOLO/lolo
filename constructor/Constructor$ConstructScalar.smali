.class public Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "Constructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConstructScalar"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/Constructor;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method

.method private constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;
    .locals 8
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 432
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 434
    .local v0, "stringConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 435
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_d

    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    goto/16 :goto_c

    .line 438
    :cond_1
    const-class v0, Ljava/lang/Character;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_19

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    goto/16 :goto_a

    .line 449
    :cond_2
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 451
    .local v0, "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    .line 452
    .local v4, "date":Ljava/util/Date;
    const-class v5, Ljava/util/Date;

    if-ne p1, v5, :cond_3

    .line 453
    move-object v1, v4

    move-object v0, v1

    goto :goto_0

    .line 456
    :cond_3
    :try_start_0
    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 457
    .local v5, "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v5    # "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v1, "result":Ljava/lang/Object;
    move-object v0, v1

    .line 464
    .end local v1    # "result":Ljava/lang/Object;
    .end local v4    # "date":Ljava/util/Date;
    .local v0, "result":Ljava/lang/Object;
    :goto_0
    goto/16 :goto_d

    .line 460
    .local v0, "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .restart local v4    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    .local v2, "result":Ljava/lang/Object;
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot construct: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 458
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 459
    .local v1, "e":Ljava/lang/RuntimeException;
    .restart local v2    # "result":Ljava/lang/Object;
    throw v1

    .line 464
    .end local v0    # "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v4    # "date":Ljava/util/Date;
    :cond_4
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_15

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_15

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_15

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_15

    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_5

    goto/16 :goto_7

    .line 475
    :cond_5
    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/math/BigInteger;

    if-eq p1, v0, :cond_c

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    goto/16 :goto_1

    .line 492
    :cond_6
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 493
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "enumValueName":Ljava/lang/String;
    :try_start_1
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 499
    .local v1, "result":Ljava/lang/Object;
    nop

    .line 500
    .end local v0    # "enumValueName":Ljava/lang/String;
    move-object v0, v1

    goto/16 :goto_d

    .line 496
    .end local v1    # "result":Ljava/lang/Object;
    .restart local v0    # "enumValueName":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v2, v3

    .line 497
    .local v1, "ex":Ljava/lang/Exception;
    .restart local v2    # "result":Ljava/lang/Object;
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find enum value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' for enum class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 500
    .end local v0    # "enumValueName":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "result":Ljava/lang/Object;
    :cond_7
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 501
    new-instance v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;-><init>()V

    .line 502
    .local v0, "contr":Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;
    invoke-virtual {v0, p2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    .line 503
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 504
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_d

    .end local v0    # "result":Ljava/lang/Object;
    :cond_8
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 505
    new-instance v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNumber;

    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNumber;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    .line 506
    .local v0, "contr":Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNumber;
    invoke-virtual {v0, p2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNumber;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 507
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_d

    .end local v0    # "result":Ljava/lang/Object;
    :cond_9
    const-class v0, Ljava/util/UUID;

    if-ne v0, p1, :cond_a

    .line 508
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto/16 :goto_d

    .line 510
    :cond_a
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 511
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_d

    .line 513
    :cond_b
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_c
    :goto_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->INT:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 479
    .local v0, "intConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 480
    .local v1, "result":Ljava/lang/Object;
    const-class v2, Ljava/lang/Byte;

    if-eq p1, v2, :cond_14

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_d

    goto :goto_5

    .line 482
    :cond_d
    const-class v2, Ljava/lang/Short;

    if-eq p1, v2, :cond_13

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_e

    goto :goto_4

    .line 484
    :cond_e
    const-class v2, Ljava/lang/Integer;

    if-eq p1, v2, :cond_12

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_f

    goto :goto_3

    .line 486
    :cond_f
    const-class v2, Ljava/lang/Long;

    if-eq p1, v2, :cond_11

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_10

    goto :goto_2

    .line 490
    :cond_10
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    move-object v0, v1

    goto :goto_6

    .line 487
    :cond_11
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    goto :goto_6

    .line 485
    :cond_12
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    goto :goto_6

    .line 483
    :cond_13
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    move-object v0, v1

    goto :goto_6

    .line 481
    :cond_14
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    move-object v0, v1

    .line 492
    .end local v1    # "result":Ljava/lang/Object;
    .local v0, "result":Ljava/lang/Object;
    :goto_6
    goto/16 :goto_d

    .line 466
    .end local v0    # "result":Ljava/lang/Object;
    :cond_15
    :goto_7
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_16

    .line 467
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 469
    :cond_16
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 470
    .local v0, "doubleConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 471
    .restart local v1    # "result":Ljava/lang/Object;
    const-class v2, Ljava/lang/Float;

    if-eq p1, v2, :cond_18

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_17

    goto :goto_8

    :cond_17
    move-object v0, v1

    goto :goto_9

    .line 472
    :cond_18
    :goto_8
    new-instance v2, Ljava/lang/Float;

    move-object v3, v1

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Float;-><init>(D)V

    move-object v1, v2

    move-object v0, v1

    .line 474
    .end local v1    # "result":Ljava/lang/Object;
    .local v0, "result":Ljava/lang/Object;
    :goto_9
    goto :goto_d

    .line 439
    .end local v0    # "result":Ljava/lang/Object;
    :cond_19
    :goto_a
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 440
    .local v0, "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 441
    .local v3, "ch":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1a

    .line 442
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_b

    .line 443
    :cond_1a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_1b

    .line 447
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 449
    .end local v3    # "ch":Ljava/lang/String;
    .local v0, "result":Ljava/lang/Object;
    :goto_b
    goto :goto_d

    .line 444
    .local v0, "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .restart local v3    # "ch":Ljava/lang/String;
    :cond_1b
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid node Character: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'; length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    .end local v0    # "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .end local v3    # "ch":Ljava/lang/String;
    :cond_1c
    :goto_c
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->BOOL:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 437
    .local v0, "boolConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 516
    :goto_d
    return-object v0
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 14
    .param p1, "nnode"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 372
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 373
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 375
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Ljava/lang/String;

    if-eq v1, v2, :cond_5

    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Ljava/lang/Boolean;

    if-eq v1, v2, :cond_5

    const-class v2, Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Ljava/lang/Character;

    if-eq v1, v2, :cond_5

    const-class v2, Ljava/math/BigInteger;

    if-eq v1, v2, :cond_5

    const-class v2, Ljava/math/BigDecimal;

    if-eq v1, v2, :cond_5

    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Ljava/util/UUID;

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 384
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 386
    .local v2, "javaConstructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    .line 387
    .local v3, "oneArgCount":I
    const/4 v4, 0x0

    .line 388
    .local v4, "javaConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v5, v2

    .local v5, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    const/4 v8, 0x1

    if-ge v7, v6, :cond_2

    aget-object v9, v5, v7

    .line 389
    .local v9, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    if-ne v10, v8, :cond_1

    .line 390
    add-int/lit8 v3, v3, 0x1

    .line 391
    move-object v4, v9

    .line 388
    .end local v9    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 395
    .end local v5    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_2
    if-eqz v4, :cond_4

    .line 397
    const/4 v5, 0x0

    if-ne v3, v8, :cond_3

    .line 398
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-direct {p0, v6, v0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 407
    :cond_3
    iget-object v6, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v6, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object v6

    .line 409
    .local v6, "argument":Ljava/lang/Object;
    :try_start_0
    new-array v7, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v5

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v7

    .line 414
    nop

    .line 417
    :goto_1
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 418
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v5

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    .local v5, "result":Ljava/lang/Object;
    goto :goto_3

    .line 419
    .end local v5    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 420
    .local v7, "result":Ljava/lang/Object;
    .local v13, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t construct a java object for scalar "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "; exception="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v12

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v5

    .line 410
    .end local v7    # "result":Ljava/lang/Object;
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 411
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t construct a java object for scalar "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; No String constructor found. Exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 396
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "argument":Ljava/lang/Object;
    :cond_4
    new-instance v5, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No single argument constructor found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 381
    .end local v2    # "javaConstructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "oneArgCount":I
    .end local v4    # "javaConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_5
    :goto_2
    invoke-direct {p0, v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object v5

    .line 425
    .local v5, "result":Ljava/lang/Object;
    :goto_3
    return-object v5
.end method
