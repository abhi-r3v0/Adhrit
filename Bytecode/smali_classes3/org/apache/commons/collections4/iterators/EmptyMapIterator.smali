.class public Lorg/apache/commons/collections4/iterators/EmptyMapIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractEmptyMapIterator;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/MapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractEmptyMapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/MapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/MapIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections4/MapIterator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyMapIterator;-><init>()V

    return-void
.end method

.method public static emptyMapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections4/MapIterator;

    return-object v0
.end method
