.class Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EquatorWrapper"
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
.field private final equator:Lorg/apache/commons/collections4/Equator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Equator<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/Equator;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/Equator<",
            "TO;>;TO;)V"
        }
    .end annotation

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object p1, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->equator:Lorg/apache/commons/collections4/Equator;

    .line 575
    iput-object p2, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 584
    instance-of v0, p1, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 588
    :cond_0
    check-cast p1, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;

    .line 589
    iget-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->equator:Lorg/apache/commons/collections4/Equator;

    iget-object v1, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->object:Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 594
    iget-object v0, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->equator:Lorg/apache/commons/collections4/Equator;

    iget-object v1, p0, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;->object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/Equator;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
