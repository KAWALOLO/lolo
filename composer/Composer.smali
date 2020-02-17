.class public Lorg/yaml/snakeyaml/composer/Composer;
.super Ljava/lang/Object;
.source "Composer.java"


# instance fields
.field private final anchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected final parser:Lorg/yaml/snakeyaml/parser/Parser;

.field private final recursiveNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final resolver:Lorg/yaml/snakeyaml/resolver/Resolver;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V
    .locals 1
    .param p1, "parser"    # Lorg/yaml/snakeyaml/parser/Parser;
    .param p2, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    .line 56
    iput-object p2, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    .line 59
    return-void
.end method

.method private composeDocument()Lorg/yaml/snakeyaml/nodes/Node;
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 124
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 125
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 126
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 127
    return-object v0
.end method

.method private composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 6
    .param p1, "parent"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 131
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->Alias:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/AliasEvent;

    .line 134
    .local v0, "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/AliasEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "anchor":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/Node;

    .line 140
    .local v2, "result":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/nodes/Node;->setTwoStepsConstruction(Z)V

    .line 143
    :cond_0
    return-object v2

    .line 136
    .end local v2    # "result":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_1
    new-instance v2, Lorg/yaml/snakeyaml/composer/ComposerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found undefined alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/AliasEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Lorg/yaml/snakeyaml/composer/ComposerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 145
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    .end local v1    # "anchor":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->peekEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/NodeEvent;

    .line 146
    .local v0, "event":Lorg/yaml/snakeyaml/events/NodeEvent;
    const/4 v1, 0x0

    .line 147
    .restart local v1    # "anchor":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, "node":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v4, Lorg/yaml/snakeyaml/events/Event$ID;->Scalar:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v3, v4}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/composer/Composer;->composeScalarNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    goto :goto_0

    .line 152
    :cond_3
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v4, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceStart:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v3, v4}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 153
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/composer/Composer;->composeSequenceNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    goto :goto_0

    .line 155
    :cond_4
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/composer/Composer;->composeMappingNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    .line 157
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    return-object v2
.end method


# virtual methods
.method public checkNode()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamStart:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected composeKeyNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 242
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method protected composeMappingChildren(Ljava/util/List;Lorg/yaml/snakeyaml/nodes/MappingNode;)V
    .locals 3
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/nodes/NodeTuple;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            ")V"
        }
    .end annotation

    .line 233
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-virtual {p0, p2}, Lorg/yaml/snakeyaml/composer/Composer;->composeKeyNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 234
    .local v0, "itemKey":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->MERGE:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setMerged(Z)V

    .line 237
    :cond_0
    invoke-virtual {p0, p2}, Lorg/yaml/snakeyaml/composer/Composer;->composeValueNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    .line 238
    .local v1, "itemValue":Lorg/yaml/snakeyaml/nodes/Node;
    new-instance v2, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/nodes/NodeTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method protected composeMappingNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 13
    .param p1, "anchor"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    .line 208
    .local v0, "startEvent":Lorg/yaml/snakeyaml/events/MappingStartEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 211
    .local v2, "resolved":Z
    if-eqz v1, :cond_1

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getImplicit()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 213
    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 218
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    .line 219
    .local v11, "children":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    new-instance v12, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getFlowStyle()Ljava/lang/Boolean;

    move-result-object v10

    move-object v4, v12

    move-object v5, v3

    move v6, v2

    move-object v7, v11

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/MappingNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V

    .line 221
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/MappingNode;
    if-eqz p1, :cond_2

    .line 222
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v6, Lorg/yaml/snakeyaml/events/Event$ID;->MappingEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v5, v6}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 225
    invoke-virtual {p0, v11, v4}, Lorg/yaml/snakeyaml/composer/Composer;->composeMappingChildren(Ljava/util/List;Lorg/yaml/snakeyaml/nodes/MappingNode;)V

    goto :goto_2

    .line 227
    :cond_3
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v5

    .line 228
    .local v5, "endEvent":Lorg/yaml/snakeyaml/events/Event;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/events/Event;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setEndMark(Lorg/yaml/snakeyaml/error/Mark;)V

    .line 229
    return-object v4
.end method

.method protected composeScalarNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 12
    .param p1, "anchor"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 163
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 166
    .local v2, "resolved":Z
    if-eqz v1, :cond_1

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v6

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 169
    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 173
    :goto_1
    new-instance v11, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v10

    move-object v4, v11

    move-object v5, v3

    move v6, v2

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/ScalarNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V

    .line 175
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/Node;
    if-eqz p1, :cond_2

    .line 176
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_2
    return-object v4
.end method

.method protected composeSequenceNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 13
    .param p1, "anchor"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    .line 183
    .local v0, "startEvent":Lorg/yaml/snakeyaml/events/SequenceStartEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 186
    .local v2, "resolved":Z
    if-eqz v1, :cond_1

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getImplicit()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 188
    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 192
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    .line 193
    .local v11, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/yaml/snakeyaml/nodes/Node;>;"
    new-instance v12, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getFlowStyle()Ljava/lang/Boolean;

    move-result-object v10

    move-object v4, v12

    move-object v5, v3

    move v6, v2

    move-object v7, v11

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/SequenceNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V

    .line 195
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    if-eqz p1, :cond_2

    .line 196
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v6, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v5, v6}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 199
    invoke-direct {p0, v4}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 201
    :cond_3
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v5

    .line 202
    .local v5, "endEvent":Lorg/yaml/snakeyaml/events/Event;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/events/Event;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setEndMark(Lorg/yaml/snakeyaml/error/Mark;)V

    .line 203
    return-object v4
.end method

.method protected composeValueNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 246
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lorg/yaml/snakeyaml/nodes/Node;
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lorg/yaml/snakeyaml/composer/Composer;->composeDocument()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSingleNode()Lorg/yaml/snakeyaml/nodes/Node;
    .locals 7

    .line 101
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "document":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v2, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/yaml/snakeyaml/composer/Composer;->composeDocument()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v2, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 115
    return-object v0

    .line 109
    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v1

    .line 110
    .local v1, "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v2, Lorg/yaml/snakeyaml/composer/ComposerException;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/Event;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "expected a single document in the stream"

    const-string v6, "but found another document"

    invoke-direct {v2, v5, v3, v6, v4}, Lorg/yaml/snakeyaml/composer/ComposerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2
.end method
