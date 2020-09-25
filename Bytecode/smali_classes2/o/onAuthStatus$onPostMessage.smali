.class final Lo/onAuthStatus$onPostMessage;
.super Lo/getMinKey$ICustomTabsCallback$Stub;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAuthStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/getMinKey$onTransact;

.field private synthetic onMessageChannelReady:Lo/onAuthStatus;

.field private final onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lo/onAuthStatus;Lo/getMinKey$onTransact;)V
    .locals 1

    .line 151
    iput-object p1, p0, Lo/onAuthStatus$onPostMessage;->onMessageChannelReady:Lo/onAuthStatus;

    invoke-direct {p0}, Lo/getMinKey$ICustomTabsCallback$Stub;-><init>()V

    .line 149
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/onAuthStatus$onPostMessage;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p2, :cond_0

    .line 152
    check-cast p2, Lo/getMinKey$onTransact;

    iput-object p2, p0, Lo/onAuthStatus$onPostMessage;->ICustomTabsCallback:Lo/getMinKey$onTransact;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "subchannel"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback()Lo/getMinKey$ICustomTabsCallback;
    .locals 3

    .line 157
    iget-object v0, p0, Lo/onAuthStatus$onPostMessage;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lo/onAuthStatus$onPostMessage;->onMessageChannelReady:Lo/onAuthStatus;

    invoke-static {v0}, Lo/onAuthStatus;->onMessageChannelReady(Lo/onAuthStatus;)Lo/getMinKey$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0}, Lo/getMinKey$onMessageChannelReady;->onPostMessage()Lo/unionWith;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    .line 165
    :cond_0
    invoke-static {}, Lo/getMinKey$ICustomTabsCallback;->extraCallback()Lo/getMinKey$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .locals 1

    .line 3147
    iget-object v0, p0, Lo/onAuthStatus$onPostMessage;->ICustomTabsCallback:Lo/getMinKey$onTransact;

    .line 2161
    invoke-virtual {v0}, Lo/getMinKey$onTransact;->onNavigationEvent()V

    return-void
.end method
