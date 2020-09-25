.class public Lorg/apache/commons/collections4/EnumerationUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/apache/commons/collections4/iterators/EnumerationIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    invoke-static {v0}, Lorg/apache/commons/collections4/IteratorUtils;->toList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static toList(Ljava/util/StringTokenizer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/StringTokenizer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
