.class public Lcom/chrisplus/rootmanager/container/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chrisplus/rootmanager/container/Shell$Worker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static customShell:Lcom/chrisplus/rootmanager/container/Shell; = null

.field private static error:Ljava/lang/String; = null

.field private static rootShell:Lcom/chrisplus/rootmanager/container/Shell; = null

.field private static shellTimeout:I = 0x0

.field private static final token:Ljava/lang/String; = "F*D^W@#FGF"


# instance fields
.field private close:Z

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chrisplus/rootmanager/container/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final errorStream:Ljava/io/BufferedReader;

.field private input:Ljava/lang/Runnable;

.field private final inputStream:Ljava/io/BufferedReader;

.field private output:Ljava/lang/Runnable;

.field private final outputStream:Ljava/io/OutputStreamWriter;

.field private final proc:Ljava/lang/Process;

.field private read:I

.field private write:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/chrisplus/rootmanager/container/Shell;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chrisplus/rootmanager/container/Shell;->TAG:Ljava/lang/String;

    .line 22
    const/16 v0, 0x2710

    sput v0, Lcom/chrisplus/rootmanager/container/Shell;->shellTimeout:I

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/chrisplus/rootmanager/container/Shell;->error:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/chrisplus/rootmanager/container/Shell;->rootShell:Lcom/chrisplus/rootmanager/container/Shell;

    .line 26
    sput-object v0, Lcom/chrisplus/rootmanager/container/Shell;->customShell:Lcom/chrisplus/rootmanager/container/Shell;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/chrisplus/rootmanager/exception/PermissionException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->close:Z

    .line 39
    new-instance v0, Lcom/chrisplus/rootmanager/container/Shell$1;

    invoke-direct {v0, p0}, Lcom/chrisplus/rootmanager/container/Shell$1;-><init>(Lcom/chrisplus/rootmanager/container/Shell;)V

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->input:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Lcom/chrisplus/rootmanager/container/Shell$2;

    invoke-direct {v0, p0}, Lcom/chrisplus/rootmanager/container/Shell$2;-><init>(Lcom/chrisplus/rootmanager/container/Shell;)V

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->output:Ljava/lang/Runnable;

    .line 73
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting shell: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->proc:Ljava/lang/Process;

    .line 77
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->inputStream:Ljava/io/BufferedReader;

    .line 78
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->errorStream:Ljava/io/BufferedReader;

    .line 79
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    .line 81
    new-instance v0, Lcom/chrisplus/rootmanager/container/Shell$Worker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chrisplus/rootmanager/container/Shell$Worker;-><init>(Lcom/chrisplus/rootmanager/container/Shell;Lcom/chrisplus/rootmanager/container/Shell$1;)V

    .line 82
    .local v0, "worker":Lcom/chrisplus/rootmanager/container/Shell$Worker;
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Shell$Worker;->start()V

    .line 85
    :try_start_0
    sget v1, Lcom/chrisplus/rootmanager/container/Shell;->shellTimeout:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/chrisplus/rootmanager/container/Shell$Worker;->join(J)V

    .line 86
    iget v1, v0, Lcom/chrisplus/rootmanager/container/Shell$Worker;->exit:I

    const/16 v2, -0x38f

    if-eq v1, v2, :cond_1

    .line 93
    iget v1, v0, Lcom/chrisplus/rootmanager/container/Shell$Worker;->exit:I

    const/16 v2, -0x2a

    if-eq v1, v2, :cond_0

    .line 100
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Shell;->input:Ljava/lang/Runnable;

    const-string v3, "Shell Input"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 101
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Shell;->output:Ljava/lang/Runnable;

    const-string v3, "Shell Output"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 107
    nop

    .line 108
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 95
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->inputStream:Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Lcom/chrisplus/rootmanager/container/Shell;->closeReader(Ljava/io/Reader;)V

    .line 96
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->errorStream:Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Lcom/chrisplus/rootmanager/container/Shell;->closeReader(Ljava/io/Reader;)V

    .line 97
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    invoke-direct {p0, v1}, Lcom/chrisplus/rootmanager/container/Shell;->closeWriter(Ljava/io/Writer;)V

    .line 98
    new-instance v1, Lcom/chrisplus/rootmanager/exception/PermissionException;

    const-string v2, "Root Access Denied"

    invoke-direct {v1, v2}, Lcom/chrisplus/rootmanager/exception/PermissionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "worker":Lcom/chrisplus/rootmanager/container/Shell$Worker;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v1

    .line 87
    .restart local v0    # "worker":Lcom/chrisplus/rootmanager/container/Shell$Worker;
    .restart local p1    # "cmd":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 88
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->inputStream:Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Lcom/chrisplus/rootmanager/container/Shell;->closeReader(Ljava/io/Reader;)V

    .line 89
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->inputStream:Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Lcom/chrisplus/rootmanager/container/Shell;->closeReader(Ljava/io/Reader;)V

    .line 90
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    invoke-direct {p0, v1}, Lcom/chrisplus/rootmanager/container/Shell;->closeWriter(Ljava/io/Writer;)V

    .line 91
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    sget-object v2, Lcom/chrisplus/rootmanager/container/Shell;->error:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local v0    # "worker":Lcom/chrisplus/rootmanager/container/Shell$Worker;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .restart local v0    # "worker":Lcom/chrisplus/rootmanager/container/Shell$Worker;
    .restart local p1    # "cmd":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Shell$Worker;->interrupt()V

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 106
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2
.end method

