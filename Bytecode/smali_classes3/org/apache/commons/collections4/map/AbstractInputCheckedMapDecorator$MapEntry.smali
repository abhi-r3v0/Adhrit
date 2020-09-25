.class Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$MapEntry;
.super Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<",
        "TK;TV;>;"
    }
.end annotation


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
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;Ljava/util/Map$Entry;Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$MapEntry;->this$0:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    .line 195
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;-><init>(Ljava/util/Map$Entry;)V

    .line 196
    iput-object p3, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$MapEntry;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$MapEntry;->parent:Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator;->checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 202
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractInputCheckedMapDecorator$MapEntry;->getMapEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
