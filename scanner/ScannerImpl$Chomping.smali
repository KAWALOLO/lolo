.class Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
.super Ljava/lang/Object;
.source "ScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/scanner/ScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Chomping"
.end annotation


# instance fields
.field private final increment:I

.field private final value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;I)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;
    .param p2, "increment"    # I

    .line 2271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2272
    iput-object p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->value:Ljava/lang/Boolean;

    .line 2273
    iput p2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->increment:I

    .line 2274
    return-void
.end method


# virtual methods
.method public chompTailIsNotFalse()Z
    .locals 1

    .line 2277
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->value:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public chompTailIsTrue()Z
    .locals 1

    .line 2281
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->value:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIncrement()I
    .locals 1

    .line 2285
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->increment:I

    return v0
.end method