.method static synthetic access$000(Lcom/chrisplus/rootmanager/container/Shell;)V
    .locals 0
    .param p0, "x0"    # Lcom/chrisplus/rootmanager/container/Shell;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/chrisplus/rootmanager/container/Shell;->writeCommands()V

    return-void
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 18
    sput-object p0, Lcom/chrisplus/rootmanager/container/Shell;->error:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/chrisplus/rootmanager/container/Shell;I)I
    .locals 0
    .param p0, "x0"    # Lcom/chrisplus/rootmanager/container/Shell;
    .param p1, "x1"    # I

    .line 18
    iput p1, p0, Lcom/chrisplus/rootmanager/container/Shell;->write:I

    return p1
.end method

.method static synthetic access$200(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/OutputStreamWriter;
    .locals 1
    .param p0, "x0"    # Lcom/chrisplus/rootmanager/container/Shell;

    .line 18
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/chrisplus/rootmanager/container/Shell;Ljava/io/Writer;)V
    .locals 0
    .param p0, "x0"    # Lcom/chrisplus/rootmanager/container/Shell;
    .param p1, "x1"    # Ljava/io/Writer;

    .line 18
    invoke-direct {p0, p1}, Lcom/chrisplus/rootmanager/container/Shell;->closeWriter(Ljava/io/Writer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/chrisplus/rootmanager/container/Shell;)V
    .locals 0
    .param p0, "x0"    # Lcom/chrisplus/rootmanager/container/Shell;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/chrisplus/rootmanager/container/Shell;->readOutput()V

    return-void
.end method

.method static synthetic access$502(Lcom/chrisplus/rootmanager/container/Shell;I)I
    .locals 0
    .param p0, "x0"    # Lcom/chrisplus/rootmanager/container/Shell;
    .param p1, "x1"    # I

    .line 18
    iput p1, p0, Lcom/chrisplus/rootmanager/container/Shell;->read:I

    return p1
.end method

.method static synthetic access$600(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/BufferedReader;
    .locals 1
    .param p0, "x0"    # Lcom/chrisplus/rootmanager/container/Shell;

    .line 18
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->inputStream:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/chrisplus/rootmanager/container/Shell;Ljava/io/Reader;)V
    .locals 0
    .param p0, "x0"    # Lcom/chrisplus/rootmanager/container/Shell;
    .param p1, "x1"    # Ljava/io/Reader;

    .line 18
    invoke-direct {p0, p1}, Lcom/chrisplus/rootmanager/container/Shell;->closeReader(Ljava/io/Reader;)V

    return-void
.end method

