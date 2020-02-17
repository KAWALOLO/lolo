.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.super Lorg/yaml/snakeyaml/constructor/BaseConstructor;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlMap;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSeq;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlStr;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSet;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlPairs;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlOmap;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNumber;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBinary;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBool;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNull;
    }
.end annotation


# static fields
.field private static final BOOL_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMESTAMP_REGEXP:Ljava/util/regex/Pattern;

.field private static final YMD_REGEXP:Ljava/util/regex/Pattern;

.field public static final undefinedConstructor:Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->undefinedConstructor:Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->BOOL_VALUES:Ljava/util/Map;

    .line 165
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->BOOL_VALUES:Ljava/util/Map;

    const-string v1, "yes"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->BOOL_VALUES:Ljava/util/Map;

    const-string v1, "no"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->BOOL_VALUES:Ljava/util/Map;

    const-string v1, "true"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->BOOL_VALUES:Ljava/util/Map;

    const-string v1, "false"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->BOOL_VALUES:Ljava/util/Map;

    const-string v1, "on"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->BOOL_VALUES:Ljava/util/Map;

    const-string v1, "off"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "^([0-9][0-9][0-9][0-9])-([0-9][0-9]?)-([0-9][0-9]?)(?:(?:[Tt]|[ \t]+)([0-9][0-9]?):([0-9][0-9]):([0-9][0-9])(?:\\.([0-9]*))?(?:[ \t]*(?:Z|([-+][0-9][0-9]?)(?::([0-9][0-9])?)?))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->TIMESTAMP_REGEXP:Ljava/util/regex/Pattern;

    .line 304
    const-string v0, "^([0-9][0-9][0-9][0-9])-([0-9][0-9]?)-([0-9][0-9]?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->YMD_REGEXP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;-><init>()V

    .line 52
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->NULL:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNull;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNull;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->BOOL:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBool;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBool;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->INT:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBinary;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBinary;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;

    invoke-direct {v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->OMAP:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlOmap;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlOmap;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->PAIRS:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlPairs;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlPairs;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->SET:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSet;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSet;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlStr;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlStr;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSeq;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSeq;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlMap;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlMap;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->undefinedConstructor:Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    sget-object v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->undefinedConstructor:Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    sget-object v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->undefinedConstructor:Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    sget-object v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->undefinedConstructor:Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 47
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->BOOL_VALUES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/yaml/snakeyaml/constructor/SafeConstructor;ILjava/lang/String;I)Ljava/lang/Number;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/constructor/SafeConstructor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->createNumber(ILjava/lang/String;I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/regex/Pattern;
    .locals 1

    .line 47
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->YMD_REGEXP:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .line 47
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->TIMESTAMP_REGEXP:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private createNumber(ILjava/lang/String;I)Ljava/lang/Number;
    .locals 4
    .param p1, "sign"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "radix"    # I

    .line 221
    if-gez p1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 225
    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .local v0, "result":Ljava/lang/Number;
    move-object v1, v0

    goto :goto_0

    .line 226
    .end local v0    # "result":Ljava/lang/Number;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 228
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v1, "result":Ljava/lang/Number;
    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 231
    goto :goto_0

    .line 229
    :catch_1
    move-exception v2

    .line 230
    .local v2, "e1":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p2, p3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v1, v3

    .line 233
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "e1":Ljava/lang/NumberFormatException;
    :goto_0
    return-object v1
.end method

.method private mergeNode(Lorg/yaml/snakeyaml/nodes/MappingNode;ZLjava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .param p2, "isPreffered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/nodes/NodeTuple;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/nodes/NodeTuple;",
            ">;"
        }
    .end annotation

    .line 94
    .local p3, "key2index":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 97
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 99
    .local v8, "nodeTuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v9

    .line 100
    .local v9, "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v10

    .line 101
    .local v10, "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v11

    sget-object v12, Lorg/yaml/snakeyaml/nodes/Tag;->MERGE:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v11, v12}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 102
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 103
    sget-object v11, Lorg/yaml/snakeyaml/constructor/SafeConstructor$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v12

    invoke-virtual {v12}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, 0x0

    packed-switch v11, :pswitch_data_0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .local v16, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    move-object v3, v5

    .local v3, "mn":Lorg/yaml/snakeyaml/nodes/MappingNode;
    move-object v4, v6

    .local v4, "sn":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    move-object v5, v7

    .line 123
    .local v5, "vals":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    new-instance v6, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "expected a mapping or list of mappings for merging, but found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v12

    const-string v13, "while constructing a mapping"

    invoke-direct {v6, v13, v7, v11, v12}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v6

    .line 109
    .end local v16    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .local v3, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .local v5, "mn":Lorg/yaml/snakeyaml/nodes/MappingNode;
    :pswitch_0
    move-object v6, v10

    check-cast v6, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 110
    .local v6, "sn":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v7

    .line 111
    .local v7, "vals":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/yaml/snakeyaml/nodes/Node;

    .line 112
    .local v13, "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v14, v13, Lorg/yaml/snakeyaml/nodes/MappingNode;

    if-eqz v14, :cond_0

    .line 118
    move-object v14, v13

    check-cast v14, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 119
    .local v14, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-direct {v0, v14, v12, v1, v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->mergeNode(Lorg/yaml/snakeyaml/nodes/MappingNode;ZLjava/util/Map;Ljava/util/List;)Ljava/util/List;

    .line 120
    .end local v13    # "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v14    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    goto :goto_1

    .line 113
    .restart local v13    # "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_0
    new-instance v12, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v16    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    const-string v3, "expected a mapping for merging, but found "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v15

    move-object/from16 v17, v4

    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    const-string v4, "while constructing a mapping"

    invoke-direct {v12, v4, v14, v3, v15}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v12

    .line 111
    .end local v13    # "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v16    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v3    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    :cond_1
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 121
    .end local v3    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .restart local v16    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    goto :goto_2

    .line 105
    .end local v5    # "mn":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v6    # "sn":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v7    # "vals":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    .end local v16    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v3    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    :pswitch_1
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v16    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    move-object v5, v10

    check-cast v5, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 106
    .restart local v5    # "mn":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-direct {v0, v5, v12, v1, v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->mergeNode(Lorg/yaml/snakeyaml/nodes/MappingNode;ZLjava/util/Map;Ljava/util/List;)Ljava/util/List;

    .line 107
    nop

    .line 123
    .end local v5    # "mn":Lorg/yaml/snakeyaml/nodes/MappingNode;
    :goto_2
    goto :goto_4

    .line 130
    .end local v16    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v3    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    :cond_2
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v16    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-virtual {v0, v9}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v3

    .line 131
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 132
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 135
    :cond_3
    if-eqz p2, :cond_4

    .line 138
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v3    # "key":Ljava/lang/Object;
    .end local v8    # "nodeTuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v9    # "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v10    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_4
    :goto_3
    move-object v5, v3

    :goto_4
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    .line 97
    .end local v16    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .local v3, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    :cond_5
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 142
    .end local v3    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v16    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V
    .locals 0
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

    .line 146
    .local p2, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->flattenMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)V

    .line 147
    invoke-super {p0, p1, p2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V

    .line 148
    return-void
.end method

.method protected constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V
    .locals 0
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

    .line 152
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->flattenMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)V

    .line 153
    invoke-super {p0, p1, p2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V

    .line 154
    return-void
.end method

.method protected flattenMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)V
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 72
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->isMerged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->mergeNode(Lorg/yaml/snakeyaml/nodes/MappingNode;ZLjava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setValue(Ljava/util/List;)V

    .line 76
    :cond_0
    return-void
.end method
