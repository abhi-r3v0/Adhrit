.class Lorg/apache/commons/collections4/bag/SynchronizedBag$SynchronizedBagSet;
.super Lorg/apache/commons/collections4/collection/SynchronizedCollection;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bag/SynchronizedBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SynchronizedBagSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/collection/SynchronizedCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29809fd59bec814fL


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/bag/SynchronizedBag;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/bag/SynchronizedBag;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lorg/apache/commons/collections4/bag/SynchronizedBag$SynchronizedBagSet;->this$0:Lorg/apache/commons/collections4/bag/SynchronizedBag;

    .line 126
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method
