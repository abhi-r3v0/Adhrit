.class Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardinalityHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final cardinalityA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TO;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final cardinalityB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TO;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->getCardinalityMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityA:Ljava/util/Map;

    .line 72
    invoke-static {p2}, Lorg/apache/commons/collections4/CollectionUtils;->getCardinalityMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityB:Ljava/util/Map;

    return-void
.end method

.method private final getFreq(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 112
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public freqA(Ljava/lang/Object;)I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityA:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public freqB(Ljava/lang/Object;)I
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityB:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public final max(Ljava/lang/Object;)I
    .locals 1

    .line 81
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqA(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqB(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final min(Ljava/lang/Object;)I
    .locals 1

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqA(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqB(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
