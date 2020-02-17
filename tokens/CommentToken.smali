.class public Lorg/yaml/snakeyaml/tokens/CommentToken;
.super Lorg/yaml/snakeyaml/tokens/Token;
.source "CommentToken.java"


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 0
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p2, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/tokens/Token;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;
    .locals 1

    .line 27
    sget-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Comment:Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method
