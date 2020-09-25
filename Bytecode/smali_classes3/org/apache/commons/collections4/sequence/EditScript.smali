.class public Lorg/apache/commons/collections4/sequence/EditScript;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/collections4/sequence/EditCommand<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private lcsLength:I

.field private modifications:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->commands:Ljava/util/List;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->lcsLength:I

    .line 63
    iput v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    return-void
.end method


# virtual methods
.method public append(Lorg/apache/commons/collections4/sequence/DeleteCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/DeleteCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget p1, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    return-void
.end method

.method public append(Lorg/apache/commons/collections4/sequence/InsertCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/InsertCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget p1, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    return-void
.end method

.method public append(Lorg/apache/commons/collections4/sequence/KeepCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/KeepCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget p1, p0, Lorg/apache/commons/collections4/sequence/EditScript;->lcsLength:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/sequence/EditScript;->lcsLength:I

    return-void
.end method

.method public getLCSLength()I
    .locals 1

    .line 119
    iget v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->lcsLength:I

    return v0
.end method

.method public getModifications()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    return v0
.end method

.method public visit(Lorg/apache/commons/collections4/sequence/CommandVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/CommandVisitor<",
            "TT;>;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/sequence/EditCommand;

    .line 107
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/sequence/EditCommand;->accept(Lorg/apache/commons/collections4/sequence/CommandVisitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method
