.class public abstract Lo/ContactReverseSyncResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setSwipedDirection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setSwipedDirection<",
        "Lo/PaymentModeListResponseJsonAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Runnable;

.field private volatile extraCallback:Ljava/lang/Thread;

.field private onMessageChannelReady:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/ContactReverseSyncResponseJsonAdapter;

    invoke-direct {v0, p0}, Lo/ContactReverseSyncResponseJsonAdapter;-><init>(Lo/ContactReverseSyncResponse;)V

    iput-object v0, p0, Lo/ContactReverseSyncResponse;->ICustomTabsCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ContactReverseSyncResponse;->onMessageChannelReady:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lo/ContactReverseSyncResponseJsonAdapter;

    invoke-direct {p1, p0}, Lo/ContactReverseSyncResponseJsonAdapter;-><init>(Lo/ContactReverseSyncResponse;)V

    iput-object p1, p0, Lo/ContactReverseSyncResponse;->ICustomTabsCallback:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/ContactReverseSyncResponse;->onMessageChannelReady:Z

    return-void
.end method

.method static synthetic onPostMessage(Lo/ContactReverseSyncResponse;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lo/ContactReverseSyncResponse;->extraCallback:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public final asBinder()Lo/PaymentModeListResponseJsonAdapter;
    .locals 1

    iget-boolean v0, p0, Lo/ContactReverseSyncResponse;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ContactReverseSyncResponse;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-static {v0}, Lo/AmexLoginStatus;->onMessageChannelReady(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/ContactReverseSyncResponse;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-static {v0}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 1

    invoke-virtual {p0}, Lo/ContactReverseSyncResponse;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/ContactReverseSyncResponse;->extraCallback:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ContactReverseSyncResponse;->extraCallback:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public abstract onPostMessage()V
.end method

.method public final synthetic s_()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lo/ContactReverseSyncResponse;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ContactReverseSyncResponse;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-static {v0}, Lo/AmexLoginStatus;->onMessageChannelReady(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/ContactReverseSyncResponse;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-static {v0}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v0

    return-object v0
.end method
