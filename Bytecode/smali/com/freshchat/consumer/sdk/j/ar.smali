.class public Lcom/freshchat/consumer/sdk/j/ar;
.super Ljava/util/LinkedList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private maxSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/ar;->getMaxSize()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return p1
.end method

.method public getMaxSize()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/j/ar;->maxSize:I

    return v0
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/j/ar;->maxSize:I

    return-void
.end method