.method static synthetic access$800(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/BufferedReader;
    .locals 1
    .param p0, "x0"    # Lcom/chrisplus/rootmanager/container/Shell;

    .line 18
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->errorStream:Ljava/io/BufferedReader;

    return-object v0
.end method

.method public static closeAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Shell;->closeRootShell()V

    .line 190
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Shell;->closeCustomShell()V

    .line 191
    return-void
.end method

.method public static closeCustomShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->customShell:Lcom/chrisplus/rootmanager/container/Shell;

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Shell;->close()V

    .line 179
    return-void
.end method

.method private closeReader(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .line 230
    if-eqz p1, :cond_0

    .line 232
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeRootShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->rootShell:Lcom/chrisplus/rootmanager/container/Shell;

    if-nez v0, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Shell;->close()V

    .line 186
    return-void
.end method

.method private closeWriter(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .line 220
    if-eqz p1, :cond_0

    .line 222
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static getOpenShell()Lcom/chrisplus/rootmanager/container/Shell;
    .locals 1

    .line 111
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->rootShell:Lcom/chrisplus/rootmanager/container/Shell;

    if-eqz v0, :cond_0

    .line 112
    return-object v0

    .line 113
    :cond_0
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->customShell:Lcom/chrisplus/rootmanager/container/Shell;

    if-eqz v0, :cond_1

    .line 114
    return-object v0

    .line 116
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isAnyShellOpen()Z
    .locals 2

    .line 210
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->rootShell:Lcom/chrisplus/rootmanager/container/Shell;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 211
    return v1

    .line 212
    :cond_0
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->customShell:Lcom/chrisplus/rootmanager/container/Shell;

    if-eqz v0, :cond_1

    .line 213
    return v1

    .line 215
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isCustomShellOpen()Z
    .locals 1

    .line 194
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->customShell:Lcom/chrisplus/rootmanager/container/Shell;

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isRootShellOpen()Z
    .locals 1

    .line 202
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->rootShell:Lcom/chrisplus/rootmanager/container/Shell;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private readError(Lcom/chrisplus/rootmanager/container/Command;)V
    .locals 2
    .param p1, "command"    # Lcom/chrisplus/rootmanager/container/Command;

    .line 331
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->errorStream:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->errorStream:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 334
    goto :goto_1

    .line 336
    :cond_0
    invoke-virtual {p1}, Lcom/chrisplus/rootmanager/container/Command;->getID()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/chrisplus/rootmanager/container/Command;->onUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "line":Ljava/lang/String;
    goto :goto_0

    .line 340
    :cond_1
    :goto_1
    goto :goto_2

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 341
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private readOutput()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "command":Lcom/chrisplus/rootmanager/container/Command;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 271
    goto :goto_1

    .line 273
    :cond_1
    if-nez v0, :cond_5

    .line 274
    iget v3, p0, Lcom/chrisplus/rootmanager/container/Shell;->read:I

    iget-object v4, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 275
    iget-boolean v3, p0, Lcom/chrisplus/rootmanager/container/Shell;->close:Z

    if-eqz v3, :cond_0

    .line 276
    nop

    .line 314
    .end local v1    # "line":Ljava/lang/String;
    :goto_1
    const-string v1, "Read all output"

    invoke-static {v1}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 316
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 317
    const-string v1, "Shell destroyed"

    invoke-static {v1}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 319
    :goto_2
    iget v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->read:I

    iget-object v3, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 320
    if-nez v0, :cond_2

    .line 321
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    iget v3, p0, Lcom/chrisplus/rootmanager/container/Shell;->read:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/chrisplus/rootmanager/container/Command;

    .line 323
    :cond_2
    const-string v1, "Unexpected Termination."

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/container/Command;->terminate(Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x0

    .line 325
    iget v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->read:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->read:I

    goto :goto_2

    .line 327
    :cond_3
    return-void

    .line 280
    .restart local v1    # "line":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    iget v4, p0, Lcom/chrisplus/rootmanager/container/Shell;->read:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/chrisplus/rootmanager/container/Command;

    .line 283
    :cond_5
    const-string v3, "F*D^W@#FGF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 284
    .local v3, "pos":I
    if-lez v3, :cond_6

    .line 285
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Command;->getID()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/chrisplus/rootmanager/container/Command;->onUpdate(ILjava/lang/String;)V

    .line 287
    :cond_6
    if-ltz v3, :cond_7

    .line 288
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "fields":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_7

    aget-object v5, v4, v2

    if-eqz v5, :cond_7

    .line 291
    const/4 v5, 0x0

    .line 293
    .local v5, "id":I
    :try_start_0
    aget-object v7, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 295
    goto :goto_3

    .line 294
    :catch_0
    move-exception v7

    .line 296
    :goto_3
    const/4 v7, -0x1

    .line 299
    .local v7, "exitCode":I
    :try_start_1
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v7, v6

    .line 302
    goto :goto_4

    .line 300
    :catch_1
    move-exception v6

    .line 301
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 303
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_4
    iget v6, p0, Lcom/chrisplus/rootmanager/container/Shell;->read:I

    if-ne v5, v6, :cond_7

    .line 304
    invoke-direct {p0, v0}, Lcom/chrisplus/rootmanager/container/Shell;->readError(Lcom/chrisplus/rootmanager/container/Command;)V

    .line 305
    invoke-virtual {v0, v7}, Lcom/chrisplus/rootmanager/container/Command;->setExitCode(I)V

    .line 306
    iget v6, p0, Lcom/chrisplus/rootmanager/container/Shell;->read:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/chrisplus/rootmanager/container/Shell;->read:I

    .line 307
    const/4 v0, 0x0

    .line 308
    goto/16 :goto_0

    .line 312
    .end local v4    # "fields":[Ljava/lang/String;
    .end local v5    # "id":I
    .end local v7    # "exitCode":I
    :cond_7
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Command;->getID()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/chrisplus/rootmanager/container/Command;->onUpdate(ILjava/lang/String;)V

    .line 313
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "pos":I
    goto/16 :goto_0
.end method

.method public static runRootCommand(Lcom/chrisplus/rootmanager/container/Command;)V
    .locals 1
    .param p0, "command"    # Lcom/chrisplus/rootmanager/container/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/chrisplus/rootmanager/exception/PermissionException;
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Shell;->startRootShell()Lcom/chrisplus/rootmanager/container/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chrisplus/rootmanager/container/Shell;->add(Lcom/chrisplus/rootmanager/container/Command;)Lcom/chrisplus/rootmanager/container/Command;

    .line 172
    return-void
.end method

.method public static startCustomShell(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Shell;
    .locals 1
    .param p0, "shellPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/chrisplus/rootmanager/exception/PermissionException;
        }
    .end annotation

    .line 152
    sget v0, Lcom/chrisplus/rootmanager/container/Shell;->shellTimeout:I

    invoke-static {p0, v0}, Lcom/chrisplus/rootmanager/container/Shell;->startCustomShell(Ljava/lang/String;I)Lcom/chrisplus/rootmanager/container/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startCustomShell(Ljava/lang/String;I)Lcom/chrisplus/rootmanager/container/Shell;
    .locals 1
    .param p0, "shellPath"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/chrisplus/rootmanager/exception/PermissionException;
        }
    .end annotation

    .line 157
    sput p1, Lcom/chrisplus/rootmanager/container/Shell;->shellTimeout:I

    .line 159
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->customShell:Lcom/chrisplus/rootmanager/container/Shell;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "Starting Custom Shell!"

    invoke-static {v0}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/chrisplus/rootmanager/container/Shell;

    invoke-direct {v0, p0}, Lcom/chrisplus/rootmanager/container/Shell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Shell;->customShell:Lcom/chrisplus/rootmanager/container/Shell;

    goto :goto_0

    .line 163
    :cond_0
    const-string v0, "Using Existing Custom Shell!"

    invoke-static {v0}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 166
    :goto_0
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->customShell:Lcom/chrisplus/rootmanager/container/Shell;

    return-object v0
.end method

.method public static startRootShell()Lcom/chrisplus/rootmanager/container/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/chrisplus/rootmanager/exception/PermissionException;
        }
    .end annotation

    .line 121
    sget v0, Lcom/chrisplus/rootmanager/container/Shell;->shellTimeout:I

    invoke-static {v0}, Lcom/chrisplus/rootmanager/container/Shell;->startRootShell(I)Lcom/chrisplus/rootmanager/container/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static startRootShell(I)Lcom/chrisplus/rootmanager/container/Shell;
    .locals 5
    .param p0, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/chrisplus/rootmanager/exception/PermissionException;
        }
    .end annotation

    .line 126
    sput p0, Lcom/chrisplus/rootmanager/container/Shell;->shellTimeout:I

    .line 128
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->rootShell:Lcom/chrisplus/rootmanager/container/Shell;

    if-nez v0, :cond_2

    .line 129
    const-string v0, "Starting Root Shell!"

    invoke-static {v0}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 130
    const-string v0, "su"

    .line 132
    .local v0, "cmd":Ljava/lang/String;
    const/4 v1, 0x0

    .line 133
    .local v1, "retries":I
    :goto_0
    sget-object v2, Lcom/chrisplus/rootmanager/container/Shell;->rootShell:Lcom/chrisplus/rootmanager/container/Shell;

    if-nez v2, :cond_1

    .line 135
    :try_start_0
    new-instance v2, Lcom/chrisplus/rootmanager/container/Shell;

    invoke-direct {v2, v0}, Lcom/chrisplus/rootmanager/container/Shell;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/chrisplus/rootmanager/container/Shell;->rootShell:Lcom/chrisplus/rootmanager/container/Shell;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/io/IOException;
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "retries":I
    .local v3, "retries":I
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    .line 141
    .end local v2    # "e":Ljava/io/IOException;
    move v1, v3

    goto :goto_0

    .line 138
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_0
    const-string v1, "Could not start shell"

    invoke-static {v1}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 139
    throw v2

    .line 143
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "retries":I
    :cond_1
    goto :goto_1

    .line 144
    :cond_2
    const-string v0, "Using Existing Root Shell!"

    invoke-static {v0}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 147
    :goto_1
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->rootShell:Lcom/chrisplus/rootmanager/container/Shell;

    return-object v0
.end method

.method private writeCommands()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    monitor-enter v0

    .line 244
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->close:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->write:I

    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 245
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 247
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->write:I

    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    iget v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->write:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chrisplus/rootmanager/container/Command;

    .line 250
    .local v0, "next":Lcom/chrisplus/rootmanager/container/Command;
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Command;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\necho F*D^W@#FGF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/chrisplus/rootmanager/container/Shell;->write:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " $?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "line":Ljava/lang/String;
    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 254
    iget v2, p0, Lcom/chrisplus/rootmanager/container/Shell;->write:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/chrisplus/rootmanager/container/Shell;->write:I

    .end local v0    # "next":Lcom/chrisplus/rootmanager/container/Command;
    .end local v1    # "line":Ljava/lang/String;
    goto :goto_2

    .line 255
    :cond_1
    iget-boolean v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->close:Z

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    const-string v1, "\nexit 0\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 258
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->outputStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 259
    const-string v0, "Closing shell"

    invoke-static {v0}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 260
    return-void

    .line 255
    :cond_2
    :goto_2
    goto :goto_0

    .line 247
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    return-void
.end method


# virtual methods
.method public add(Lcom/chrisplus/rootmanager/container/Command;)Lcom/chrisplus/rootmanager/container/Command;
    .locals 2
    .param p1, "command"    # Lcom/chrisplus/rootmanager/container/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-boolean v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->close:Z

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 350
    monitor-exit v0

    .line 352
    return-object p1

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to add commands to a closed shell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->rootShell:Lcom/chrisplus/rootmanager/container/Shell;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 357
    sput-object v1, Lcom/chrisplus/rootmanager/container/Shell;->rootShell:Lcom/chrisplus/rootmanager/container/Shell;

    .line 359
    :cond_0
    sget-object v0, Lcom/chrisplus/rootmanager/container/Shell;->customShell:Lcom/chrisplus/rootmanager/container/Shell;

    if-ne p0, v0, :cond_1

    .line 360
    sput-object v1, Lcom/chrisplus/rootmanager/container/Shell;->customShell:Lcom/chrisplus/rootmanager/container/Shell;

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    monitor-enter v0

    .line 363
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->close:Z

    .line 364
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 365
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public countCommands()I
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public waitFor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/chrisplus/rootmanager/container/Shell;->close()V

    .line 374
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chrisplus/rootmanager/container/Command;

    .line 376
    .local v0, "command":Lcom/chrisplus/rootmanager/container/Command;
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Command;->waitForFinish()I

    .line 378
    .end local v0    # "command":Lcom/chrisplus/rootmanager/container/Command;
    :cond_0
    return-void
.end method
