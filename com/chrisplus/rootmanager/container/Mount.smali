.class public Lcom/chrisplus/rootmanager/container/Mount;
.super Ljava/lang/Object;
.source "Mount.java"


# instance fields
.field final mDevice:Ljava/io/File;

.field final mFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mMountPoint:Ljava/io/File;

.field final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "device"    # Ljava/io/File;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "flagsStr"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/chrisplus/rootmanager/container/Mount;->mDevice:Ljava/io/File;

    .line 38
    iput-object p2, p0, Lcom/chrisplus/rootmanager/container/Mount;->mMountPoint:Ljava/io/File;

    .line 39
    iput-object p3, p0, Lcom/chrisplus/rootmanager/container/Mount;->mType:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Mount;->mFlags:Ljava/util/Set;

    .line 41
    return-void
.end method


# virtual methods
.method public getDevice()Ljava/io/File;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Mount;->mDevice:Ljava/io/File;

    return-object v0
.end method

.method public getFlags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Mount;->mFlags:Ljava/util/Set;

    return-object v0
.end method

.method public getMountPoint()Ljava/io/File;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Mount;->mMountPoint:Ljava/io/File;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Mount;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 61
    const-string v0, "%s on %s type %s %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Mount;->mDevice:Ljava/io/File;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Mount;->mMountPoint:Ljava/io/File;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Mount;->mType:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Mount;->mFlags:Ljava/util/Set;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
