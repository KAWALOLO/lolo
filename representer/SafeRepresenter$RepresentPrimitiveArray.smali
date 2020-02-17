.class public Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;
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
    name = "RepresentPrimitiveArray"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private asBooleanList(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1, "in"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 295
    move-object v0, p1

    check-cast v0, [Z

    .line 296
    .local v0, "array":[Z
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 298
    aget-boolean v3, v0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private asByteList(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1, "in"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 239
    move-object v0, p1

    check-cast v0, [B

    .line 240
    .local v0, "array":[B
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 242
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private asCharList(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1, "in"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 287
    move-object v0, p1

    check-cast v0, [C

    .line 288
    .local v0, "array":[C
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 290
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private asDoubleList(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .param p1, "in"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 279
    move-object v0, p1

    check-cast v0, [D

    .line 280
    .local v0, "array":[D
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 282
    aget-wide v3, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private asFloatList(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1, "in"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 271
    move-object v0, p1

    check-cast v0, [F

    .line 272
    .local v0, "array":[F
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 274
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private asIntList(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1, "in"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 255
    move-object v0, p1

    check-cast v0, [I

    .line 256
    .local v0, "array":[I
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 258
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private asLongList(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .param p1, "in"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 263
    move-object v0, p1

    check-cast v0, [J

    .line 264
    .local v0, "array":[J
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 266
    aget-wide v3, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private asShortList(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1, "in"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 247
    move-object v0, p1

    check-cast v0, [S

    .line 248
    .local v0, "array":[S
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 250
    aget-short v3, v0, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 217
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 218
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->asByteList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1

    .line 219
    :cond_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    .line 220
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->asShortList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1

    .line 221
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_2

    .line 222
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->asIntList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1

    .line 223
    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_3

    .line 224
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->asLongList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1

    .line 225
    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_4

    .line 226
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->asFloatList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1

    .line 227
    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_5

    .line 228
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->asDoubleList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1

    .line 229
    :cond_5
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_6

    .line 230
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->asCharList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1

    .line 231
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_7

    .line 232
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;->asBooleanList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1

    .line 235
    :cond_7
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected primitive \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
