.class public Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;
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
    name = "RepresentString"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 113
    .local v0, "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v1, 0x0

    .line 114
    .local v1, "style":Ljava/lang/Character;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "value":Ljava/lang/String;
    sget-object v3, Lorg/yaml/snakeyaml/reader/StreamReader;->NON_PRINTABLE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/16 v4, 0x7c

    if-eqz v3, :cond_0

    .line 116
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 119
    const/4 v3, 0x0

    :try_start_0
    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encode([B)[C

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .local v3, "binary":[C
    nop

    .line 123
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_0

    .line 120
    .end local v3    # "binary":[C
    :catch_0
    move-exception v4

    .line 121
    .restart local v3    # "binary":[C
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v5, v4}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 128
    .end local v3    # "binary":[C
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    iget-object v3, v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->defaultScalarStyle:Ljava/lang/Character;

    if-nez v3, :cond_1

    sget-object v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->MULTILINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 131
    :cond_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-virtual {v3, v0, v2, v1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Ljava/lang/Character;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v3

    return-object v3
.end method
