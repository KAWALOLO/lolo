.class Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;
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
    name = "ParseImplicitDocumentStart"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/parser/ParserImpl$1;

    .line 191
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V

    return-void
.end method


# virtual methods
.method public produce()Lorg/yaml/snakeyaml/events/Event;
    .locals 10

    .line 194
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v0, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->Directive:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->StreamEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v2, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    invoke-static {}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$400()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;-><init>(Lorg/yaml/snakeyaml/DumperOptions$Version;Ljava/util/Map;)V

    invoke-static {v0, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$302(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/VersionTagsTuple;)Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    .line 196
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v0, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 197
    .local v0, "token":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    .line 198
    .local v8, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    move-object v4, v8

    .line 199
    .local v4, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v9, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;ZLorg/yaml/snakeyaml/DumperOptions$Version;Ljava/util/Map;)V

    .line 201
    .local v2, "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v3}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$600(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v3

    new-instance v5, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;

    iget-object v6, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {v5, v6, v1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    invoke-virtual {v3, v5}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 202
    iget-object v3, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v5, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockNode;

    invoke-direct {v5, v3, v1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockNode;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    invoke-static {v3, v5}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$102(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/Production;)Lorg/yaml/snakeyaml/parser/Production;

    .line 203
    return-object v2

    .line 205
    .end local v0    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    .end local v2    # "event":Lorg/yaml/snakeyaml/events/Event;
    .end local v4    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v8    # "startMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;

    iget-object v2, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {v0, v2, v1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    .line 206
    .local v0, "p":Lorg/yaml/snakeyaml/parser/Production;
    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Production;->produce()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v1

    return-object v1
.end method
