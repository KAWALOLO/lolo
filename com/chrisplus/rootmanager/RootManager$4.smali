.class Lcom/chrisplus/rootmanager/RootManager$4;
.super Lcom/chrisplus/rootmanager/container/Command;
.source "RootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chrisplus/rootmanager/RootManager;->accessRoot()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chrisplus/rootmanager/RootManager;


# direct methods
.method varargs constructor <init>(Lcom/chrisplus/rootmanager/RootManager;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chrisplus/rootmanager/RootManager;
    .param p2, "commands"    # [Ljava/lang/String;

    .line 563
    iput-object p1, p0, Lcom/chrisplus/rootmanager/RootManager$4;->this$0:Lcom/chrisplus/rootmanager/RootManager;

    invoke-direct {p0, p2}, Lcom/chrisplus/rootmanager/container/Command;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 0
    .param p1, "id"    # I

    .line 575
    return-void
.end method

.method public onUpdate(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 567
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid=0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/chrisplus/rootmanager/RootManager;->access$002(Z)Z

    .line 570
    :cond_0
    return-void
.end method
