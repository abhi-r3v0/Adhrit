.class Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;
.super Lorg/apache/commons/collections4/set/AbstractSetDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/set/AbstractSetDecorator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3c6f1d53e93c8f78L


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;Ljava/util/Set;Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    .line 118
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    .line 119
    iput-object p3, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->decorated()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySetIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;Ljava/util/Iterator;Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 131
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 132
    new-instance v2, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$MapEntry;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$MapEntry;-><init>(Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;Ljava/util/Map$Entry;Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 141
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 146
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->decorated()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 147
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 148
    new-instance v3, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$MapEntry;

    iget-object v4, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    aget-object v5, v0, v2

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$MapEntry;-><init>(Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;Ljava/util/Map$Entry;Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    :cond_1
    array-length v2, v0

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 153
    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 157
    :cond_2
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_3

    .line 159
    array-length v0, v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_3
    return-object p1
.end method
