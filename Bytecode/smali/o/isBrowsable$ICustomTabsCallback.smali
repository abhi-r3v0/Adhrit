.class final Lo/isBrowsable$ICustomTabsCallback;
.super Lo/isBrowsable$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isBrowsable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/isBrowsable;",
            "Lo/isBrowsable$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/isBrowsable;",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/isBrowsable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/isBrowsable;",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/isBrowsable;",
            "Lo/isBrowsable$onNavigationEvent;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/isBrowsable;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1102
    invoke-direct {p0, v0}, Lo/isBrowsable$onMessageChannelReady;-><init>(B)V

    .line 1103
    iput-object p1, p0, Lo/isBrowsable$ICustomTabsCallback;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1104
    iput-object p2, p0, Lo/isBrowsable$ICustomTabsCallback;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1105
    iput-object p3, p0, Lo/isBrowsable$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1106
    iput-object p4, p0, Lo/isBrowsable$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1107
    iput-object p5, p0, Lo/isBrowsable$ICustomTabsCallback;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/isBrowsable;Lo/isBrowsable$onNavigationEvent;Lo/isBrowsable$onNavigationEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isBrowsable<",
            "*>;",
            "Lo/isBrowsable$onNavigationEvent;",
            "Lo/isBrowsable$onNavigationEvent;",
            ")Z"
        }
    .end annotation

    .line 1127
    iget-object v0, p0, Lo/isBrowsable$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final extraCallback(Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)V
    .locals 1

    .line 1117
    iget-object v0, p0, Lo/isBrowsable$ICustomTabsCallback;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final extraCallback(Lo/isBrowsable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isBrowsable<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1132
    iget-object v0, p0, Lo/isBrowsable$ICustomTabsCallback;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final extraCallback(Lo/isBrowsable;Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isBrowsable<",
            "*>;",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            "Lo/isBrowsable$ICustomTabsCallback$Stub;",
            ")Z"
        }
    .end annotation

    .line 1122
    iget-object v0, p0, Lo/isBrowsable$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final onMessageChannelReady(Lo/isBrowsable$ICustomTabsCallback$Stub;Ljava/lang/Thread;)V
    .locals 1

    .line 1112
    iget-object v0, p0, Lo/isBrowsable$ICustomTabsCallback;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
