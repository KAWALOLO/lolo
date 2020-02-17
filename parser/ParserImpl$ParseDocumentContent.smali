.class Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;
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
    name = "ParseDocumentContent"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/parser/ParserImpl$1;

    .line 268
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;)V

    return-void
.end method


# virtual methods
.method public produce()Lorg/yaml/snakeyaml/events/Event;
    .locals 4

    .line 271
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v0, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->Directive:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lorg/yaml/snakeyaml/tokens/Token$ID;->StreamEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v1, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$1200(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    .line 274
    .local v0, "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-static {v1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$600(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/parser/Production;

    invoke-static {v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;->access$102(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/Production;)Lorg/yaml/snakeyaml/parser/Production;

    .line 275
    return-object v0

    .line 277
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockNode;

    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;->this$0:Lorg/yaml/snakeyaml/parser/ParserImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockNode;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    .line 278
    .local v0, "p":Lorg/yaml/snakeyaml/parser/Production;
    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Production;->produce()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v1

    return-object v1
.end method
