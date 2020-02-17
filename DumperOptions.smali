.class public Lorg/yaml/snakeyaml/DumperOptions;
.super Ljava/lang/Object;
.source "DumperOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/DumperOptions$Version;,
        Lorg/yaml/snakeyaml/DumperOptions$LineBreak;,
        Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;,
        Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    }
.end annotation


# instance fields
.field private allowReadOnlyProperties:Z

.field private allowUnicode:Z

.field private anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

.field private bestWidth:I

.field private canonical:Z

.field private defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field private defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field private explicitEnd:Z

.field private explicitStart:Z

.field private indent:I

.field private indicatorIndent:I

.field private lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

.field private prettyFlow:Ljava/lang/Boolean;

.field private splitLines:Z

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeZone:Ljava/util/TimeZone;

.field private version:Lorg/yaml/snakeyaml/DumperOptions$Version;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 161
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    .line 164
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    .line 165
    const/4 v2, 0x2

    iput v2, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    .line 166
    iput v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indicatorIndent:I

    .line 167
    const/16 v2, 0x50

    iput v2, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    .line 168
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->splitLines:Z

    .line 169
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->UNIX:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 170
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    .line 171
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    .line 174
    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 175
    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    .line 176
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    .line 177
    new-instance v1, Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;-><init>(I)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    return-void
.end method


# virtual methods
.method public getAnchorGenerator()Lorg/yaml/snakeyaml/serializer/AnchorGenerator;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    return-object v0
.end method

.method public getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method

.method public getDefaultScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0
.end method

.method public getIndent()I
    .locals 1

    .line 226
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    return v0
.end method

.method public getIndicatorIndent()I
    .locals 1

    .line 240
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indicatorIndent:I

    return v0
.end method

.method public getLineBreak()Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    return-object v0
.end method

.method public getSplitLines()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->splitLines:Z

    return v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 293
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    return v0
.end method

.method public isAllowReadOnlyProperties()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    return v0
.end method

.method public isAllowUnicode()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    return v0
.end method

.method public isCanonical()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    return v0
.end method

.method public isExplicitEnd()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    return v0
.end method

.method public isExplicitStart()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    return v0
.end method

.method public isPrettyFlow()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAllowReadOnlyProperties(Z)V
    .locals 0
    .param p1, "allowReadOnlyProperties"    # Z

    .line 383
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    .line 384
    return-void
.end method

.method public setAllowUnicode(Z)V
    .locals 0
    .param p1, "allowUnicode"    # Z

    .line 194
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    .line 195
    return-void
.end method

.method public setAnchorGenerator(Lorg/yaml/snakeyaml/serializer/AnchorGenerator;)V
    .locals 0
    .param p1, "anchorGenerator"    # Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    .line 406
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    .line 407
    return-void
.end method

.method public setCanonical(Z)V
    .locals 0
    .param p1, "canonical"    # Z

    .line 258
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    .line 259
    return-void
.end method

.method public setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .locals 2
    .param p1, "defaultFlowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 316
    if-eqz p1, :cond_0

    .line 319
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 320
    return-void

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use FlowStyle enum."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultScalarStyle(Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V
    .locals 2
    .param p1, "defaultStyle"    # Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 209
    if-eqz p1, :cond_0

    .line 212
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 213
    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use ScalarStyle enum."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExplicitEnd(Z)V
    .locals 0
    .param p1, "explicitEnd"    # Z

    .line 353
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    .line 354
    return-void
.end method

.method public setExplicitStart(Z)V
    .locals 0
    .param p1, "explicitStart"    # Z

    .line 345
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    .line 346
    return-void
.end method

.method public setIndent(I)V
    .locals 2
    .param p1, "indent"    # I

    .line 216
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 219
    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 222
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    .line 223
    return-void

    .line 220
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indent must be at most 10"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indent must be at least 1"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndicatorIndent(I)V
    .locals 2
    .param p1, "indicatorIndent"    # I

    .line 230
    if-ltz p1, :cond_1

    .line 233
    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 236
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->indicatorIndent:I

    .line 237
    return-void

    .line 234
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indicator indent must be at most Emitter.MAX_INDENT-1: 9"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indicator indent must be non-negative."

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLineBreak(Lorg/yaml/snakeyaml/DumperOptions$LineBreak;)V
    .locals 2
    .param p1, "lineBreak"    # Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 334
    if-eqz p1, :cond_0

    .line 337
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 338
    return-void

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specify line break."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrettyFlow(Z)V
    .locals 1
    .param p1, "prettyFlow"    # Z

    .line 273
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    .line 274
    return-void
.end method

.method public setSplitLines(Z)V
    .locals 0
    .param p1, "splitLines"    # Z

    .line 304
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->splitLines:Z

    .line 305
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 361
    .local p1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    .line 362
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 397
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    .line 398
    return-void
.end method

.method public setVersion(Lorg/yaml/snakeyaml/DumperOptions$Version;)V
    .locals 0
    .param p1, "version"    # Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 244
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 245
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "bestWidth"    # I

    .line 289
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    .line 290
    return-void
.end method
