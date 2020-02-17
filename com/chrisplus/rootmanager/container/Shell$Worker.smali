.class public Lcom/chrisplus/rootmanager/container/Shell$Worker;
.super Ljava/lang/Thread;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chrisplus/rootmanager/container/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Worker"
.end annotation


# instance fields
.field public exit:I

.field public shell:Lcom/chrisplus/rootmanager/container/Shell;


# direct methods
.method private constructor <init>(Lcom/chrisplus/rootmanager/container/Shell;)V
    .locals 1
    .param p1, "shell"    # Lcom/chrisplus/rootmanager/container/Shell;

    .line 385
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 382
    const/16 v0, -0x38f

    iput v0, p0, Lcom/chrisplus/rootmanager/container/Shell$Worker;->exit:I

    .line 386
    iput-object p1, p0, Lcom/chrisplus/rootmanager/container/Shell$Worker;->shell:Lcom/chrisplus/rootmanager/container/Shell;

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Lcom/chrisplus/rootmanager/container/Shell;Lcom/chrisplus/rootmanager/container/Shell$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/chrisplus/rootmanager/container/Shell;
    .param p2, "x1"    # Lcom/chrisplus/rootmanager/container/Shell$1;

    .line 380
    invoke-direct {p0, p1}, Lcom/chrisplus/rootmanager/container/Shell$Worker;-><init>(Lcom/chrisplus/rootmanager/container/Shell;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell$Worker;->shell:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v0}, Lcom/chrisplus/rootmanager/container/Shell;->access$200(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    const-string v1, "echo Started\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell$Worker;->shell:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v0}, Lcom/chrisplus/rootmanager/container/Shell;->access$200(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell$Worker;->shell:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v0}, Lcom/chrisplus/rootmanager/container/Shell;->access$600(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 400
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    goto :goto_0

    .line 403
    :cond_0
    const-string v1, "Started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    const/4 v1, 0x1

    iput v1, p0, Lcom/chrisplus/rootmanager/container/Shell$Worker;->exit:I

    .line 405
    nop

    .line 416
    .end local v0    # "line":Ljava/lang/String;
    goto :goto_1

    .line 407
    .restart local v0    # "line":Ljava/lang/String;
    :cond_1
    const-string v1, "unkown error occured."

    invoke-static {v1}, Lcom/chrisplus/rootmanager/container/Shell;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    goto :goto_0

    .line 398
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v0    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, -0x2a

    iput v1, p0, Lcom/chrisplus/rootmanager/container/Shell$Worker;->exit:I

    .line 411
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 412
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chrisplus/rootmanager/container/Shell;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 414
    :cond_3
    const-string v1, "RootAccess denied?."

    invoke-static {v1}, Lcom/chrisplus/rootmanager/container/Shell;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
