.class public abstract Lorg/yaml/snakeyaml/constructor/BaseConstructor;
.super Ljava/lang/Object;
.source "BaseConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;
    }
.end annotation


# instance fields
.field protected composer:Lorg/yaml/snakeyaml/composer/Composer;

.field private final constructedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private explicitPropertyUtils:Z

.field private final maps2fill:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

.field private final recursiveObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

.field private final sets2fill:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final yamlClassConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/yaml/snakeyaml/nodes/NodeId;",
            "Lorg/yaml/snakeyaml/constructor/Construct;",
            ">;"
        }
    .end annotation
.end field

.field protected final yamlConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Lorg/yaml/snakeyaml/constructor/Construct;",
            ">;"
        }
    .end annotation
.end field

.field protected final yamlMultiConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/constructor/Construct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlClassConstructors:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlConstructors:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlMultiConstructors:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructedObjects:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->recursiveObjects:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->maps2fill:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->sets2fill:Ljava/util/ArrayList;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->explicitPropertyUtils:Z

    .line 80
    return-void
.end method

.method private fillRecursive()V
    .locals 6

    .line 142
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->maps2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->maps2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    .line 144
    .local v1, "entry":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    .line 145
    .local v2, "key_value":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_1()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_2()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v1    # "entry":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v2    # "key_value":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_0

    .line 147
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->maps2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->sets2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->sets2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    .line 151
    .local v1, "value":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "value":Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;, "Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple<Ljava/util/Set<Ljava/lang/Object;>;Ljava/lang/Object;>;"
    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->sets2fill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    :cond_3
    return-void
.end method


# virtual methods
.method public checkData()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->composer:Lorg/yaml/snakeyaml/composer/Composer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->checkNode()Z

    move-result v0

    return v0
.end method

