.class Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/FixedSizeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FixedSizeListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/list/FixedSizeList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/FixedSizeList;Ljava/util/ListIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lorg/apache/commons/collections4/list/FixedSizeList$FixedSizeListIterator;->this$0:Lorg/apache/commons/collections4/list/FixedSizeList;

    .line 162
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 170
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "List is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove()V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "List is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
