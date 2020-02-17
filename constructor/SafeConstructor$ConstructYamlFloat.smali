.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstructYamlFloat"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 16
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    move-object/from16 v2, p1

    check-cast v2, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x1

    .line 240
    .local v2, "sign":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 241
    .local v3, "first":C
    const/4 v4, 0x1

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_0

    .line 242
    const/4 v2, -0x1

    .line 243
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 244
    :cond_0
    const/16 v5, 0x2b

    if-ne v3, v5, :cond_1

    .line 245
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "valLower":Ljava/lang/String;
    const-string v6, ".inf"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_3

    .line 249
    new-instance v4, Ljava/lang/Double;

    if-ne v2, v7, :cond_2

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1

    :cond_2
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1
    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 250
    :cond_3
    const-string v6, ".nan"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 251
    new-instance v4, Ljava/lang/Double;

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 252
    :cond_4
    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_6

    .line 253
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "digits":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 255
    .local v7, "bes":I
    const-wide/16 v8, 0x0

    .line 256
    .local v8, "val":D
    const/4 v10, 0x0

    .local v10, "i":I
    array-length v11, v6

    .local v11, "j":I
    :goto_2
    if-ge v10, v11, :cond_5

    .line 257
    sub-int v12, v11, v10

    sub-int/2addr v12, v4

    aget-object v12, v6, v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    int-to-double v14, v7

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    add-double/2addr v8, v12

    .line 258
    mul-int/lit8 v7, v7, 0x3c

    .line 256
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 260
    .end local v10    # "i":I
    .end local v11    # "j":I
    :cond_5
    new-instance v4, Ljava/lang/Double;

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    invoke-direct {v4, v10, v11}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 262
    .end local v6    # "digits":[Ljava/lang/String;
    .end local v7    # "bes":I
    .end local v8    # "val":D
    :cond_6
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 263
    .local v4, "d":Ljava/lang/Double;
    new-instance v6, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    int-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-direct {v6, v7, v8}, Ljava/lang/Double;-><init>(D)V

    return-object v6
.end method
