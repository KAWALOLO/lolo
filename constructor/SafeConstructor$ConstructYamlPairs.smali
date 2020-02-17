.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlPairs;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstructYamlPairs"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlPairs;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 12
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 411
    instance-of v0, p1, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    if-eqz v0, :cond_3

    .line 415
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 416
    .local v0, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 417
    .local v1, "pairs":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/nodes/Node;

    .line 418
    .local v3, "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v4, v3, Lorg/yaml/snakeyaml/nodes/MappingNode;

    if-eqz v4, :cond_1

    .line 423
    move-object v4, v3

    check-cast v4, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 424
    .local v4, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 429
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    .line 430
    .local v5, "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v8

    .line 431
    .local v8, "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v9, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlPairs;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-virtual {v9, v5}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v9

    .line 432
    .local v9, "key":Ljava/lang/Object;
    iget-object v10, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlPairs;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-virtual {v10, v8}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v10

    .line 433
    .local v10, "value":Ljava/lang/Object;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v9, v11, v7

    aput-object v10, v11, v6

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    .end local v3    # "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v4    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v5    # "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v8    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 425
    .restart local v3    # "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    .restart local v4    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    :cond_0
    new-instance v5, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expected a single mapping item, but found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " items"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    const-string v9, "while constructing pairs"

    invoke-direct {v5, v9, v6, v7, v8}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    .line 419
    .end local v4    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    :cond_1
    new-instance v4, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected a mapping of length 1, but found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    const-string v8, "while constructingpairs"

    invoke-direct {v4, v8, v5, v6, v7}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    .line 435
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_2
    return-object v1

    .line 412
    .end local v0    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v1    # "pairs":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    :cond_3
    new-instance v0, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected a sequence, but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while constructing pairs"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v0

    return-void
.end method
