.class Lio/bloco/faker/helpers/StringHelper$1;
.super Ljava/lang/Object;
.source "StringHelper.java"

# interfaces
.implements Lio/bloco/faker/helpers/StringHelper$StringReplacer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bloco/faker/helpers/StringHelper;->snakeToCamel(Ljava/lang/String;)Ljava/lang/String;
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

    .line 27
    iput-object p1, p0, Lio/bloco/faker/helpers/StringHelper$1;->this$0:Lio/bloco/faker/helpers/StringHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public replaceWith(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 2
    .param p1, "matcher"    # Ljava/util/regex/Matcher;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "letter":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
