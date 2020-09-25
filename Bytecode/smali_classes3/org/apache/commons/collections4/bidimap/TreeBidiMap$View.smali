.class abstract Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final orderType:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 0

    .line 1453
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 1454
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1455
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;->orderType:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1465
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->clear()V

    return-void
.end method

.method public size()I
    .locals 1

    .line 1460
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->size()I

    move-result v0

    return v0
.end method
