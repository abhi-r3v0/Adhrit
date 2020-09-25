.class Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;
.super Lorg/apache/commons/lang3/text/StrTokenizer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/text/StrBuilder;)V
    .locals 0

    .line 2675
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    .line 2676
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 2692
    invoke-super {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2694
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2683
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object p1, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p3}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2685
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
