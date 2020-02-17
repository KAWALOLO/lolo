.class public final Lorg/yaml/snakeyaml/events/DocumentEndEvent;
.super Lorg/yaml/snakeyaml/events/Event;
.source "DocumentEndEvent.java"


# instance fields
.field private final explicit:Z


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z)V
    .locals 0
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p2, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "explicit"    # Z

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/events/Event;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 31
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/events/DocumentEndEvent;->explicit:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getExplicit()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/events/DocumentEndEvent;->explicit:Z

    return v0
.end method

.method public is(Lorg/yaml/snakeyaml/events/Event$ID;)Z
    .locals 1
    .param p1, "id"    # Lorg/yaml/snakeyaml/events/Event$ID;

    .line 40
    sget-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->DocumentEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
