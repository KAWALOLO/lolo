.class public final Lorg/yaml/snakeyaml/scanner/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final ALPHA_S:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-_"

.field public static final FULL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final FULL_LINEBR_S:Ljava/lang/String; = "\r\n\u0085\u2028\u2029"

.field public static final LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final LINEBR_S:Ljava/lang/String; = "\n\u0085\u2028\u2029"

.field public static final NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final NULL_BL_LINEBR_S:Ljava/lang/String; = " \u0000\r\n\u0085\u2028\u2029"

.field public static final NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

.field public static final NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final NULL_BL_T_LINEBR_S:Ljava/lang/String; = "\t \u0000\r\n\u0085\u2028\u2029"

.field private static final NULL_BL_T_S:Ljava/lang/String; = "\u0000 \t"

.field public static final NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final NULL_OR_LINEBR_S:Ljava/lang/String; = "\u0000\r\n\u0085\u2028\u2029"

.field public static final URI_CHARS:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final URI_CHARS_S:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-_-;/?:@&=+$,_.!~*\'()[]%"


# instance fields
.field contains:[Z

.field private content:Ljava/lang/String;

.field noASCII:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "\n\u0085\u2028\u2029"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 32
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "\r\n\u0085\u2028\u2029"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->FULL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 33
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "\u0000\r\n\u0085\u2028\u2029"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 34
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, " \u0000\r\n\u0085\u2028\u2029"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 35
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "\t \u0000\r\n\u0085\u2028\u2029"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 36
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "\u0000 \t"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 37
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-_-;/?:@&=+$,_.!~*\'()[]%"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->URI_CHARS:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 39
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-_"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x80

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/yaml/snakeyaml/scanner/Constant;->contains:[Z

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/Constant;->noASCII:Z

    .line 46
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/Constant;->contains:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 50
    .local v3, "ch":C
    if-ge v3, v0, :cond_0

    .line 51
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/Constant;->contains:[Z

    aput-boolean v4, v5, v3

    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .end local v3    # "ch":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 56
    iput-boolean v4, p0, Lorg/yaml/snakeyaml/scanner/Constant;->noASCII:Z

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/Constant;->content:Ljava/lang/String;

    .line 59
    :cond_2
    return-void
.end method


# virtual methods
.method public has(C)Z
    .locals 3
    .param p1, "ch"    # C

    .line 62
    const/4 v0, 0x0

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/Constant;->contains:[Z

    aget-boolean v0, v0, p1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/Constant;->noASCII:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/Constant;->content:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public has(CLjava/lang/String;)Z
    .locals 3
    .param p1, "ch"    # C
    .param p2, "additional"    # Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasNo(C)Z
    .locals 1
    .param p1, "ch"    # C

    .line 66
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasNo(CLjava/lang/String;)Z
    .locals 1
    .param p1, "ch"    # C
    .param p2, "additional"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p0, p1, p2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(CLjava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
