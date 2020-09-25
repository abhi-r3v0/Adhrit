.class Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;
.super Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmodifiableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;->this$0:Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;

    .line 174
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 179
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
