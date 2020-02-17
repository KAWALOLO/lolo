.class public abstract Lorg/yaml/snakeyaml/representer/BaseRepresenter;
.super Ljava/lang/Object;
.source "BaseRepresenter.java"


# instance fields
.field protected defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field protected defaultScalarStyle:Ljava/lang/Character;

.field private explicitPropertyUtils:Z

.field protected final multiRepresenters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/yaml/snakeyaml/representer/Represent;",
            ">;"
        }
    .end annotation
.end field

.field protected nullRepresenter:Lorg/yaml/snakeyaml/representer/Represent;

.field protected objectToRepresent:Ljava/lang/Object;

.field private propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

.field protected final representedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected final representers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/yaml/snakeyaml/representer/Represent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    .line 50
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 51
    new-instance v0, Lorg/yaml/snakeyaml/representer/BaseRepresenter$1;

    invoke-direct {v0, p0}, Lorg/yaml/snakeyaml/representer/BaseRepresenter$1;-><init>(Lorg/yaml/snakeyaml/representer/BaseRepresenter;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->explicitPropertyUtils:Z

    return-void
.end method


# virtual methods
.method public getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method

.method public final getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    return-object v0
.end method

.method public final isExplicitPropertyUtils()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->explicitPropertyUtils:Z

    return v0
.end method

.method public represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 65
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    .line 67
    return-object v0
.end method

.method protected final representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/Node;

    .line 75
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v0

    .line 79
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 80
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->nullRepresenter:Lorg/yaml/snakeyaml/representer/Represent;

    invoke-interface {v1, v0}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 81
    .restart local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v0

    .line 85
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 86
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 88
    .local v0, "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 89
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1

    .line 91
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 92
    .local v3, "repr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 94
    .local v0, "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v4

    .line 95
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v4

    .end local v0    # "representer":Lorg/yaml/snakeyaml/representer/Represent;
    .end local v3    # "repr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_3
    goto :goto_0

    .line 100
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 102
    .restart local v0    # "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 103
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1

    .line 104
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_5
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 105
    .local v0, "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 108
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    :goto_1
    return-object v0
.end method

.method protected representMapping(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/Map;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 8
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p3, "flowStyle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/Node;"
        }
    .end annotation

    .line 150
    .local p2, "mapping":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    new-instance v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-direct {v1, p1, v0, p3}, Lorg/yaml/snakeyaml/nodes/MappingNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 152
    .local v1, "node":Lorg/yaml/snakeyaml/nodes/MappingNode;
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/4 v2, 0x1

    .line 154
    .local v2, "bestStyle":Z
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 155
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    .line 156
    .local v5, "nodeKey":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    .line 157
    .local v6, "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v7, v5, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v7, :cond_0

    move-object v7, v5

    check-cast v7, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStyle()Ljava/lang/Character;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 158
    :cond_0
    const/4 v2, 0x0

    .line 160
    :cond_1
    instance-of v7, v6, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStyle()Ljava/lang/Character;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 161
    :cond_2
    const/4 v2, 0x0

    .line 163
    :cond_3
    new-instance v7, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    invoke-direct {v7, v5, v6}, Lorg/yaml/snakeyaml/nodes/NodeTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v5    # "nodeKey":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v6    # "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_0

    .line 165
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    if-nez p3, :cond_6

    .line 166
    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    sget-object v4, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    if-eq v3, v4, :cond_5

    .line 167
    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->getStyleBoolean()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setFlowStyle(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 169
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setFlowStyle(Ljava/lang/Boolean;)V

    .line 172
    :cond_6
    :goto_1
    return-object v1
.end method

.method protected representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "value"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Ljava/lang/Character;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method protected representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Ljava/lang/Character;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 7
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "style"    # Ljava/lang/Character;

    .line 112
    if-nez p3, :cond_0

    .line 113
    iget-object p3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultScalarStyle:Ljava/lang/Character;

    .line 115
    :cond_0
    new-instance v6, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/nodes/ScalarNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Character;)V

    .line 116
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v0
.end method

.method protected representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 8
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p3, "flowStyle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/Node;"
        }
    .end annotation

    .line 124
    .local p2, "sequence":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/16 v0, 0xa

    .line 125
    .local v0, "size":I
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 126
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 128
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .local v1, "value":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    new-instance v2, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    invoke-direct {v2, p1, v1, p3}, Lorg/yaml/snakeyaml/nodes/SequenceNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 130
    .local v2, "node":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/4 v3, 0x1

    .line 132
    .local v3, "bestStyle":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 133
    .local v5, "item":Ljava/lang/Object;
    invoke-virtual {p0, v5}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    .line 134
    .local v6, "nodeItem":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v7, v6, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStyle()Ljava/lang/Character;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 135
    :cond_1
    const/4 v3, 0x0

    .line 137
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v5    # "item":Ljava/lang/Object;
    .end local v6    # "nodeItem":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_0

    .line 139
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    if-nez p3, :cond_5

    .line 140
    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    sget-object v5, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    if-eq v4, v5, :cond_4

    .line 141
    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->getStyleBoolean()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setFlowStyle(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 143
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setFlowStyle(Ljava/lang/Boolean;)V

    .line 146
    :cond_5
    :goto_1
    return-object v2
.end method

.method public setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .locals 0
    .param p1, "defaultFlowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 180
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 181
    return-void
.end method

.method public setDefaultScalarStyle(Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V
    .locals 1
    .param p1, "defaultStyle"    # Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 176
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->getChar()Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultScalarStyle:Ljava/lang/Character;

    .line 177
    return-void
.end method

.method public setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V
    .locals 1
    .param p1, "propertyUtils"    # Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 188
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->explicitPropertyUtils:Z

    .line 190
    return-void
.end method
