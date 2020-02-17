.class Lio/bloco/faker/FakerComponent$1;
.super Ljava/lang/Object;
.source "FakerComponent.java"

# interfaces
.implements Lio/bloco/faker/helpers/StringHelper$StringReplacer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bloco/faker/FakerComponent;->numerify(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bloco/faker/FakerComponent;


# direct methods
.method constructor <init>(Lio/bloco/faker/FakerComponent;)V
    .locals 0
    .param p1, "this$0"    # Lio/bloco/faker/FakerComponent;

    .line 44
    iput-object p1, p0, Lio/bloco/faker/FakerComponent$1;->this$0:Lio/bloco/faker/FakerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public replaceWith(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 1
    .param p1, "matcher"    # Ljava/util/regex/Matcher;

    .line 47
    iget-object v0, p0, Lio/bloco/faker/FakerComponent$1;->this$0:Lio/bloco/faker/FakerComponent;

    iget-object v0, v0, Lio/bloco/faker/FakerComponent;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v0}, Lio/bloco/faker/helpers/RandomHelper;->digit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
