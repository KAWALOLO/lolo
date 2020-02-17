.class Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/emitter/EmitterState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/emitter/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpectBlockSequenceItem"
.end annotation


# instance fields
.field private first:Z

.field final synthetic this$0:Lorg/yaml/snakeyaml/emitter/Emitter;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;Z)V
    .locals 0
    .param p2, "first"    # Z

    .line 585
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->first:Z

    .line 587
    return-void
.end method


# virtual methods
.method public expect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->first:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1900(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1802(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 592
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/emitter/EmitterState;

    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 595
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$3200(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$3300(Lorg/yaml/snakeyaml/emitter/Emitter;I)V

    .line 596
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const-string v1, "-"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 597
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v0

    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {v1, v2, v3}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Z)V

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0, v3, v3, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1600(Lorg/yaml/snakeyaml/emitter/Emitter;ZZZ)V

    .line 600
    :goto_0
    return-void
.end method
