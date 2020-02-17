.class public final Lorg/yaml/snakeyaml/emitter/Emitter;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/emitter/Emitable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingSimpleValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingSimpleValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentRoot;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentEnd;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstDocumentStart;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectNothing;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;
    }
.end annotation


# static fields
.field private static final ANCHOR_FORMAT:Ljava/util/regex/Pattern;

.field private static final DEFAULT_TAG_PREFIXES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ESCAPE_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLE_FORMAT:Ljava/util/regex/Pattern;

.field public static final MAX_INDENT:I = 0xa

.field public static final MIN_INDENT:I = 0x1

.field private static final SPACE:[C


# instance fields
.field private allowUnicode:Z

.field private analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

.field private bestIndent:I

.field private bestLineBreak:[C

.field private bestWidth:I

.field private canonical:Ljava/lang/Boolean;

.field private column:I

.field private event:Lorg/yaml/snakeyaml/events/Event;

.field private final events:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private flowLevel:I

.field private indent:Ljava/lang/Integer;

.field private indention:Z

.field private final indents:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private indicatorIndent:I

.field private mappingContext:Z

.field private openEnded:Z

.field private preparedAnchor:Ljava/lang/String;

.field private preparedTag:Ljava/lang/String;

.field private prettyFlow:Ljava/lang/Boolean;

.field private rootContext:Z

.field private simpleKeyContext:Z

.field private splitLines:Z

.field private state:Lorg/yaml/snakeyaml/emitter/EmitterState;

.field private final states:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Lorg/yaml/snakeyaml/emitter/EmitterState;",
            ">;"
        }
    .end annotation
.end field

.field private final stream:Ljava/io/Writer;

.field private style:Ljava/lang/Character;

.field private tagPrefixes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whitespace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    .line 70
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "v"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\\"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "N"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "_"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x2028

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "L"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x2029

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "P"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    .line 89
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    const-string v1, "!"

    const-string v2, "!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    const-string v1, "tag:yaml.org,2002:"

    const-string v2, "!!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v0, "^![-_\\w]*!$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->HANDLE_FORMAT:Ljava/util/regex/Pattern;

    .line 892
    const-string v0, "^[-_\\w]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ANCHOR_FORMAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/Writer;
    .param p2, "opts"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    .line 159
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 160
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 162
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    .line 163
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    .line 165
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 166
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 170
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    .line 171
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    .line 179
    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 180
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 181
    iput-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 184
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 187
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isCanonical()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    .line 188
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isPrettyFlow()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    .line 189
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isAllowUnicode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    .line 190
    const/4 v0, 0x2

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    .line 191
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 192
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    .line 194
    :cond_0
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndicatorIndent()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indicatorIndent:I

    .line 195
    const/16 v1, 0x50

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    .line 196
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getWidth()I

    move-result v1

    iget v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    mul-int/lit8 v3, v3, 0x2

    if-le v1, v3, :cond_1

    .line 197
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    .line 199
    :cond_1
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getLineBreak()Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    move-result-object v0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestLineBreak:[C

    .line 200
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getSplitLines()Z

    move-result v0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->splitLines:Z

    .line 203
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    .line 206
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 207
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 210
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 211
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    .line 212
    return-void
.end method

.method static synthetic access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyDocument()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/yaml/snakeyaml/emitter/Emitter;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectNode(ZZZ)V

    return-void
.end method

.method static synthetic access$1802(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 62
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method static synthetic access$2010(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    return v0
.end method

.method static synthetic access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 62
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    return v0
.end method

.method static synthetic access$2200(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    return v0
.end method

.method static synthetic access$2300(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->splitLines:Z

    return v0
.end method

.method static synthetic access$2400(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkSimpleKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indicatorIndent:I

    return v0
.end method

.method static synthetic access$3300(Lorg/yaml/snakeyaml/emitter/Emitter;I)V
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeWhitespace(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    return v0
.end method

.method static synthetic access$500(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/DumperOptions$Version;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 62
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareVersion(Lorg/yaml/snakeyaml/DumperOptions$Version;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$700()Ljava/util/Map;
    .locals 1

    .line 62
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTagHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;
    .locals 29
    .param p1, "scalar"    # Ljava/lang/String;

    .line 906
    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 907
    new-instance v9, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-object v9

    .line 910
    :cond_0
    const/4 v0, 0x0

    .line 911
    .local v0, "blockIndicators":Z
    const/4 v1, 0x0

    .line 912
    .local v1, "flowIndicators":Z
    const/4 v2, 0x0

    .line 913
    .local v2, "lineBreaks":Z
    const/4 v3, 0x0

    .line 916
    .local v3, "specialCharacters":Z
    const/4 v4, 0x0

    .line 917
    .local v4, "leadingSpace":Z
    const/4 v5, 0x0

    .line 918
    .local v5, "leadingBreak":Z
    const/4 v6, 0x0

    .line 919
    .local v6, "trailingSpace":Z
    const/4 v7, 0x0

    .line 920
    .local v7, "trailingBreak":Z
    const/4 v9, 0x0

    .line 921
    .local v9, "breakSpace":Z
    const/4 v10, 0x0

    .line 924
    .local v10, "spaceBreak":Z
    const-string v11, "---"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "..."

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 925
    :cond_1
    const/4 v0, 0x1

    .line 926
    const/4 v1, 0x1

    .line 929
    :cond_2
    const/4 v11, 0x1

    .line 930
    .local v11, "preceededByWhitespace":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v12, v14, :cond_4

    sget-object v12, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v12, v15}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v12, 0x1

    .line 932
    .local v12, "followedByWhitespace":Z
    :goto_1
    const/4 v15, 0x0

    .line 935
    .local v15, "previousSpace":Z
    const/16 v16, 0x0

    .line 937
    .local v16, "previousBreak":Z
    const/16 v17, 0x0

    move/from16 v23, v2

    move/from16 v22, v3

    move/from16 v20, v9

    move/from16 v19, v10

    move/from16 v21, v11

    move/from16 v18, v12

    move/from16 v24, v15

    move/from16 v25, v16

    move/from16 v9, v17

    move/from16 v16, v0

    move v15, v1

    move v10, v4

    move v11, v5

    move v12, v6

    move/from16 v17, v7

    .line 939
    .end local v0    # "blockIndicators":Z
    .end local v1    # "flowIndicators":Z
    .end local v2    # "lineBreaks":Z
    .end local v3    # "specialCharacters":Z
    .end local v4    # "leadingSpace":Z
    .end local v5    # "leadingBreak":Z
    .end local v6    # "trailingSpace":Z
    .end local v7    # "trailingBreak":Z
    .local v9, "index":I
    .local v10, "leadingSpace":Z
    .local v11, "leadingBreak":Z
    .local v12, "trailingSpace":Z
    .local v15, "flowIndicators":Z
    .local v16, "blockIndicators":Z
    .local v17, "trailingBreak":Z
    .local v18, "followedByWhitespace":Z
    .local v19, "spaceBreak":Z
    .local v20, "breakSpace":Z
    .local v21, "preceededByWhitespace":Z
    .local v22, "specialCharacters":Z
    .local v23, "lineBreaks":Z
    .local v24, "previousSpace":Z
    .local v25, "previousBreak":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_21

    .line 940
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 942
    .local v0, "ch":C
    const/16 v1, 0x3a

    const/4 v2, -0x1

    if-nez v9, :cond_8

    .line 944
    const-string v3, "#,[]{}&*!|>\'\"%@`"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 945
    const/4 v15, 0x1

    .line 946
    const/16 v16, 0x1

    .line 948
    :cond_5
    const/16 v2, 0x3f

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_7

    .line 949
    :cond_6
    const/4 v15, 0x1

    .line 950
    if-eqz v18, :cond_7

    .line 951
    const/16 v16, 0x1

    .line 954
    :cond_7
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_b

    if-eqz v18, :cond_b

    .line 955
    const/4 v1, 0x1

    .line 956
    .end local v15    # "flowIndicators":Z
    .restart local v1    # "flowIndicators":Z
    const/4 v2, 0x1

    move v15, v1

    move/from16 v16, v2

    goto :goto_3

    .line 960
    .end local v1    # "flowIndicators":Z
    .restart local v15    # "flowIndicators":Z
    :cond_8
    const-string v3, ",?[]{}"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_9

    .line 961
    const/4 v15, 0x1

    .line 963
    :cond_9
    if-ne v0, v1, :cond_a

    .line 964
    const/4 v15, 0x1

    .line 965
    if-eqz v18, :cond_a

    .line 966
    const/16 v16, 0x1

    .line 969
    :cond_a
    const/16 v1, 0x23

    if-ne v0, v1, :cond_b

    if-eqz v21, :cond_b

    .line 970
    const/4 v1, 0x1

    .line 971
    .end local v15    # "flowIndicators":Z
    .restart local v1    # "flowIndicators":Z
    const/4 v2, 0x1

    move v15, v1

    move/from16 v16, v2

    .line 975
    .end local v1    # "flowIndicators":Z
    .restart local v15    # "flowIndicators":Z
    :cond_b
    :goto_3
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v1

    .line 976
    .local v1, "isLineBreak":Z
    if-eqz v1, :cond_c

    .line 977
    const/16 v23, 0x1

    .line 979
    :cond_c
    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eq v0, v2, :cond_13

    if-gt v3, v0, :cond_e

    const/16 v2, 0x7e

    if-le v0, v2, :cond_d

    goto :goto_4

    :cond_d
    move-object/from16 v7, p0

    goto :goto_7

    .line 980
    :cond_e
    :goto_4
    const/16 v2, 0x85

    if-eq v0, v2, :cond_11

    const/16 v2, 0xa0

    if-gt v2, v0, :cond_f

    const v2, 0xd7ff

    if-le v0, v2, :cond_11

    :cond_f
    const v2, 0xe000

    if-gt v2, v0, :cond_10

    const v2, 0xfffd

    if-gt v0, v2, :cond_10

    goto :goto_5

    :cond_10
    move-object/from16 v7, p0

    goto :goto_6

    :cond_11
    :goto_5
    const v2, 0xfeff

    if-eq v0, v2, :cond_12

    .line 983
    move-object/from16 v7, p0

    iget-boolean v2, v7, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    if-nez v2, :cond_14

    .line 984
    const/4 v2, 0x1

    move/from16 v22, v2

    goto :goto_7

    .line 980
    :cond_12
    move-object/from16 v7, p0

    .line 987
    :goto_6
    const/4 v2, 0x1

    move/from16 v22, v2

    goto :goto_7

    .line 979
    :cond_13
    move-object/from16 v7, p0

    .line 991
    :cond_14
    :goto_7
    if-ne v0, v3, :cond_18

    .line 992
    if-nez v9, :cond_15

    .line 993
    const/4 v10, 0x1

    .line 995
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v14

    if-ne v9, v2, :cond_16

    .line 996
    const/4 v12, 0x1

    .line 998
    :cond_16
    if-eqz v25, :cond_17

    .line 999
    const/16 v20, 0x1

    .line 1001
    :cond_17
    const/4 v2, 0x1

    .line 1002
    .end local v24    # "previousSpace":Z
    .local v2, "previousSpace":Z
    const/4 v3, 0x0

    move/from16 v24, v2

    move/from16 v25, v3

    goto :goto_8

    .line 1003
    .end local v2    # "previousSpace":Z
    .restart local v24    # "previousSpace":Z
    :cond_18
    if-eqz v1, :cond_1c

    .line 1004
    if-nez v9, :cond_19

    .line 1005
    const/4 v11, 0x1

    .line 1007
    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v14

    if-ne v9, v2, :cond_1a

    .line 1008
    const/16 v17, 0x1

    .line 1010
    :cond_1a
    if-eqz v24, :cond_1b

    .line 1011
    const/16 v19, 0x1

    .line 1013
    :cond_1b
    const/4 v2, 0x0

    .line 1014
    .end local v24    # "previousSpace":Z
    .restart local v2    # "previousSpace":Z
    const/4 v3, 0x1

    move/from16 v24, v2

    move/from16 v25, v3

    goto :goto_8

    .line 1016
    .end local v2    # "previousSpace":Z
    .restart local v24    # "previousSpace":Z
    :cond_1c
    const/4 v2, 0x0

    .line 1017
    .end local v24    # "previousSpace":Z
    .restart local v2    # "previousSpace":Z
    const/4 v3, 0x0

    move/from16 v24, v2

    move/from16 v25, v3

    .line 1021
    .end local v2    # "previousSpace":Z
    .restart local v24    # "previousSpace":Z
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 1022
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz v1, :cond_1d

    goto :goto_9

    :cond_1d
    const/4 v2, 0x0

    goto :goto_a

    :cond_1e
    :goto_9
    const/4 v2, 0x1

    :goto_a
    move/from16 v21, v2

    .line 1023
    add-int/lit8 v2, v9, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_20

    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    if-nez v2, :cond_20

    if-eqz v1, :cond_1f

    goto :goto_b

    :cond_1f
    const/4 v2, 0x0

    goto :goto_c

    :cond_20
    :goto_b
    const/4 v2, 0x1

    :goto_c
    move/from16 v18, v2

    .line 1025
    .end local v0    # "ch":C
    .end local v1    # "isLineBreak":Z
    goto/16 :goto_2

    .line 1027
    :cond_21
    move-object/from16 v7, p0

    const/4 v0, 0x1

    .line 1028
    .local v0, "allowFlowPlain":Z
    const/4 v1, 0x1

    .line 1029
    .local v1, "allowBlockPlain":Z
    const/4 v2, 0x1

    .line 1030
    .local v2, "allowSingleQuoted":Z
    const/4 v3, 0x1

    .line 1032
    .local v3, "allowBlock":Z
    if-nez v10, :cond_22

    if-nez v11, :cond_22

    if-nez v12, :cond_22

    if-eqz v17, :cond_23

    .line 1033
    :cond_22
    move v1, v13

    move v0, v13

    .line 1036
    :cond_23
    if-eqz v12, :cond_24

    .line 1037
    const/4 v3, 0x0

    .line 1041
    :cond_24
    if-eqz v20, :cond_25

    .line 1042
    move v2, v13

    move v1, v13

    move v0, v13

    .line 1046
    :cond_25
    if-nez v19, :cond_27

    if-eqz v22, :cond_26

    goto :goto_d

    :cond_26
    move v13, v2

    move v14, v3

    goto :goto_e

    .line 1047
    :cond_27
    :goto_d
    move v3, v13

    move v2, v13

    move v1, v13

    move v0, v13

    move v14, v3

    .line 1051
    .end local v2    # "allowSingleQuoted":Z
    .end local v3    # "allowBlock":Z
    .local v13, "allowSingleQuoted":Z
    .local v14, "allowBlock":Z
    :goto_e
    if-eqz v23, :cond_28

    .line 1052
    const/4 v0, 0x0

    .line 1055
    :cond_28
    if-eqz v15, :cond_29

    .line 1056
    const/4 v0, 0x0

    move/from16 v26, v0

    goto :goto_f

    .line 1055
    :cond_29
    move/from16 v26, v0

    .line 1059
    .end local v0    # "allowFlowPlain":Z
    .local v26, "allowFlowPlain":Z
    :goto_f
    if-eqz v16, :cond_2a

    .line 1060
    const/4 v0, 0x0

    move/from16 v27, v0

    goto :goto_10

    .line 1059
    :cond_2a
    move/from16 v27, v1

    .line 1063
    .end local v1    # "allowBlockPlain":Z
    .local v27, "allowBlockPlain":Z
    :goto_10
    new-instance v28, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v3, v23

    move/from16 v4, v26

    move/from16 v5, v27

    move v6, v13

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-object v28
.end method

.method private checkEmptyDocument()Z
    .locals 4

    .line 668
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    .line 672
    .local v0, "event":Lorg/yaml/snakeyaml/events/Event;
    instance-of v2, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_2

    .line 673
    move-object v2, v0

    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 674
    .local v2, "e":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getAnchor()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 677
    .end local v2    # "e":Lorg/yaml/snakeyaml/events/ScalarEvent;
    :cond_2
    return v1

    .line 669
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_3
    :goto_0
    return v1
.end method

.method private checkEmptyMapping()Z
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/MappingEndEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkEmptySequence()Z
    .locals 1

    .line 660
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkSimpleKey()Z
    .locals 4

    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "length":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 683
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 684
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 686
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 688
    :cond_1
    const/4 v1, 0x0

    .line 689
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v3, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v3, :cond_2

    .line 690
    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 691
    :cond_2
    instance-of v3, v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v3, :cond_3

    .line 692
    check-cast v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 694
    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 695
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 696
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 698
    :cond_4
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 700
    :cond_5
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v3, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v3, :cond_7

    .line 701
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v3, :cond_6

    .line 702
    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 704
    :cond_6
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 706
    :cond_7
    const/16 v2, 0x80

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v3, v2, Lorg/yaml/snakeyaml/events/AliasEvent;

    if-nez v3, :cond_9

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->empty:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->multiline:Z

    if-eqz v2, :cond_9

    :cond_8
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptySequence()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyMapping()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private chooseScalarStyle()Ljava/lang/Character;
    .locals 4

    .line 763
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 764
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v1, :cond_0

    .line 765
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 767
    :cond_0
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x22

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 768
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 770
    :cond_3
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 771
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->empty:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->multiline:Z

    if-nez v1, :cond_7

    :cond_4
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowFlowPlain:Z

    if-nez v1, :cond_6

    :cond_5
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowBlockPlain:Z

    if-eqz v1, :cond_7

    .line 773
    :cond_6
    const/4 v1, 0x0

    return-object v1

    .line 776
    :cond_7
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/16 v3, 0x7c

    if-eq v1, v3, :cond_8

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_9

    .line 777
    :cond_8
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowBlock:Z

    if-eqz v1, :cond_9

    .line 778
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 781
    :cond_9
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x27

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStyle()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v1, v3, :cond_c

    .line 782
    :cond_a
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowSingleQuoted:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-boolean v1, v1, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->multiline:Z

    if-nez v1, :cond_c

    .line 783
    :cond_b
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 786
    :cond_c
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1
.end method

.method private determineBlockHints(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1290
    .local v0, "hints":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->has(CLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1291
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1293
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1294
    .local v1, "ch1":C
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1295
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1296
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_2

    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1297
    :cond_2
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private expectAlias()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/NodeEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "*"

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processAnchor(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/emitter/EmitterState;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 420
    return-void

    .line 416
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "anchor is not specified for alias"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expectBlockMapping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 606
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 607
    return-void
.end method

.method private expectBlockSequence()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 572
    .local v0, "indentless":Z
    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 573
    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 574
    return-void
.end method

.method private expectFlowMapping()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    const-string v0, "{"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 487
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 488
    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 489
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 492
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 493
    return-void
.end method

.method private expectFlowSequence()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    const-string v0, "["

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 433
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 434
    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 435
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 438
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 439
    return-void
.end method

.method private expectNode(ZZZ)V
    .locals 3
    .param p1, "root"    # Z
    .param p2, "mapping"    # Z
    .param p3, "simpleKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->rootContext:Z

    .line 385
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    .line 386
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    .line 387
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v1, v0, Lorg/yaml/snakeyaml/events/AliasEvent;

    if-eqz v1, :cond_0

    .line 388
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectAlias()V

    goto/16 :goto_3

    .line 389
    :cond_0
    instance-of v1, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-nez v1, :cond_2

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 410
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected NodeEvent, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_2
    :goto_0
    const-string v0, "&"

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processAnchor(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processTag()V

    .line 392
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v1, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v1, :cond_3

    .line 393
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectScalar()V

    goto :goto_3

    .line 394
    :cond_3
    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    if-eqz v0, :cond_6

    .line 395
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getFlowStyle()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptySequence()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 399
    :cond_4
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectBlockSequence()V

    goto :goto_3

    .line 397
    :cond_5
    :goto_1
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectFlowSequence()V

    goto :goto_3

    .line 402
    :cond_6
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getFlowStyle()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyMapping()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 406
    :cond_7
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectBlockMapping()V

    goto :goto_3

    .line 404
    :cond_8
    :goto_2
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectFlowMapping()V

    .line 412
    :goto_3
    return-void
.end method

.method private expectScalar()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 424
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processScalar()V

    .line 425
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 426
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/emitter/EmitterState;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 427
    return-void
.end method

.method private increaseIndent(ZZ)V
    .locals 2
    .param p1, "flow"    # Z
    .param p2, "indentless"    # Z

    .line 262
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 264
    if-eqz p1, :cond_0

    .line 265
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    goto :goto_0

    .line 267
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    goto :goto_0

    .line 269
    :cond_1
    if-nez p2, :cond_2

    .line 270
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 272
    :cond_2
    :goto_0
    return-void
.end method

.method private needEvents(I)Z
    .locals 5
    .param p1, "count"    # I

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "level":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 244
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/events/Event;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/events/Event;

    .line 247
    .local v2, "event":Lorg/yaml/snakeyaml/events/Event;
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    if-nez v4, :cond_3

    instance-of v4, v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v4, :cond_0

    goto :goto_2

    .line 249
    :cond_0
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/DocumentEndEvent;

    if-nez v4, :cond_2

    instance-of v4, v2, Lorg/yaml/snakeyaml/events/CollectionEndEvent;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 251
    :cond_1
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    if-eqz v4, :cond_4

    .line 252
    const/4 v0, -0x1

    goto :goto_3

    .line 250
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 248
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 254
    :cond_4
    :goto_3
    if-gez v0, :cond_5

    .line 255
    return v3

    .line 257
    .end local v2    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_5
    goto :goto_0

    .line 258
    :cond_6
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    add-int/lit8 v4, p1, 0x1

    if-ge v2, v4, :cond_7

    const/4 v3, 0x1

    :cond_7
    return v3
.end method

.method private needMoreEvents()Z
    .locals 3

    .line 226
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 227
    return v1

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    .line 230
    .local v0, "event":Lorg/yaml/snakeyaml/events/Event;
    instance-of v2, v0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    if-eqz v2, :cond_1

    .line 231
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(I)Z

    move-result v1

    return v1

    .line 232
    :cond_1
    instance-of v1, v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    if-eqz v1, :cond_2

    .line 233
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(I)Z

    move-result v1

    return v1

    .line 234
    :cond_2
    instance-of v1, v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    if-eqz v1, :cond_3

    .line 235
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(I)Z

    move-result v1

    return v1

    .line 237
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method static prepareAnchor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "anchor"    # Ljava/lang/String;

    .line 895
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ANCHOR_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    return-object p0

    .line 899
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid character in the anchor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "anchor must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 864
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 867
    const-string v0, "!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    return-object p1

    .line 870
    :cond_0
    const/4 v0, 0x0

    .line 871
    .local v0, "handle":Ljava/lang/String;
    move-object v1, p1

    .line 873
    .local v1, "suffix":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 874
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "!"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 875
    :cond_1
    move-object v0, v3

    .end local v3    # "prefix":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 878
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v0, :cond_4

    .line 879
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 880
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 883
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 884
    .local v2, "end":I
    if-lez v2, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, ""

    .line 886
    .local v3, "suffixText":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_6

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 889
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 865
    .end local v0    # "handle":Ljava/lang/String;
    .end local v1    # "suffix":Ljava/lang/String;
    .end local v2    # "end":I
    .end local v3    # "suffixText":Ljava/lang/String;
    :cond_7
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method private prepareTagHandle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "handle"    # Ljava/lang/String;

    .line 834
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 836
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    .line 838
    const-string v0, "!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->HANDLE_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid character in the tag handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_1
    :goto_0
    return-object p1

    .line 837
    :cond_2
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag handle must start and end with \'!\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_3
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag handle must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareTagPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .line 845
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 850
    .local v1, "start":I
    const/4 v2, 0x0

    .line 851
    .local v2, "end":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_0

    .line 852
    const/4 v2, 0x1

    .line 854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 855
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 857
    :cond_1
    if-ge v1, v2, :cond_2

    .line 858
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 846
    .end local v0    # "chunks":Ljava/lang/StringBuilder;
    .end local v1    # "start":I
    .end local v2    # "end":I
    :cond_3
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag prefix must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method private prepareVersion(Lorg/yaml/snakeyaml/DumperOptions$Version;)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 825
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/DumperOptions$Version;->major()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 828
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/DumperOptions$Version;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 826
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported YAML version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processAnchor(Ljava/lang/String;)V
    .locals 5
    .param p1, "indicator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/NodeEvent;

    .line 715
    .local v0, "ev":Lorg/yaml/snakeyaml/events/NodeEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 716
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 717
    return-void

    .line 719
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 720
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 722
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 723
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 724
    return-void
.end method

.method private processScalar()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 791
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v1, :cond_0

    .line 792
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 794
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    if-nez v1, :cond_1

    .line 795
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->chooseScalarStyle()Ljava/lang/Character;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    .line 797
    :cond_1
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->splitLines:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 798
    .local v1, "split":Z
    :goto_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    if-nez v2, :cond_3

    .line 799
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writePlain(Ljava/lang/String;Z)V

    goto :goto_1

    .line 801
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_7

    const/16 v3, 0x27

    if-eq v2, v3, :cond_6

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_4

    .line 812
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLiteral(Ljava/lang/String;)V

    .line 813
    goto :goto_1

    .line 815
    :cond_4
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected style: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 809
    :cond_5
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeFolded(Ljava/lang/String;Z)V

    .line 810
    goto :goto_1

    .line 806
    :cond_6
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeSingleQuoted(Ljava/lang/String;Z)V

    .line 807
    goto :goto_1

    .line 803
    :cond_7
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    iget-object v2, v2, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeDoubleQuoted(Ljava/lang/String;Z)V

    .line 804
    nop

    .line 818
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 819
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    .line 820
    return-void
.end method

.method private processTag()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    const/4 v0, 0x0

    .line 728
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v1, Lorg/yaml/snakeyaml/events/ScalarEvent;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 729
    check-cast v1, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 730
    .local v1, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 731
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    if-nez v2, :cond_0

    .line 732
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->chooseScalarStyle()Ljava/lang/Character;

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    .line 734
    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_4

    :cond_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v2

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Ljava/lang/Character;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v2

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInNonPlainScalar()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 737
    :cond_3
    iput-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 738
    return-void

    .line 740
    :cond_4
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v2

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 741
    const-string v0, "!"

    .line 742
    iput-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 744
    .end local v1    # "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    :cond_5
    goto :goto_0

    .line 745
    :cond_6
    check-cast v1, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    .line 746
    .local v1, "ev":Lorg/yaml/snakeyaml/events/CollectionStartEvent;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 747
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_8

    :cond_7
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getImplicit()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 748
    iput-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 749
    return-void

    .line 752
    .end local v1    # "ev":Lorg/yaml/snakeyaml/events/CollectionStartEvent;
    :cond_8
    :goto_0
    if-eqz v0, :cond_a

    .line 755
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 756
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 758
    :cond_9
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 759
    iput-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 760
    return-void

    .line 753
    :cond_a
    new-instance v1, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v2, "tag is not specified"

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeDoubleQuoted(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1214
    const-string v0, "\""

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1215
    const/4 v0, 0x0

    .line 1216
    .local v0, "start":I
    const/4 v3, 0x0

    .line 1217
    .local v3, "end":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_e

    .line 1218
    const/4 v4, 0x0

    .line 1219
    .local v4, "ch":Ljava/lang/Character;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 1220
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 1222
    :cond_0
    const/16 v5, 0x20

    if-eqz v4, :cond_1

    const-string v6, "\"\\\u0085\u2028\u2029\ufeff"

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    if-gt v5, v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    const/16 v7, 0x7e

    if-le v6, v7, :cond_9

    .line 1224
    :cond_1
    if-ge v0, v3, :cond_2

    .line 1225
    sub-int v6, v3, v0

    .line 1226
    .local v6, "len":I
    iget v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v7, v6

    iput v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1227
    iget-object v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v7, p1, v0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1228
    move v0, v3

    .line 1230
    .end local v6    # "len":I
    :cond_2
    if-eqz v4, :cond_9

    .line 1232
    sget-object v6, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1234
    :cond_3
    iget-boolean v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-static {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->isPrintable(C)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 1254
    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1237
    :cond_5
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    const/16 v7, 0xff

    const/16 v8, 0x10

    if-gt v6, v7, :cond_6

    .line 1238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1239
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1240
    .local v6, "data":Ljava/lang/String;
    goto/16 :goto_2

    .end local v6    # "data":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    const v7, 0xd800

    if-lt v6, v7, :cond_8

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    const v7, 0xdbff

    if-gt v6, v7, :cond_8

    .line 1241
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 1242
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 1243
    .local v6, "ch2":Ljava/lang/Character;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1244
    .local v7, "s":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\U"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x8

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1245
    .end local v7    # "s":Ljava/lang/String;
    .local v6, "data":Ljava/lang/String;
    goto :goto_2

    .line 1246
    .end local v6    # "data":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1247
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1248
    .local v6, "data":Ljava/lang/String;
    goto :goto_2

    .line 1250
    .end local v6    # "data":Ljava/lang/String;
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1251
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1252
    .local v6, "data":Ljava/lang/String;
    nop

    .line 1256
    :goto_2
    iget v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1257
    iget-object v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1258
    add-int/lit8 v0, v3, 0x1

    .line 1261
    .end local v6    # "data":Ljava/lang/String;
    :cond_9
    if-lez v3, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v3, v6, :cond_d

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v6

    if-eq v6, v5, :cond_a

    if-lt v0, v3, :cond_d

    :cond_a
    iget v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    sub-int v7, v3, v0

    add-int/2addr v6, v7

    iget v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v6, v7, :cond_d

    if-eqz p2, :cond_d

    .line 1264
    if-lt v0, v3, :cond_b

    .line 1265
    const-string v6, "\\"

    goto :goto_3

    .line 1267
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\\"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1269
    .restart local v6    # "data":Ljava/lang/String;
    :goto_3
    if-ge v0, v3, :cond_c

    .line 1270
    move v0, v3

    .line 1272
    :cond_c
    iget v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1273
    iget-object v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1275
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1276
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1277
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_d

    .line 1278
    const-string v5, "\\"

    .line 1279
    .end local v6    # "data":Ljava/lang/String;
    .local v5, "data":Ljava/lang/String;
    iget v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1280
    iget-object v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1283
    .end local v5    # "data":Ljava/lang/String;
    :cond_d
    nop

    .end local v4    # "ch":Ljava/lang/Character;
    add-int/lit8 v3, v3, 0x1

    .line 1284
    goto/16 :goto_0

    .line 1285
    :cond_e
    const-string v1, "\""

    invoke-virtual {p0, v1, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1286
    return-void
.end method

.method private writeLineBreak(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1124
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1125
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1126
    if-nez p1, :cond_0

    .line 1127
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestLineBreak:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    goto :goto_0

    .line 1129
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1131
    :goto_0
    return-void
.end method

.method private writeSingleQuoted(Ljava/lang/String;Z)V
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1151
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "\'"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1152
    const/4 v2, 0x0

    .line 1153
    .local v2, "spaces":Z
    const/4 v5, 0x0

    .line 1154
    .local v5, "breaks":Z
    const/4 v6, 0x0

    .local v6, "start":I
    const/4 v7, 0x0

    .line 1156
    .local v7, "end":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_d

    .line 1157
    const/4 v8, 0x0

    .line 1158
    .local v8, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 1159
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1161
    :cond_0
    const/16 v9, 0x20

    if-eqz v2, :cond_3

    .line 1162
    if-eqz v8, :cond_1

    if-eq v8, v9, :cond_9

    .line 1163
    :cond_1
    add-int/lit8 v10, v6, 0x1

    if-ne v10, v7, :cond_2

    iget v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v10, v11, :cond_2

    if-eqz p2, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v7, v10, :cond_2

    .line 1165
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    goto :goto_1

    .line 1167
    :cond_2
    sub-int v10, v7, v6

    .line 1168
    .local v10, "len":I
    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v11, v10

    iput v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1169
    iget-object v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v11, v1, v6, v10}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1171
    .end local v10    # "len":I
    :goto_1
    move v6, v7

    goto :goto_4

    .line 1173
    :cond_3
    if-eqz v5, :cond_8

    .line 1174
    if-eqz v8, :cond_4

    sget-object v10, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v10, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1175
    :cond_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x0

    const/16 v12, 0xa

    if-ne v10, v12, :cond_5

    .line 1176
    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1178
    :cond_5
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1179
    .local v10, "data":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    .local v13, "arr$":[C
    array-length v14, v13

    .local v14, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_2
    if-ge v15, v14, :cond_7

    aget-char v4, v13, v15

    .line 1180
    .local v4, "br":C
    if-ne v4, v12, :cond_6

    .line 1181
    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_3

    .line 1183
    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1179
    .end local v4    # "br":C
    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x1

    const/4 v11, 0x0

    goto :goto_2

    .line 1186
    .end local v13    # "arr$":[C
    .end local v14    # "len$":I
    .end local v15    # "i$":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1187
    move v6, v7

    .line 1188
    .end local v10    # "data":Ljava/lang/String;
    goto :goto_4

    .line 1190
    :cond_8
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v10, "\u0000 \'"

    invoke-virtual {v4, v8, v10}, Lorg/yaml/snakeyaml/scanner/Constant;->has(CLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1191
    if-ge v6, v7, :cond_9

    .line 1192
    sub-int v4, v7, v6

    .line 1193
    .local v4, "len":I
    iget v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v10, v4

    iput v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1194
    iget-object v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v10, v1, v6, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1195
    move v6, v7

    .line 1199
    .end local v4    # "len":I
    :cond_9
    :goto_4
    const/16 v4, 0x27

    if-ne v8, v4, :cond_a

    .line 1200
    iget v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/lit8 v4, v4, 0x2

    iput v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1201
    iget-object v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v10, "\'\'"

    invoke-virtual {v4, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1202
    add-int/lit8 v4, v7, 0x1

    move v6, v4

    .line 1204
    :cond_a
    if-eqz v8, :cond_c

    .line 1205
    if-ne v8, v9, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    move v2, v4

    .line 1206
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v4

    move v5, v4

    .line 1208
    :cond_c
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1210
    .end local v8    # "ch":C
    :cond_d
    const-string v4, "\'"

    invoke-virtual {v0, v4, v3, v3, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1211
    return-void
.end method

.method private writeWhitespace(I)V
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1110
    if-gtz p1, :cond_0

    .line 1111
    return-void

    .line 1113
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1114
    new-array v0, p1, [C

    .line 1115
    .local v0, "data":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1116
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 1115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1118
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1119
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write([C)V

    .line 1120
    return-void
.end method


# virtual methods
.method public emit(Lorg/yaml/snakeyaml/events/Event;)V
    .locals 1
    .param p1, "event"    # Lorg/yaml/snakeyaml/events/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->needMoreEvents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    .line 218
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/emitter/EmitterState;->expect()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method flushStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 1071
    return-void
.end method

.method writeFolded(Ljava/lang/String;Z)V
    .locals 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1303
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->determineBlockHints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1304
    .local v2, "hints":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1305
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2b

    if-ne v3, v6, :cond_0

    .line 1306
    iput-boolean v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1308
    :cond_0
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1309
    const/4 v6, 0x1

    .line 1310
    .local v6, "leadingSpace":Z
    const/4 v7, 0x0

    .line 1311
    .local v7, "spaces":Z
    const/4 v8, 0x1

    .line 1312
    .local v8, "breaks":Z
    const/4 v9, 0x0

    .local v9, "start":I
    const/4 v10, 0x0

    .line 1313
    .local v10, "end":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v10, v11, :cond_f

    .line 1314
    const/4 v11, 0x0

    .line 1315
    .local v11, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v10, v12, :cond_1

    .line 1316
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1318
    :cond_1
    const/16 v12, 0x20

    if-eqz v8, :cond_8

    .line 1319
    if-eqz v11, :cond_2

    sget-object v13, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v13, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1320
    :cond_2
    const/16 v13, 0xa

    if-nez v6, :cond_3

    if-eqz v11, :cond_3

    if-eq v11, v12, :cond_3

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_3

    .line 1321
    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1323
    :cond_3
    if-ne v11, v12, :cond_4

    const/4 v14, 0x1

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    :goto_1
    move v6, v14

    .line 1324
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1325
    .local v14, "data":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    .local v15, "arr$":[C
    array-length v4, v15

    .local v4, "len$":I
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "i$":I
    :goto_2
    if-ge v5, v4, :cond_6

    aget-char v12, v15, v5

    .line 1326
    .local v12, "br":C
    if-ne v12, v13, :cond_5

    .line 1327
    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_3

    .line 1329
    :cond_5
    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1325
    .end local v12    # "br":C
    :goto_3
    add-int/lit8 v5, v5, 0x1

    const/16 v12, 0x20

    const/16 v13, 0xa

    goto :goto_2

    .line 1332
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v15    # "arr$":[C
    :cond_6
    if-eqz v11, :cond_7

    .line 1333
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1335
    :cond_7
    move v4, v10

    .line 1336
    .end local v9    # "start":I
    .end local v14    # "data":Ljava/lang/String;
    .local v4, "start":I
    move v9, v4

    goto :goto_5

    .line 1337
    .end local v4    # "start":I
    .restart local v9    # "start":I
    :cond_8
    if-eqz v7, :cond_a

    .line 1338
    const/16 v4, 0x20

    if-eq v11, v4, :cond_c

    .line 1339
    add-int/lit8 v4, v9, 0x1

    if-ne v4, v10, :cond_9

    iget v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v4, v5, :cond_9

    if-eqz p2, :cond_9

    .line 1340
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    goto :goto_4

    .line 1342
    :cond_9
    sub-int v4, v10, v9

    .line 1343
    .local v4, "len":I
    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1344
    iget-object v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v5, v1, v9, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1346
    .end local v4    # "len":I
    :goto_4
    move v4, v10

    move v9, v4

    goto :goto_5

    .line 1349
    :cond_a
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v5, "\u0000 "

    invoke-virtual {v4, v11, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(CLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1350
    sub-int v4, v10, v9

    .line 1351
    .restart local v4    # "len":I
    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1352
    iget-object v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v5, v1, v9, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1353
    if-nez v11, :cond_b

    .line 1354
    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1356
    :cond_b
    move v5, v10

    move v9, v5

    .line 1359
    .end local v4    # "len":I
    :cond_c
    :goto_5
    if-eqz v11, :cond_e

    .line 1360
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v4

    .line 1361
    .end local v8    # "breaks":Z
    .local v4, "breaks":Z
    const/16 v5, 0x20

    if-ne v11, v5, :cond_d

    const/4 v5, 0x1

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    :goto_6
    move v8, v4

    move v7, v5

    .line 1363
    .end local v4    # "breaks":Z
    .restart local v8    # "breaks":Z
    :cond_e
    nop

    .end local v11    # "ch":C
    add-int/lit8 v10, v10, 0x1

    .line 1364
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1365
    :cond_f
    return-void
.end method

.method writeIndent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1099
    :cond_0
    const/4 v0, 0x0

    .line 1102
    .local v0, "indent":I
    :goto_0
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    if-gt v1, v0, :cond_1

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    if-nez v1, :cond_2

    .line 1103
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1106
    :cond_2
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeWhitespace(I)V

    .line 1107
    return-void
.end method

.method writeIndicator(Ljava/lang/String;ZZZ)V
    .locals 3
    .param p1, "indicator"    # Ljava/lang/String;
    .param p2, "needWhitespace"    # Z
    .param p3, "whitespace"    # Z
    .param p4, "indentation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1083
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1084
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1085
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v2, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write([C)V

    .line 1087
    :cond_0
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1088
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1089
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1090
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1091
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1092
    return-void
.end method

.method writeLiteral(Ljava/lang/String;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1368
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->determineBlockHints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1369
    .local v0, "hints":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1370
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1371
    iput-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1373
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1374
    const/4 v2, 0x1

    .line 1375
    .local v2, "breaks":Z
    const/4 v3, 0x0

    .local v3, "start":I
    const/4 v4, 0x0

    .line 1376
    .local v4, "end":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_b

    .line 1377
    const/4 v5, 0x0

    .line 1378
    .local v5, "ch":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 1379
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1381
    :cond_1
    if-eqz v2, :cond_6

    .line 1382
    if-eqz v5, :cond_2

    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v6, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1383
    :cond_2
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1384
    .local v6, "data":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .local v7, "arr$":[C
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v8, :cond_4

    aget-char v10, v7, v9

    .line 1385
    .local v10, "br":C
    const/16 v11, 0xa

    if-ne v10, v11, :cond_3

    .line 1386
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_2

    .line 1388
    :cond_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1384
    .end local v10    # "br":C
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1391
    .end local v7    # "arr$":[C
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    :cond_4
    if-eqz v5, :cond_5

    .line 1392
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1394
    :cond_5
    move v3, v4

    .line 1395
    .end local v6    # "data":Ljava/lang/String;
    goto :goto_3

    .line 1397
    :cond_6
    if-eqz v5, :cond_7

    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v6, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1398
    :cond_7
    iget-object v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sub-int v7, v4, v3

    invoke-virtual {v6, p1, v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1399
    if-nez v5, :cond_8

    .line 1400
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1402
    :cond_8
    move v3, v4

    .line 1405
    :cond_9
    :goto_3
    if-eqz v5, :cond_a

    .line 1406
    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v6, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    .line 1408
    :cond_a
    nop

    .end local v5    # "ch":C
    add-int/lit8 v4, v4, 0x1

    .line 1409
    goto :goto_0

    .line 1410
    :cond_b
    return-void
.end method

.method writePlain(Ljava/lang/String;Z)V
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1413
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->rootContext:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1414
    iput-boolean v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1416
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1417
    return-void

    .line 1419
    :cond_1
    iget-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    if-nez v2, :cond_2

    .line 1420
    iget v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1421
    iget-object v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v4, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write([C)V

    .line 1423
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1424
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1425
    const/4 v4, 0x0

    .line 1426
    .local v4, "spaces":Z
    const/4 v5, 0x0

    .line 1427
    .local v5, "breaks":Z
    const/4 v6, 0x0

    .local v6, "start":I
    const/4 v7, 0x0

    .line 1428
    .local v7, "end":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_e

    .line 1429
    const/4 v8, 0x0

    .line 1430
    .local v8, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_3

    .line 1431
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1433
    :cond_3
    const/16 v9, 0x20

    if-eqz v4, :cond_5

    .line 1434
    if-eq v8, v9, :cond_b

    .line 1435
    add-int/lit8 v10, v6, 0x1

    if-ne v10, v7, :cond_4

    iget v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v10, v11, :cond_4

    if-eqz p2, :cond_4

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1437
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1438
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    goto :goto_1

    .line 1440
    :cond_4
    sub-int v10, v7, v6

    .line 1441
    .local v10, "len":I
    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v11, v10

    iput v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1442
    iget-object v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v11, v1, v6, v10}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1444
    .end local v10    # "len":I
    :goto_1
    move v6, v7

    goto :goto_4

    .line 1446
    :cond_5
    if-eqz v5, :cond_9

    .line 1447
    sget-object v10, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v10, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1448
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x0

    const/16 v12, 0xa

    if-ne v10, v12, :cond_6

    .line 1449
    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1451
    :cond_6
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1452
    .local v10, "data":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    .local v13, "arr$":[C
    array-length v14, v13

    .local v14, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_2
    if-ge v15, v14, :cond_8

    aget-char v3, v13, v15

    .line 1453
    .local v3, "br":C
    if-ne v3, v12, :cond_7

    .line 1454
    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_3

    .line 1456
    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1452
    .end local v3    # "br":C
    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto :goto_2

    .line 1459
    .end local v13    # "arr$":[C
    .end local v14    # "len$":I
    .end local v15    # "i$":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1460
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1461
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1462
    move v3, v7

    .line 1463
    .end local v6    # "start":I
    .end local v10    # "data":Ljava/lang/String;
    .local v3, "start":I
    move v6, v3

    goto :goto_4

    .line 1465
    .end local v3    # "start":I
    .restart local v6    # "start":I
    :cond_9
    if-eqz v8, :cond_a

    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1466
    :cond_a
    sub-int v3, v7, v6

    .line 1467
    .local v3, "len":I
    iget v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v10, v3

    iput v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1468
    iget-object v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v10, v1, v6, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1469
    move v6, v7

    .line 1472
    .end local v3    # "len":I
    :cond_b
    :goto_4
    if-eqz v8, :cond_d

    .line 1473
    if-ne v8, v9, :cond_c

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    .line 1474
    .end local v4    # "spaces":Z
    .local v3, "spaces":Z
    :goto_5
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v4

    move v5, v4

    move v4, v3

    .line 1476
    .end local v3    # "spaces":Z
    .restart local v4    # "spaces":Z
    :cond_d
    nop

    .end local v8    # "ch":C
    add-int/lit8 v7, v7, 0x1

    .line 1477
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1478
    :cond_e
    return-void
.end method

.method writeStreamEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->flushStream()V

    .line 1079
    return-void
.end method

.method writeStreamStart()V
    .locals 0

    .line 1075
    return-void
.end method

.method writeTagDirective(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "handleText"    # Ljava/lang/String;
    .param p2, "prefixText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v1, "%TAG "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v1, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    .line 1145
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1147
    return-void
.end method

.method writeVersionDirective(Ljava/lang/String;)V
    .locals 2
    .param p1, "versionText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1134
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v1, "%YAML "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1137
    return-void
.end method
