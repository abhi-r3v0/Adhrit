.class final Lo/onListenRevoked$ICustomTabsCallback;
.super Lo/onListenRevoked$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onListenRevoked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lo/onListenRevoked;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lo/onListenRevoked;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0}, Lo/onListenRevoked$extraCallback;-><init>(B)V

    .line 149
    iput-object p1, p0, Lo/onListenRevoked$ICustomTabsCallback;->onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;B)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lo/onListenRevoked$ICustomTabsCallback;-><init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/onListenRevoked;)Z
    .locals 3

    .line 154
    iget-object v0, p0, Lo/onListenRevoked$ICustomTabsCallback;->onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage(Lo/onListenRevoked;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lo/onListenRevoked$ICustomTabsCallback;->onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method
