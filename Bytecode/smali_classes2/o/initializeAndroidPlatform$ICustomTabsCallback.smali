.class Lo/initializeAndroidPlatform$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/isCacheableHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/initializeAndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Lo/isCacheableHost;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0092\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\t\u0010\t\u001a\u00020\nH\u0096\u0002J\u000e\u0010\u000b\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000cR\u001a\u0010\u0003\u001a\u00020\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/collections/AbstractList$IteratorImpl;",
        "",
        "(Lkotlin/collections/AbstractList;)V",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "hasNext",
        "",
        "next",
        "()Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private synthetic onPostMessage:Lo/initializeAndroidPlatform;


# direct methods
.method public constructor <init>(Lo/initializeAndroidPlatform;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lo/initializeAndroidPlatform$ICustomTabsCallback;->onPostMessage:Lo/initializeAndroidPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(I)V
    .locals 0

    .line 72
    iput p1, p0, Lo/initializeAndroidPlatform$ICustomTabsCallback;->ICustomTabsCallback:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 74
    iget v0, p0, Lo/initializeAndroidPlatform$ICustomTabsCallback;->ICustomTabsCallback:I

    iget-object v1, p0, Lo/initializeAndroidPlatform$ICustomTabsCallback;->onPostMessage:Lo/initializeAndroidPlatform;

    invoke-virtual {v1}, Lo/rootWrite;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lo/initializeAndroidPlatform$ICustomTabsCallback;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lo/initializeAndroidPlatform$ICustomTabsCallback;->onPostMessage:Lo/initializeAndroidPlatform;

    iget v1, p0, Lo/initializeAndroidPlatform$ICustomTabsCallback;->ICustomTabsCallback:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/initializeAndroidPlatform$ICustomTabsCallback;->ICustomTabsCallback:I

    invoke-virtual {v0, v1}, Lo/initializeAndroidPlatform;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected final onPostMessage()I
    .locals 1

    .line 72
    iget v0, p0, Lo/initializeAndroidPlatform$ICustomTabsCallback;->ICustomTabsCallback:I

    return v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
