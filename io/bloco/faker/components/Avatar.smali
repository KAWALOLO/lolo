.class public Lio/bloco/faker/components/Avatar;
.super Lio/bloco/faker/FakerComponent;
.source "Avatar.java"


# static fields
.field private static final AVATAR_URL:Ljava/lang/String; = "https://robohash.org/"

.field public static final SUPPORTED_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final stringHelper:Lio/bloco/faker/helpers/StringHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    const-string v0, "png"

    const-string v1, "jpg"

    const-string v2, "bmp"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bloco/faker/components/Avatar;->SUPPORTED_FORMATS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 1
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 19
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 20
    new-instance v0, Lio/bloco/faker/helpers/StringHelper;

    invoke-direct {v0}, Lio/bloco/faker/helpers/StringHelper;-><init>()V

    iput-object v0, p0, Lio/bloco/faker/components/Avatar;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    .line 21
    return-void
.end method


# virtual methods
.method public image()Ljava/lang/String;
    .locals 1

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Avatar;->image(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slug"    # Ljava/lang/String;

    .line 28
    const-string v0, "300x300"

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Avatar;->image(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slug"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;

    .line 32
    const-string v0, "png"

    invoke-virtual {p0, p1, p2, v0}, Lio/bloco/faker/components/Avatar;->image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slug"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;

    .line 36
    const-string v0, "set1"

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/bloco/faker/components/Avatar;->image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "slug"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "set"    # Ljava/lang/String;

    .line 40
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/bloco/faker/components/Avatar;->image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "slug"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "set"    # Ljava/lang/String;
    .param p5, "bgset"    # Ljava/lang/String;

    .line 44
    const-string v0, "^[0-9]+x[0-9]+$"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    sget-object v0, Lio/bloco/faker/components/Avatar;->SUPPORTED_FORMATS:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string p1, "image"

    .line 57
    :cond_0
    if-eqz p5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&bgset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 59
    .local v0, "bgset_query":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://robohash.org/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&set="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 49
    .end local v0    # "bgset_query":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported formats are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bloco/faker/components/Avatar;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    sget-object v3, Lio/bloco/faker/components/Avatar;->SUPPORTED_FORMATS:Ljava/util/List;

    .line 50
    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Lio/bloco/faker/helpers/StringHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size should be specified in format 300x300"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
