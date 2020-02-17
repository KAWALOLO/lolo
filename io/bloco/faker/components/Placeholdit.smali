.class public Lio/bloco/faker/components/Placeholdit;
.super Lio/bloco/faker/FakerComponent;
.source "Placeholdit.java"


# static fields
.field private static final HEX_REGEX:Ljava/lang/String; = "((?:^[0-9a-fA-F]{3}$)|(?:^[0-9a-fA-F]{6}$)){1}(?!.*[^0-9a-fA-F])"

.field private static final PLACEHOLDER_URL:Ljava/lang/String; = "https://placehold.it/"

.field private static final SIZE_REGEX:Ljava/lang/String; = "^[0-9]+x[0-9]+$"

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
    .locals 4

    .line 12
    const-string v0, "png"

    const-string v1, "jpg"

    const-string v2, "jpeg"

    const-string v3, "gif"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bloco/faker/components/Placeholdit;->SUPPORTED_FORMATS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 1
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 22
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 23
    new-instance v0, Lio/bloco/faker/helpers/StringHelper;

    invoke-direct {v0}, Lio/bloco/faker/helpers/StringHelper;-><init>()V

    iput-object v0, p0, Lio/bloco/faker/components/Placeholdit;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    .line 24
    return-void
.end method


# virtual methods
.method public image()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, "300x300"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Placeholdit;->image(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # Ljava/lang/String;

    .line 31
    const-string v0, "png"

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Placeholdit;->image(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/bloco/faker/components/Placeholdit;->image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "backgroundColor"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/bloco/faker/components/Placeholdit;->image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "backgroundColor"    # Ljava/lang/String;
    .param p4, "textColor"    # Ljava/lang/String;

    .line 43
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/bloco/faker/components/Placeholdit;->image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "size"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "backgroundColor"    # Ljava/lang/String;
    .param p4, "textColor"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;

    .line 49
    const-string v0, "^[0-9]+x[0-9]+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 53
    sget-object v0, Lio/bloco/faker/components/Placeholdit;->SUPPORTED_FORMATS:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 58
    if-eqz p3, :cond_1

    const-string v0, "((?:^[0-9a-fA-F]{3}$)|(?:^[0-9a-fA-F]{6}$)){1}(?!.*[^0-9a-fA-F])"

    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "backgroundColor must be a hex value without \'#\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    :goto_0
    if-nez p3, :cond_3

    if-nez p4, :cond_2

    goto :goto_1

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "backgroundColor must be used with the textColor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_3
    :goto_1
    if-eqz p4, :cond_5

    const-string v0, "((?:^[0-9a-fA-F]{3}$)|(?:^[0-9a-fA-F]{6}$)){1}(?!.*[^0-9a-fA-F])"

    invoke-virtual {p4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 67
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textColor must be a hex value without \'#\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://placehold.it/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "imageUrl":Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_6
    if-eqz p4, :cond_7

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_7
    if-eqz p5, :cond_8

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_8
    return-object v0

    .line 54
    .end local v0    # "imageUrl":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported formats are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bloco/faker/components/Placeholdit;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    sget-object v3, Lio/bloco/faker/components/Placeholdit;->SUPPORTED_FORMATS:Ljava/util/List;

    .line 55
    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Lio/bloco/faker/helpers/StringHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size should be specified in format 300x300"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
