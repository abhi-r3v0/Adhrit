.class public Lorg/apache/commons/collections4/list/TransformedList$TransformedListIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/TransformedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TransformedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/list/TransformedList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/TransformedList;Ljava/util/ListIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TransformedList$TransformedListIterator;->this$0:Lorg/apache/commons/collections4/list/TransformedList;

    .line 176
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TransformedList$TransformedListIterator;->this$0:Lorg/apache/commons/collections4/list/TransformedList;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/list/TransformedList;->access$000(Lorg/apache/commons/collections4/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList$TransformedListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TransformedList$TransformedListIterator;->this$0:Lorg/apache/commons/collections4/list/TransformedList;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/list/TransformedList;->access$100(Lorg/apache/commons/collections4/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 188
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/TransformedList$TransformedListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
