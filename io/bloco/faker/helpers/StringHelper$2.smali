.class Lio/bloco/faker/helpers/StringHelper$2;
.super Ljava/lang/Object;
.source "StringHelper.java"

# interfaces
.implements Lio/bloco/faker/helpers/StringHelper$StringReplacer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bloco/faker/helpers/StringHelper;->camelToSnake(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bloco/faker/helpers/StringHelper;


# direct methods
.method constructor <init>(Lio/bloco/faker/helpers/StringHelper;)V
    .locals 0
    .param p1, "this$0"    # Lio/bloco/faker/helpers/StringHelper;

    .line 37
    iput-object p1, p0, Lio/bloco/faker/helpers/StringHelper$2;->this$0:Lio/bloco/faker/helpers/StringHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public replaceWith(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 2
    .param p1, "matcher"    # Ljava/util/regex/Matcher;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
