.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;
.super Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
        "TK;TV;>.View<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    .line 1474
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 1475
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1485
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$1500(Ljava/lang/Object;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1486
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1480
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;->orderType:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1491
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$KeyView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$1700(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
