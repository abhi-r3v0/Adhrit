.class public final Lo/applyServerMerge$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/isCacheableHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/applyServerMerge;->ICustomTabsCallback()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
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
        "\u0000#\n\u0000\n\u0002\u0010(\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\t\u0010\u0013\u001a\u00020\u0014H\u0096\u0002J\u000e\u0010\u0015\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004R\u001e\u0010\u0005\u001a\u0004\u0018\u00018\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "kotlin/sequences/FilteringSequence$iterator$1",
        "",
        "iterator",
        "getIterator",
        "()Ljava/util/Iterator;",
        "nextItem",
        "getNextItem",
        "()Ljava/lang/Object;",
        "setNextItem",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "nextState",
        "",
        "getNextState",
        "()I",
        "setNextState",
        "(I)V",
        "calcNext",
        "",
        "hasNext",
        "",
        "next",
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
.field private synthetic ICustomTabsCallback:Lo/applyServerMerge;

.field private extraCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private onNavigationEvent:I


# direct methods
.method constructor <init>(Lo/applyServerMerge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lo/applyServerMerge$ICustomTabsCallback;->ICustomTabsCallback:Lo/applyServerMerge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3119
    iget-object p1, p1, Lo/applyServerMerge;->onPostMessage:Lo/applyTaggedRangeMerges;

    .line 126
    invoke-interface {p1}, Lo/applyTaggedRangeMerges;->ICustomTabsCallback()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lo/applyServerMerge$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Iterator;

    const/4 p1, -0x1

    .line 127
    iput p1, p0, Lo/applyServerMerge$ICustomTabsCallback;->onNavigationEvent:I

    return-void
.end method

.method private final onMessageChannelReady()V
    .locals 3

    .line 131
    :cond_0
    iget-object v0, p0, Lo/applyServerMerge$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lo/applyServerMerge$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lo/applyServerMerge$ICustomTabsCallback;->ICustomTabsCallback:Lo/applyServerMerge;

    .line 1119
    iget-object v1, v1, Lo/applyServerMerge;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 133
    invoke-interface {v1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 134
    iput-object v0, p0, Lo/applyServerMerge$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    .line 135
    iput v2, p0, Lo/applyServerMerge$ICustomTabsCallback;->onNavigationEvent:I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lo/applyServerMerge$ICustomTabsCallback;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 155
    iget v0, p0, Lo/applyServerMerge$ICustomTabsCallback;->onNavigationEvent:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 156
    invoke-direct {p0}, Lo/applyServerMerge$ICustomTabsCallback;->onMessageChannelReady()V

    .line 157
    :cond_0
    iget v0, p0, Lo/applyServerMerge$ICustomTabsCallback;->onNavigationEvent:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 143
    iget v0, p0, Lo/applyServerMerge$ICustomTabsCallback;->onNavigationEvent:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 144
    invoke-direct {p0}, Lo/applyServerMerge$ICustomTabsCallback;->onMessageChannelReady()V

    .line 145
    :cond_0
    iget v0, p0, Lo/applyServerMerge$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lo/applyServerMerge$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 148
    iput-object v2, p0, Lo/applyServerMerge$ICustomTabsCallback;->extraCallback:Ljava/lang/Object;

    .line 149
    iput v1, p0, Lo/applyServerMerge$ICustomTabsCallback;->onNavigationEvent:I

    return-object v0

    .line 146
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
