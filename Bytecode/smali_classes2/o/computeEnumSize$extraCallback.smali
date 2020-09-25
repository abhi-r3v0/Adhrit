.class abstract Lo/computeEnumSize$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeEnumSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/computeEnumSize$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeEnumSize$onNavigationEvent<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private synthetic extraCallback:Lo/computeEnumSize;

.field private onMessageChannelReady:I

.field private onPostMessage:Lo/computeEnumSize$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeEnumSize$onNavigationEvent<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/computeEnumSize;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lo/computeEnumSize$extraCallback;->extraCallback:Lo/computeEnumSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object p1, p0, Lo/computeEnumSize$extraCallback;->extraCallback:Lo/computeEnumSize;

    iget-object p1, p1, Lo/computeEnumSize;->onMessageChannelReady:Lo/computeEnumSize$onNavigationEvent;

    iget-object p1, p1, Lo/computeEnumSize$onNavigationEvent;->onNavigationEvent:Lo/computeEnumSize$onNavigationEvent;

    iput-object p1, p0, Lo/computeEnumSize$extraCallback;->onPostMessage:Lo/computeEnumSize$onNavigationEvent;

    const/4 p1, 0x0

    .line 528
    iput-object p1, p0, Lo/computeEnumSize$extraCallback;->ICustomTabsCallback:Lo/computeEnumSize$onNavigationEvent;

    .line 529
    iget-object p1, p0, Lo/computeEnumSize$extraCallback;->extraCallback:Lo/computeEnumSize;

    iget p1, p1, Lo/computeEnumSize;->extraCallback:I

    iput p1, p0, Lo/computeEnumSize$extraCallback;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 535
    iget-object v0, p0, Lo/computeEnumSize$extraCallback;->onPostMessage:Lo/computeEnumSize$onNavigationEvent;

    iget-object v1, p0, Lo/computeEnumSize$extraCallback;->extraCallback:Lo/computeEnumSize;

    iget-object v1, v1, Lo/computeEnumSize;->onMessageChannelReady:Lo/computeEnumSize$onNavigationEvent;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final onMessageChannelReady()Lo/computeEnumSize$onNavigationEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/computeEnumSize$onNavigationEvent<",
            "TK;TV;>;"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lo/computeEnumSize$extraCallback;->onPostMessage:Lo/computeEnumSize$onNavigationEvent;

    .line 540
    iget-object v1, p0, Lo/computeEnumSize$extraCallback;->extraCallback:Lo/computeEnumSize;

    iget-object v1, v1, Lo/computeEnumSize;->onMessageChannelReady:Lo/computeEnumSize$onNavigationEvent;

    if-eq v0, v1, :cond_1

    .line 543
    iget-object v1, p0, Lo/computeEnumSize$extraCallback;->extraCallback:Lo/computeEnumSize;

    iget v1, v1, Lo/computeEnumSize;->extraCallback:I

    iget v2, p0, Lo/computeEnumSize$extraCallback;->onMessageChannelReady:I

    if-ne v1, v2, :cond_0

    .line 546
    iget-object v1, v0, Lo/computeEnumSize$onNavigationEvent;->onNavigationEvent:Lo/computeEnumSize$onNavigationEvent;

    iput-object v1, p0, Lo/computeEnumSize$extraCallback;->onPostMessage:Lo/computeEnumSize$onNavigationEvent;

    .line 547
    iput-object v0, p0, Lo/computeEnumSize$extraCallback;->ICustomTabsCallback:Lo/computeEnumSize$onNavigationEvent;

    return-object v0

    .line 544
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 541
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 551
    iget-object v0, p0, Lo/computeEnumSize$extraCallback;->ICustomTabsCallback:Lo/computeEnumSize$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 554
    iget-object v1, p0, Lo/computeEnumSize$extraCallback;->extraCallback:Lo/computeEnumSize;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lo/computeEnumSize;->ICustomTabsCallback(Lo/computeEnumSize$onNavigationEvent;Z)V

    const/4 v0, 0x0

    .line 555
    iput-object v0, p0, Lo/computeEnumSize$extraCallback;->ICustomTabsCallback:Lo/computeEnumSize$onNavigationEvent;

    .line 556
    iget-object v0, p0, Lo/computeEnumSize$extraCallback;->extraCallback:Lo/computeEnumSize;

    iget v0, v0, Lo/computeEnumSize;->extraCallback:I

    iput v0, p0, Lo/computeEnumSize$extraCallback;->onMessageChannelReady:I

    return-void

    .line 552
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
