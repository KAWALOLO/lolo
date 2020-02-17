.class Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;
.super Ljava/lang/Object;
.source "ParserImpl.java"

# interfaces
.implements Lorg/yaml/snakeyaml/parser/Production;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/parser/ParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseDocumentStart"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/parser/ParserImpl$1;

    .line 211
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V

    return-void
.end method


# virtual methods
.method public produce()Lorg/yaml/snakeyaml/events/Event;
    .locals 12

    .line 214
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v0, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v3, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v0, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v0, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v2, v1, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v3, Lorg/yaml/snakeyaml/tokens/Token$ID;->StreamEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 220
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v0, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 221
    .local v0, "token":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .line 222
    .local v3, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v5}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$900(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    move-result-object v11

    .line 223
    .local v11, "tuple":Lorg/yaml/snakeyaml/parser/VersionTagsTuple;
    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v5, v5, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v1, v1, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v6, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v6, v1, v4

    invoke-interface {v5, v1}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v1, v1, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 229
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v4, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    const/4 v8, 0x1

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;->getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;

    move-result-object v9

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;->getTags()Ljava/util/Map;

    move-result-object v10

    move-object v5, v4

    move-object v6, v3

    move-object v7, v1

    invoke-direct/range {v5 .. v10}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;ZLorg/yaml/snakeyaml/DumperOptions$Version;Ljava/util/Map;)V

    .line 231
    .local v4, "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v5}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$600(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v5

    new-instance v6, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;

    iget-object v7, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {v6, v7, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    invoke-virtual {v5, v6}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 232
    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v6, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;

    invoke-direct {v6, v5, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    invoke-static {v5, v6}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$102(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/Production;)Lorg/yaml/snakeyaml/parser/Production;

    .line 233
    .end local v0    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    .end local v1    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v3    # "startMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v11    # "tuple":Lorg/yaml/snakeyaml/parser/VersionTagsTuple;
    goto :goto_1

    .line 224
    .end local v4    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v0    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    .restart local v3    # "startMark":Lorg/yaml/snakeyaml/error/Mark;
    .restart local v11    # "tuple":Lorg/yaml/snakeyaml/parser/VersionTagsTuple;
    :cond_1
    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \'<document start>\', but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v5, v5, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v5, v5, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-direct {v1, v2, v2, v4, v5}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 235
    .end local v0    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    .end local v3    # "startMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v11    # "tuple":Lorg/yaml/snakeyaml/parser/VersionTagsTuple;
    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v0, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/StreamEndToken;

    .line 236
    .local v0, "token":Lorg/yaml/snakeyaml/tokens/StreamEndToken;
    new-instance v1, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/StreamEndToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/StreamEndToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/yaml/snakeyaml/events/StreamEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    move-object v4, v1

    .line 237
    .restart local v4    # "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$600(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$1100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$102(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/Production;)Lorg/yaml/snakeyaml/parser/Production;

    .line 245
    .end local v0    # "token":Lorg/yaml/snakeyaml/tokens/StreamEndToken;
    :goto_1
    return-object v4

    .line 241
    .restart local v0    # "token":Lorg/yaml/snakeyaml/tokens/StreamEndToken;
    :cond_3
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected end of stream. Marks left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v3}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$1100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_4
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected end of stream. States left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v3}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$600(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method
