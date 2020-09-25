.class final Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;
.super Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onCreateSupportNavigateUpTaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/onCreateSupportNavigateUpTaskStack;",
            "Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/onCreateSupportNavigateUpTaskStack;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/onCreateSupportNavigateUpTaskStack;",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
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
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/onCreateSupportNavigateUpTaskStack;",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/onCreateSupportNavigateUpTaskStack;",
            "Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/onCreateSupportNavigateUpTaskStack;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1094
    invoke-direct {p0, v0}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;-><init>(B)V

    .line 1095
    iput-object p1, p0, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1096
    iput-object p2, p0, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1097
    iput-object p3, p0, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1098
    iput-object p4, p0, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1099
    iput-object p5, p0, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/onCreateSupportNavigateUpTaskStack$asBinder;Ljava/lang/Thread;)V
    .locals 1

    .line 1104
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final ICustomTabsCallback(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "*>;",
            "Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;",
            "Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;",
            ")Z"
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final extraCallback(Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)V
    .locals 1

    .line 1109
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "*>;",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            "Lo/onCreateSupportNavigateUpTaskStack$asBinder;",
            ")Z"
        }
    .end annotation

    .line 1114
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
