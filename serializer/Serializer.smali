.class public final Lorg/yaml/snakeyaml/serializer/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# instance fields
.field private anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

.field private anchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Ljava/lang/Boolean;

.field private final emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

.field private explicitEnd:Z

.field private explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

.field private explicitStart:Z

.field private final resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

.field private serializedNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private useTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useVersion:Lorg/yaml/snakeyaml/DumperOptions$Version;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitable;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/nodes/Tag;)V
    .locals 1
    .param p1, "emitter"    # Lorg/yaml/snakeyaml/emitter/Emitable;
    .param p2, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;
    .param p3, "opts"    # Lorg/yaml/snakeyaml/DumperOptions;
    .param p4, "rootTag"    # Lorg/yaml/snakeyaml/nodes/Tag;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    .line 66
    iput-object p2, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 67
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->isExplicitStart()Z

    move-result v0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitStart:Z

    .line 68
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->isExplicitEnd()Z

    move-result v0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitEnd:Z

    .line 69
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useVersion:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 72
    :cond_0
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getTags()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useTags:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    .line 75
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getAnchorGenerator()Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    .line 77
    iput-object p4, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 78
    return-void
.end method

.method private anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 8
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 119
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v0

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->anchor:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v0, v1, :cond_0

    .line 120
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/AnchorNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/AnchorNode;->getRealNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object p1

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    .local v0, "anchor":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 125
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    invoke-interface {v1, p1}, Lorg/yaml/snakeyaml/serializer/AnchorGenerator;->nextAnchor(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v0    # "anchor":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 129
    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/yaml/snakeyaml/serializer/Serializer$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move-object v0, v1

    .line 139
    .local v0, "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    move-object v2, p1

    check-cast v2, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 140
    .local v2, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v3

    .line 141
    .local v3, "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 142
    .local v5, "object":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    .line 143
    .local v6, "key":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v7

    .line 144
    .local v7, "value":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-direct {p0, v6}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 145
    invoke-direct {p0, v7}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 146
    .end local v5    # "object":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v6    # "key":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v7    # "value":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_0

    .line 132
    .end local v0    # "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    .end local v2    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v3    # "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 133
    .restart local v0    # "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v1

    .line 134
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/nodes/Node;

    .line 135
    .local v3, "item":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-direct {p0, v3}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    goto :goto_1

    .line 137
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_3
    nop

    .line 150
    .end local v0    # "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 25
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "parent"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/nodes/NodeId;->anchor:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v1, v2, :cond_0

    .line 154
    move-object/from16 v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/AnchorNode;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/AnchorNode;->getRealNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_0
    move-object/from16 v1, p1

    .line 156
    .end local p1    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    .local v1, "node":Lorg/yaml/snakeyaml/nodes/Node;
    :goto_0
    iget-object v2, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    .local v2, "tAlias":Ljava/lang/String;
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    .line 158
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v4, Lorg/yaml/snakeyaml/events/AliasEvent;

    invoke-direct {v4, v2, v10, v10}, Lorg/yaml/snakeyaml/events/AliasEvent;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v3, v4}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    move-object/from16 v17, v2

    goto/16 :goto_3

    .line 160
    :cond_1
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v3, Lorg/yaml/snakeyaml/serializer/Serializer$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v4

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v3, v5, :cond_3

    move-object v11, v10

    .local v11, "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    move-object v12, v10

    .local v12, "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    move-object v13, v10

    .local v13, "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    move-object v14, v10

    .local v14, "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    move-object v15, v10

    .local v15, "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    move-object/from16 v16, v10

    .local v16, "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    move/from16 v17, v6

    .local v17, "implicitS":Z
    move-object/from16 v18, v10

    .line 185
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v5, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v3, v5, v10, v4}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v9

    .line 186
    .local v9, "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 187
    .local v19, "implicitM":Z
    iget-object v8, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v7, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Tag;->getValue()Ljava/lang/String;

    move-result-object v5

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v3, v1

    check-cast v3, Lorg/yaml/snakeyaml/nodes/CollectionNode;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/CollectionNode;->getFlowStyle()Ljava/lang/Boolean;

    move-result-object v22

    move-object v3, v7

    move-object v4, v2

    move/from16 v6, v19

    move-object v10, v7

    move-object/from16 v7, v20

    move-object/from16 v23, v8

    move-object/from16 v8, v21

    move-object/from16 v20, v9

    .end local v9    # "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .local v20, "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    move-object/from16 v9, v22

    invoke-direct/range {v3 .. v9}, Lorg/yaml/snakeyaml/events/MappingStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V

    move-object/from16 v3, v23

    invoke-interface {v3, v10}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 189
    move-object v3, v1

    check-cast v3, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 190
    .local v3, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v4

    .line 191
    .local v4, "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 192
    .local v6, "row":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v7

    .line 193
    .local v7, "key":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v8

    .line 194
    .local v8, "value":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-direct {v0, v7, v3}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 195
    invoke-direct {v0, v8, v3}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 196
    .end local v6    # "row":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v7    # "key":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v8    # "value":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1

    .line 197
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v5, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v6, Lorg/yaml/snakeyaml/events/MappingEndEvent;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Lorg/yaml/snakeyaml/events/MappingEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v5, v6}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    move-object/from16 v17, v2

    goto/16 :goto_3

    .line 163
    .end local v3    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v4    # "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v11    # "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v12    # "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v13    # "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v14    # "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    .end local v15    # "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    .end local v16    # "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v17    # "implicitS":Z
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    .end local v19    # "implicitM":Z
    .end local v20    # "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :cond_3
    move-object v11, v1

    check-cast v11, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 164
    .restart local v11    # "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v5, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7, v4}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v12

    .line 165
    .restart local v12    # "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v13

    .line 166
    .restart local v13    # "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    new-instance v6, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    invoke-virtual {v4, v13}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {v6, v3, v4}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    .line 168
    .local v6, "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    new-instance v14, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Tag;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStyle()Ljava/lang/Character;

    move-result-object v10

    move-object v3, v14

    move-object v4, v2

    invoke-direct/range {v3 .. v10}, Lorg/yaml/snakeyaml/events/ScalarEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/yaml/snakeyaml/events/ImplicitTuple;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V

    .line 170
    .local v3, "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    iget-object v4, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    invoke-interface {v4, v3}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 171
    move-object/from16 v17, v2

    goto/16 :goto_3

    .line 161
    .end local v3    # "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    .end local v6    # "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    .end local v11    # "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v12    # "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v13    # "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :cond_4
    const/4 v3, 0x0

    move-object v10, v3

    .local v10, "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    move-object v11, v3

    .local v11, "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    move-object v12, v3

    .local v12, "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    move-object v13, v3

    .local v13, "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    move-object v14, v3

    .line 173
    .local v14, "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    move-object v15, v1

    check-cast v15, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 174
    .local v15, "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v5

    iget-object v6, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v7, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v6, v7, v3, v4}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 176
    .local v16, "implicitS":Z
    iget-object v9, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v8, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Tag;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v17, 0x0

    invoke-virtual {v15}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getFlowStyle()Ljava/lang/Boolean;

    move-result-object v18

    move-object v3, v8

    move-object v4, v2

    move/from16 v6, v16

    move-object/from16 v24, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v2

    move-object v2, v9

    .end local v2    # "tAlias":Ljava/lang/String;
    .local v17, "tAlias":Ljava/lang/String;
    move-object/from16 v9, v18

    invoke-direct/range {v3 .. v9}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V

    move-object/from16 v3, v24

    invoke-interface {v2, v3}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 178
    invoke-virtual {v15}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v2

    .line 179
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/yaml/snakeyaml/nodes/Node;

    .line 180
    .local v4, "item":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-direct {v0, v4, v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    goto :goto_2

    .line 182
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_5
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v4, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Lorg/yaml/snakeyaml/events/SequenceEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v3, v4}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 183
    nop

    .line 200
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    .end local v10    # "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v11    # "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v12    # "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v13    # "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    .end local v14    # "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    .end local v15    # "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v16    # "implicitS":Z
    :goto_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v1, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/yaml/snakeyaml/events/StreamEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 96
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    .line 98
    :cond_0
    return-void

    .line 93
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is not opened"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v1, Lorg/yaml/snakeyaml/events/StreamStartEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/yaml/snakeyaml/events/StreamStartEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 83
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    .line 89
    return-void

    .line 84
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is closed"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is already opened"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serialize(Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 8
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v7, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v4, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitStart:Z

    iget-object v5, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useVersion:Lorg/yaml/snakeyaml/DumperOptions$Version;

    iget-object v6, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useTags:Ljava/util/Map;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;ZLorg/yaml/snakeyaml/DumperOptions$Version;Ljava/util/Map;)V

    invoke-interface {v0, v7}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 108
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 109
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 112
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 113
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v2, Lorg/yaml/snakeyaml/events/DocumentEndEvent;

    iget-boolean v3, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitEnd:Z

    invoke-direct {v2, v0, v0, v3}, Lorg/yaml/snakeyaml/events/DocumentEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z)V

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 114
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 115
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    return-void

    .line 104
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is closed"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is not opened"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
