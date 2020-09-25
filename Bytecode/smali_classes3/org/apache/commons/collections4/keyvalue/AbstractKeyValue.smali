.class public abstract Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/KeyValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/KeyValue<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->key:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected setKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->key:Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->key:Ljava/lang/Object;

    return-object v0
.end method

.method protected setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->value:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
