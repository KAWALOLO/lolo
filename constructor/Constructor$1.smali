.class synthetic Lorg/yaml/snakeyaml/constructor/Constructor$1;
.super Ljava/lang/Object;
.source "Constructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 246
    invoke-static {}, Lorg/yaml/snakeyaml/nodes/NodeId;->values()[Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/yaml/snakeyaml/constructor/Constructor$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    :try_start_0
    sget-object v0, Lorg/yaml/snakeyaml/constructor/Constructor$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/yaml/snakeyaml/constructor/Constructor$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
