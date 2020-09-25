.class public Lorg/apache/commons/collections4/sequence/DeleteCommand;
.super Lorg/apache/commons/collections4/sequence/EditCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/sequence/EditCommand<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/sequence/EditCommand;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/commons/collections4/sequence/CommandVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/CommandVisitor<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/collections4/sequence/DeleteCommand;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/sequence/CommandVisitor;->visitDeleteCommand(Ljava/lang/Object;)V

    return-void
.end method