.method protected constructArray(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/lang/Object;
    .locals 2
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 263
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->createArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructArrayStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected constructArrayStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .param p2, "array"    # Ljava/lang/Object;

    .line 273
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 275
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 276
    .local v1, "index":I
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/nodes/Node;

    .line 278
    .local v3, "child":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    .line 279
    invoke-virtual {v3, v0}, Lorg/yaml/snakeyaml/nodes/Node;->setType(Ljava/lang/Class;)V

    .line 282
    :cond_0
    invoke-virtual {p0, v3}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v4

    .line 284
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 286
    if-eqz v4, :cond_9

    .line 291
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 292
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    invoke-static {p2, v1, v5}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto/16 :goto_1

    .line 294
    :cond_1
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 295
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    move-result v5

    invoke-static {p2, v1, v5}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto/16 :goto_1

    .line 297
    :cond_2
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 298
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {p2, v1, v5}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 300
    :cond_3
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 301
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {p2, v1, v5, v6}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_1

    .line 303
    :cond_4
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 304
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-static {p2, v1, v5}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_1

    .line 306
    :cond_5
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 307
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-static {p2, v1, v5, v6}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    goto :goto_1

    .line 309
    :cond_6
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 310
    move-object v5, v4

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {p2, v1, v5}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    goto :goto_1

    .line 312
    :cond_7
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 313
    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {p2, v1, v5}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    goto :goto_1

    .line 316
    :cond_8
    new-instance v5, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v6, "unexpected primitive type"

    invoke-direct {v5, v6}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 287
    :cond_9
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to construct element value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 321
    :cond_a
    invoke-static {p2, v1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 324
    :goto_1
    nop

    .end local v3    # "child":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v4    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    .line 325
    goto/16 :goto_0

    .line 326
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_b
    return-object p2
.end method

.method protected final constructDocument(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 2
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 134
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "data":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->fillRecursive()V

    .line 136
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructedObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 137
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->recursiveObjects:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 138
    return-object v0
.end method

.method protected constructMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Map;
    .locals 1
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->createDefaultMap()Ljava/util/Map;

    move-result-object v0

    .line 347
    .local v0, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V

    .line 348
    return-object v0
.end method

.method protected constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V
    .locals 13
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 352
    .local p2, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v0

    .line 353
    .local v0, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 354
    .local v2, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v3

    .line 355
    .local v3, "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v4

    .line 356
    .local v4, "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {p0, v3}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v5

    .line 357
    .local v5, "key":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 359
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_1

    .line 360
    :catch_0
    move-exception v11

    .line 361
    .local v11, "e":Ljava/lang/Exception;
    new-instance v12, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found unacceptable key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v10

    const-string v7, "while constructing a mapping"

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v12

    .line 366
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-virtual {p0, v4}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v6

    .line 367
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 374
    iget-object v7, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->maps2fill:Ljava/util/ArrayList;

    const/4 v8, 0x0

    new-instance v9, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    new-instance v10, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    invoke-direct {v10, v5, v6}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v9, p2, v10}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 378
    :cond_1
    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v2    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v3    # "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v4    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    :goto_2
    goto :goto_0

    .line 381
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method protected constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 166
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->recursiveObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->recursiveObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->getConstructor(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/constructor/Construct;

    move-result-object v0

    .line 175
    .local v0, "constructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 176
    .local v1, "data":Ljava/lang/Object;
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructedObjects:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->recursiveObjects:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    invoke-interface {v0, p1, v1}, Lorg/yaml/snakeyaml/constructor/Construct;->construct2ndStep(Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V

    .line 181
    :cond_1
    return-object v1

    .line 170
    .end local v0    # "constructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .end local v1    # "data":Ljava/lang/Object;
    :cond_2
    new-instance v0, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "found unconstructable recursive node"

    invoke-direct {v0, v2, v2, v3, v1}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v0
.end method

.method protected constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;
    .locals 1
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 211
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected constructSequence(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/List;
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/SequenceNode;",
            ")",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    const-class v0, Ljava/util/List;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :try_start_0
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_0

    .line 233
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v2, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    move-object v0, v1

    .line 237
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->createDefaultList(I)Ljava/util/List;

    move-result-object v0

    .line 239
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructSequenceStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/util/Collection;)V

    .line 240
    return-object v0
.end method

.method protected constructSequenceStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/util/Collection;)V
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/SequenceNode;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 267
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/Node;

    .line 268
    .local v1, "child":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "child":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_0
    return-void
.end method

.method protected constructSet(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Set;
    .locals 1
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->createDefaultSet()Ljava/util/Set;

    move-result-object v0

    .line 341
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V

    .line 342
    return-object v0
.end method

.method protected constructSet(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/Set;
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/SequenceNode;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 250
    :try_start_0
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    goto :goto_0

    .line 251
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v2, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_0
    move-object v0, v1

    .line 255
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->createDefaultSet(I)Ljava/util/Set;

    move-result-object v0

    .line 257
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructSequenceStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/util/Collection;)V

    .line 258
    return-object v0
.end method

.method protected constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V
    .locals 12
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 384
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v0

    .line 385
    .local v0, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 386
    .local v2, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v3

    .line 387
    .local v3, "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {p0, v3}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v4

    .line 388
    .local v4, "key":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 390
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    goto :goto_1

    .line 391
    :catch_0
    move-exception v10

    .line 392
    .local v10, "e":Ljava/lang/Exception;
    new-instance v11, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found unacceptable key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    const-string v6, "while constructing a Set"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v11

    .line 396
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 403
    iget-object v5, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->sets2fill:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-instance v7, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;

    invoke-direct {v7, p2, v4}, Lorg/yaml/snakeyaml/constructor/BaseConstructor$RecursiveTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 405
    :cond_1
    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v2    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v3    # "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v4    # "key":Ljava/lang/Object;
    :goto_2
    goto :goto_0

    .line 408
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method protected createArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 223
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultList(I)Ljava/util/List;
    .locals 1
    .param p1, "initSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method protected createDefaultMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method protected createDefaultSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method protected createDefaultSet(I)Ljava/util/Set;
    .locals 1
    .param p1, "initSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method protected getConstructor(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/constructor/Construct;
    .locals 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 194
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->useClassConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlClassConstructors:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlConstructors:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 198
    .local v0, "constructor":Lorg/yaml/snakeyaml/constructor/Construct;
    if-nez v0, :cond_3

    .line 199
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlMultiConstructors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/nodes/Tag;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlMultiConstructors:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/constructor/Construct;

    return-object v3

    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 204
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->yamlConstructors:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/constructor/Construct;

    return-object v1

    .line 206
    :cond_3
    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->composer:Lorg/yaml/snakeyaml/composer/Composer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->checkNode()Z

    .line 104
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->composer:Lorg/yaml/snakeyaml/composer/Composer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->getNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 105
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 108
    :cond_0
    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructDocument(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 419
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    return-object v0
.end method

.method public getSingleData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 113
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->composer:Lorg/yaml/snakeyaml/composer/Composer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->getSingleNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 114
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    if-eqz v0, :cond_2

    .line 115
    const-class v1, Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    .line 116
    new-instance v1, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 120
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructDocument(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 122
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public final isExplicitPropertyUtils()Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->explicitPropertyUtils:Z

    return v0
.end method

.method public setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V
    .locals 0
    .param p1, "composer"    # Lorg/yaml/snakeyaml/composer/Composer;

    .line 83
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->composer:Lorg/yaml/snakeyaml/composer/Composer;

    .line 84
    return-void
.end method

.method public setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V
    .locals 1
    .param p1, "propertyUtils"    # Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 411
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->explicitPropertyUtils:Z

    .line 413
    return-void
.end method
