.class public Lio/bloco/faker/components/Lorem;
.super Lio/bloco/faker/FakerComponent;
.source "Lorem.java"


# static fields
.field private static final DEFAULT_CHAR_COUNT:I = 0xff

.field private static final DEFAULT_NUM:I = 0x3

.field private static final DEFAULT_PARAGRAPH_COUNT:I = 0x3

.field private static final DEFAULT_SENTENCES_TO_ADD:I = 0x3

.field private static final DEFAULT_SENTENCE_COUNT:I = 0x3

.field private static final DEFAULT_SUPPLEMENTAL:Z = false

.field private static final DEFAULT_WORDS_TO_ADD:I = 0x6

.field private static final DEFAULT_WORD_COUNT:I = 0x4


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 0
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 21
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 22
    return-void
.end method


# virtual methods
.method public character()Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lio/bloco/faker/components/Lorem;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public characters()Ljava/lang/String;
    .locals 1

    .line 57
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Lorem;->characters(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public characters(I)Ljava/lang/String;
    .locals 3
    .param p1, "count"    # I

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, "characters":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lio/bloco/faker/components/Lorem;->character()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public paragraph()Ljava/lang/String;
    .locals 1

    .line 105
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Lorem;->paragraph(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public paragraph(I)Ljava/lang/String;
    .locals 1
    .param p1, "sentenceCount"    # I

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Lorem;->paragraph(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public paragraph(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "sentenceCount"    # I
    .param p2, "supplemental"    # Z

    .line 113
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lio/bloco/faker/components/Lorem;->paragraph(IZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public paragraph(IZI)Ljava/lang/String;
    .locals 4
    .param p1, "sentenceCount"    # I
    .param p2, "supplemental"    # Z
    .param p3, "randomSentencesToAdd"    # I

    .line 117
    iget-object v0, p0, Lio/bloco/faker/components/Lorem;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 118
    .local v0, "finalSentenceCount":I
    invoke-virtual {p0, v0, p2}, Lio/bloco/faker/components/Lorem;->sentences(IZ)Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "sentences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lio/bloco/faker/components/Lorem;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v3, " "

    invoke-virtual {v2, v1, v3}, Lio/bloco/faker/helpers/StringHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public paragraphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Lorem;->paragraphs(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public paragraphs(I)Ljava/util/List;
    .locals 1
    .param p1, "paragraphCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Lorem;->paragraphs(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public paragraphs(IZ)Ljava/util/List;
    .locals 3
    .param p1, "paragraphCount"    # I
    .param p2, "supplemental"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v0, "paragraphs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 133
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p2}, Lio/bloco/faker/components/Lorem;->paragraph(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public question()Ljava/lang/String;
    .locals 1

    .line 139
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Lorem;->question(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public question(I)Ljava/lang/String;
    .locals 1
    .param p1, "wordCount"    # I

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Lorem;->question(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public question(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "wordCount"    # I
    .param p2, "supplemental"    # Z

    .line 147
    const/4 v0, 0x6

    invoke-virtual {p0, p1, p2, v0}, Lio/bloco/faker/components/Lorem;->question(IZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public question(IZI)Ljava/lang/String;
    .locals 6
    .param p1, "wordCount"    # I
    .param p2, "supplemental"    # Z
    .param p3, "randomWordsToAdd"    # I

    .line 151
    iget-object v0, p0, Lio/bloco/faker/components/Lorem;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 152
    .local v0, "finalWordCount":I
    invoke-virtual {p0, v0, p2}, Lio/bloco/faker/components/Lorem;->words(IZ)Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "questionWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lio/bloco/faker/components/Lorem;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v3, " "

    invoke-virtual {v2, v1, v3}, Lio/bloco/faker/helpers/StringHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "sentence":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public questions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Lorem;->questions(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public questions(I)Ljava/util/List;
    .locals 1
    .param p1, "questionsCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Lorem;->questions(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public questions(IZ)Ljava/util/List;
    .locals 3
    .param p1, "questionsCount"    # I
    .param p2, "supplemental"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v0, "questions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 169
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p2}, Lio/bloco/faker/components/Lorem;->question(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public sentence()Ljava/lang/String;
    .locals 1

    .line 69
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Lorem;->sentence(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sentence(I)Ljava/lang/String;
    .locals 1
    .param p1, "wordCount"    # I

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Lorem;->sentence(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sentence(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "wordCount"    # I
    .param p2, "supplemental"    # Z

    .line 77
    const/4 v0, 0x6

    invoke-virtual {p0, p1, p2, v0}, Lio/bloco/faker/components/Lorem;->sentence(IZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sentence(IZI)Ljava/lang/String;
    .locals 6
    .param p1, "wordCount"    # I
    .param p2, "supplemental"    # Z
    .param p3, "randomWordsToAdd"    # I

    .line 81
    iget-object v0, p0, Lio/bloco/faker/components/Lorem;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 82
    .local v0, "finalWordCount":I
    invoke-virtual {p0, v0, p2}, Lio/bloco/faker/components/Lorem;->words(IZ)Ljava/util/List;

    move-result-object v1

    .line 83
    .local v1, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/bloco/faker/components/Lorem;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v4, " "

    invoke-virtual {v3, v1, v4}, Lio/bloco/faker/helpers/StringHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "sentence":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    return-object v2
.end method

.method public sentences()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/bloco/faker/components/Lorem;->sentences(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sentences(I)Ljava/util/List;
    .locals 1
    .param p1, "sentenceCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Lorem;->sentences(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sentences(IZ)Ljava/util/List;
    .locals 3
    .param p1, "sentenceCount"    # I
    .param p2, "supplemental"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v0, "sentences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 99
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p2}, Lio/bloco/faker/components/Lorem;->sentence(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public supplemental()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "lorem.supplemental"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Lorem;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public word()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "lorem.words"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Lorem;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public words()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Lorem;->words(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public words(I)Ljava/util/List;
    .locals 1
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Lorem;->words(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public words(IZ)Ljava/util/List;
    .locals 3
    .param p1, "num"    # I
    .param p2, "supplemental"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .local v0, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 43
    if-eqz p2, :cond_0

    iget-object v2, p0, Lio/bloco/faker/components/Lorem;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v2}, Lio/bloco/faker/helpers/RandomHelper;->randBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {p0}, Lio/bloco/faker/components/Lorem;->supplemental()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p0}, Lio/bloco/faker/components/Lorem;->word()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method
