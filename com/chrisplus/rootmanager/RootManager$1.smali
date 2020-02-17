.class Lcom/chrisplus/rootmanager/RootManager$1;
.super Lcom/chrisplus/rootmanager/container/Command;
.source "RootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chrisplus/rootmanager/RootManager;->installPackage(Ljava/lang/String;Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;
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

    .line 147
    iput-object p1, p0, Lcom/chrisplus/rootmanager/RootManager$1;->this$0:Lcom/chrisplus/rootmanager/RootManager;

    iput-object p3, p0, Lcom/chrisplus/rootmanager/RootManager$1;->val$infoSb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/chrisplus/rootmanager/RootManager$1;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-direct {p0, p2}, Lcom/chrisplus/rootmanager/container/Command;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2
    .param p1, "id"    # I

    .line 156
    iget-object v0, p0, Lcom/chrisplus/rootmanager/RootManager$1;->val$infoSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "finalInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/chrisplus/rootmanager/RootManager$1;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setInstallFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    goto :goto_2

    .line 160
    :cond_0
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/chrisplus/rootmanager/RootManager$1;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setInstallFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    goto :goto_2

    .line 163
    :cond_3
    :goto_0
    const-string v1, "FAILED_INSUFFICIENT_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Lcom/chrisplus/rootmanager/RootManager$1;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setInsallFailedNoSpace()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    goto :goto_2

    .line 165
    :cond_4
    const-string v1, "FAILED_INCONSISTENT_CERTIFICATES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 166
    iget-object v1, p0, Lcom/chrisplus/rootmanager/RootManager$1;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setInstallFailedWrongCer()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    goto :goto_2

    .line 167
    :cond_5
    const-string v1, "FAILED_CONTAINER_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    iget-object v1, p0, Lcom/chrisplus/rootmanager/RootManager$1;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setInstallFailedWrongCer()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    goto :goto_2

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/chrisplus/rootmanager/RootManager$1;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setInstallFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    goto :goto_2

    .line 161
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/chrisplus/rootmanager/RootManager$1;->val$builder:Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setInstallSuccess()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    .line 177
    :goto_2
    return-void
.end method

.method public onUpdate(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/chrisplus/rootmanager/RootManager$1;->val$infoSb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    return-void
.end method
