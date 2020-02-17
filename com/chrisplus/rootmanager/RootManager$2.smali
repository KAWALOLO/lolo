.class Lcom/chrisplus/rootmanager/RootManager$2;
.super Lcom/chrisplus/rootmanager/container/Command;
.source "RootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chrisplus/rootmanager/RootManager;->uninstallPackage(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chrisplus/rootmanager/RootManager;

.field final synthetic val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

.field final synthetic val$infoSb:Ljava/lang/StringBuilder;


# direct methods
.method varargs constructor <init>(Lcom/chrisplus/rootmanager/RootManager;[Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chrisplus/rootmanager/RootManager;
    .param p2, "commands"    # [Ljava/lang/String;

    .line 223
    iput-object p1, p0, Lcom/chrisplus/rootmanager/RootManager$2;->this$0:Lcom/chrisplus/rootmanager/RootManager;

    iput-object p3, p0, Lcom/chrisplus/rootmanager/RootManager$2;->val$infoSb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/chrisplus/rootmanager/RootManager$2;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-direct {p0, p2}, Lcom/chrisplus/rootmanager/container/Command;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2
    .param p1, "id"    # I

    .line 232
    iget-object v0, p0, Lcom/chrisplus/rootmanager/RootManager$2;->val$infoSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "finalInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/chrisplus/rootmanager/RootManager$2;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setUninstallFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    goto :goto_1

    .line 236
    :cond_0
    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/chrisplus/rootmanager/RootManager$2;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setUninstallFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    goto :goto_1

    .line 237
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/chrisplus/rootmanager/RootManager$2;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setUninstallSuccess()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    .line 242
    :goto_1
    return-void
.end method

.method public onUpdate(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/chrisplus/rootmanager/RootManager$2;->val$infoSb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    return-void
.end method
