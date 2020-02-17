.class final Lcom/chrisplus/rootmanager/utils/Remounter$1;
.super Lcom/chrisplus/rootmanager/container/Command;
.source "Remounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chrisplus/rootmanager/utils/Remounter;->remount(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "commands"    # [Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/chrisplus/rootmanager/container/Command;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 0
    .param p1, "id"    # I

    .line 89
    return-void
.end method

.method public onUpdate(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 84
    return-void
.end method
