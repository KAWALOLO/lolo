.class public Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;
.super Ljava/lang/Object;
.source "Constructor.java"

# interfaces
.implements Lorg/yaml/snakeyaml/constructor/Construct;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConstructMapping"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/Constructor;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 152
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 153
    .local v0, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    const-class v1, Ljava/util/Properties;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 155
    .local v1, "properties":Ljava/util/Properties;
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V

    .line 160
    return-object v1

    .line 158
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v3, "Properties must not be recursive."

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    .end local v1    # "properties":Ljava/util/Properties;
    :cond_1
    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 163
    .local v1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V

    .line 166
    :cond_2
    return-object v1

    .line 167
    .end local v1    # "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_3
    const-class v1, Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 168
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->createDefaultMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 171
    :cond_4
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 173
    :cond_5
    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 177
    .local v1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V

    .line 179
    return-object v1

    .line 180
    .end local v1    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Object;>;"
    :cond_6
    const-class v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 181
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 182
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->createDefaultSet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 184
    :cond_7
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSet(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 187
    :cond_8
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 188
    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->createEmptyJavaBean(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 190
    :cond_9
    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->createEmptyJavaBean(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->constructJavaBean2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public construct2ndStep(Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "object"    # Ljava/lang/Object;

    .line 197
    const-class v0, Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V

    goto :goto_0

    .line 199
    :cond_0
    const-class v0, Ljava/util/Set;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    move-object v2, p2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V

    goto :goto_0

    .line 202
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-virtual {p0, v0, p2}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->constructJavaBean2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_0
    return-void
.end method

.method protected constructJavaBean2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .param p2, "object"    # Ljava/lang/Object;

    .line 225
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lorg/yaml/snakeyaml/constructor/Constructor;->flattenMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 227
    .local v4, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v5

    .line 228
    .local v5, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    const/4 v0, 0x0

    move-object v7, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 230
    .local v8, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v9

    instance-of v9, v9, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v9, :cond_a

    .line 232
    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v9

    check-cast v9, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 236
    .local v9, "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v10

    .line 238
    .local v10, "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    const-class v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->setType(Ljava/lang/Class;)V

    .line 239
    iget-object v11, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v11, v9}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 241
    .local v11, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v4, v11}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v12

    .line 242
    .local v12, "property":Lorg/yaml/snakeyaml/introspector/Property;
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/yaml/snakeyaml/nodes/Node;->setType(Ljava/lang/Class;)V

    .line 243
    iget-object v13, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v13, v13, Lorg/yaml/snakeyaml/constructor/Constructor;->typeDefinitions:Ljava/util/Map;

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/yaml/snakeyaml/TypeDescription;

    .line 244
    .local v13, "memberDescription":Lorg/yaml/snakeyaml/TypeDescription;
    const/4 v14, 0x0

    .line 245
    .local v14, "typeDetected":Z
    if-eqz v13, :cond_1

    .line 246
    sget-object v15, Lorg/yaml/snakeyaml/constructor/Constructor$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    goto :goto_1

    .line 260
    .local v0, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .local v7, "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :pswitch_0
    move-object v15, v10

    check-cast v15, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 261
    .local v15, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v13, v11}, Lorg/yaml/snakeyaml/TypeDescription;->getMapKeyType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v17, v16

    .line 262
    .local v17, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "keyType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local v0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local v16, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v13, v11}, Lorg/yaml/snakeyaml/TypeDescription;->getMapValueType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v15, v0, v3}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setTypes(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 264
    const/4 v14, 0x1

    goto :goto_1

    .line 248
    .end local v0    # "keyType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v7    # "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v15    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v16    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    :pswitch_1
    move-object v0, v10

    check-cast v0, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 249
    .local v0, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v13, v11}, Lorg/yaml/snakeyaml/TypeDescription;->getListPropertyType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v7, v3

    .line 251
    .restart local v7    # "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-eqz v7, :cond_0

    .line 252
    invoke-virtual {v0, v7}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setListType(Ljava/lang/Class;)V

    .line 253
    const/4 v14, 0x1

    goto :goto_1

    .line 254
    :cond_0
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setListType(Ljava/lang/Class;)V

    .line 256
    const/4 v14, 0x1

    .line 270
    .end local v0    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v7    # "memberType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_1
    :goto_1
    if-nez v14, :cond_6

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v0

    sget-object v3, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-eq v0, v3, :cond_6

    .line 272
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/introspector/Property;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v0

    .line 273
    .local v0, "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_5

    array-length v3, v0

    if-lez v3, :cond_5

    .line 276
    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v3

    sget-object v15, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/16 v16, 0x0

    if-ne v3, v15, :cond_2

    .line 277
    aget-object v3, v0, v16

    .line 278
    .local v3, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v10

    check-cast v7, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 279
    .local v7, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v7, v3}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setListType(Ljava/lang/Class;)V

    .line 280
    .end local v3    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    move-object v7, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    sget-object v15, Lorg/yaml/snakeyaml/nodes/Tag;->SET:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v3, v15}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v15, 0x1

    if-eqz v3, :cond_3

    .line 281
    aget-object v3, v0, v16

    .line 282
    .restart local v3    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v10

    check-cast v7, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 283
    .local v7, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v7, v3}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setOnlyKeyType(Ljava/lang/Class;)V

    .line 284
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setUseClassConstructor(Ljava/lang/Boolean;)V

    .line 285
    .end local v3    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    move-object v7, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v15, Ljava/util/Map;

    invoke-virtual {v3, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 286
    aget-object v3, v0, v16

    .line 287
    .local v3, "ketType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    aget-object v15, v0, v7

    move-object v7, v15

    .line 288
    .local v7, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v15, v10

    check-cast v15, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 289
    .restart local v15    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v15, v3, v7}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setTypes(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 290
    move-object/from16 v17, v0

    const/16 v16, 0x1

    .end local v0    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v17, "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setUseClassConstructor(Ljava/lang/Boolean;)V

    move-object v7, v3

    goto :goto_2

    .line 285
    .end local v3    # "ketType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v17    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v0    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    move-object/from16 v17, v0

    .end local v0    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v17    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_2

    .line 273
    .end local v17    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v0    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    move-object/from16 v17, v0

    .line 298
    .end local v0    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_6
    :goto_2
    iget-object v0, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v0, v10}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v3, v15, :cond_7

    invoke-virtual {v12}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v15, Ljava/lang/Float;

    if-ne v3, v15, :cond_8

    .line 302
    :cond_7
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_8

    .line 303
    move-object v3, v0

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v0, v3

    .line 307
    :cond_8
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v15, Ljava/lang/String;

    if-ne v3, v15, :cond_9

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v15

    invoke-virtual {v3, v15}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    instance-of v3, v0, [B

    if-eqz v3, :cond_9

    .line 308
    new-instance v3, Ljava/lang/String;

    move-object v15, v0

    check-cast v15, [B

    check-cast v15, [B

    invoke-direct {v3, v15}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    .line 311
    :cond_9
    invoke-virtual {v12, v2, v0}, Lorg/yaml/snakeyaml/introspector/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0    # "value":Ljava/lang/Object;
    .end local v12    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    .end local v13    # "memberDescription":Lorg/yaml/snakeyaml/TypeDescription;
    .end local v14    # "typeDetected":Z
    nop

    .line 317
    .end local v8    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v9    # "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v10    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v11    # "key":Ljava/lang/String;
    move-object/from16 v3, p1

    goto/16 :goto_0

    .line 312
    .restart local v8    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .restart local v9    # "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v10    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .restart local v11    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v20, v0

    .line 313
    .local v20, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot create property="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for JavaBean="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v19

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v0

    .line 234
    .end local v9    # "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v10    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v11    # "key":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_a
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keys must be scalars but found: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    :cond_b
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createEmptyJavaBean(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 216
    :try_start_0
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 217
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 218
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 219
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/yaml/snakeyaml/introspector/Property;"
        }
    .end annotation

    .line 322
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v0

    return-object v0
.end method
