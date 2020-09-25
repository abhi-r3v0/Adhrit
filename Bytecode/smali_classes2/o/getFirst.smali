.class public final Lo/getFirst;
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

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0010\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0013\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u000eJ\u0008\u0010\u0012\u001a\u00020\u000eH\u0002J\r\u0010\u0013\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u0014R\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/ArrayQueue;",
        "T",
        "",
        "()V",
        "elements",
        "",
        "[Ljava/lang/Object;",
        "head",
        "",
        "isEmpty",
        "",
        "()Z",
        "tail",
        "addLast",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "clear",
        "ensureCapacity",
        "removeFirstOrNull",
        "()Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public extraCallback:I

.field private onNavigationEvent:[Ljava/lang/Object;

.field public onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lo/getFirst;->onNavigationEvent:[Ljava/lang/Object;

    return-void
.end method

.method private final extraCallback()V
    .locals 14

    .line 36
    iget-object v0, p0, Lo/getFirst;->onNavigationEvent:[Ljava/lang/Object;

    array-length v6, v0

    shl-int/lit8 v1, v6, 0x1

    .line 38
    new-array v13, v1, [Ljava/lang/Object;

    .line 41
    iget v3, p0, Lo/getFirst;->extraCallback:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, v13

    .line 39
    invoke-static/range {v0 .. v5}, Lo/isStopped;->extraCallback([Ljava/lang/Object;[Ljava/lang/Object;IIII)[Ljava/lang/Object;

    .line 43
    iget-object v7, p0, Lo/getFirst;->onNavigationEvent:[Ljava/lang/Object;

    .line 45
    array-length v0, v7

    iget v11, p0, Lo/getFirst;->extraCallback:I

    sub-int v9, v0, v11

    const/4 v10, 0x0

    const/4 v12, 0x4

    move-object v8, v13

    .line 43
    invoke-static/range {v7 .. v12}, Lo/isStopped;->extraCallback([Ljava/lang/Object;[Ljava/lang/Object;IIII)[Ljava/lang/Object;

    .line 48
    iput-object v13, p0, Lo/getFirst;->onNavigationEvent:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lo/getFirst;->extraCallback:I

    .line 50
    iput v6, p0, Lo/getFirst;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    iget v0, p0, Lo/getFirst;->extraCallback:I

    iget v1, p0, Lo/getFirst;->onPostMessage:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 23
    :cond_0
    iget-object v1, p0, Lo/getFirst;->onNavigationEvent:[Ljava/lang/Object;

    aget-object v3, v1, v0

    .line 24
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 25
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lo/getFirst;->extraCallback:I

    if-eqz v3, :cond_1

    return-object v3

    .line 26
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type T"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/getFirst;->onNavigationEvent:[Ljava/lang/Object;

    iget v1, p0, Lo/getFirst;->onPostMessage:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 16
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    iput p1, p0, Lo/getFirst;->onPostMessage:I

    .line 17
    iget v0, p0, Lo/getFirst;->extraCallback:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lo/getFirst;->extraCallback()V

    :cond_0
    return-void
.end method
