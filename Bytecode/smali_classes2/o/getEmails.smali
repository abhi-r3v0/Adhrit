.class public Lo/getEmails;
.super Lo/FragmentViewBindingDelegate$1;
.source ""


# instance fields
.field private final onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection<",
            "Lo/RefundAccount$$Parcelable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private onPostMessage:Lo/getAmount_refunded;


# direct methods
.method private constructor <init>(Lo/Transaction;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lo/FragmentViewBindingDelegate$1;-><init>(Lo/Transaction;)V

    .line 13
    new-instance p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>()V

    iput-object p1, p0, Lo/getEmails;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    .line 14
    iget-object p1, p0, Lo/getEmails;->mLifecycleFragment:Lo/Transaction;

    const-string v0, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, v0, p0}, Lo/Transaction;->extraCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method private final onNavigationEvent()V
    .locals 1

    .line 30
    iget-object v0, p0, Lo/getEmails;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lo/getEmails;->onPostMessage:Lo/getAmount_refunded;

    invoke-virtual {v0, p0}, Lo/getAmount_refunded;->ICustomTabsCallback(Lo/getEmails;)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(Landroid/app/Activity;Lo/getAmount_refunded;Lo/RefundAccount$$Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/getAmount_refunded;",
            "Lo/RefundAccount$$Parcelable<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lo/getEmails;->getFragment(Landroid/app/Activity;)Lo/Transaction;

    move-result-object p0

    .line 2
    const-class v0, Lo/getEmails;

    const-string v1, "ConnectionlessLifecycleHelper"

    .line 3
    invoke-interface {p0, v1, v0}, Lo/Transaction;->extraCallback(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lo/getEmails;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/getEmails;

    invoke-direct {v0, p0}, Lo/getEmails;-><init>(Lo/Transaction;)V

    .line 6
    :cond_0
    iput-object p1, v0, Lo/getEmails;->onPostMessage:Lo/getAmount_refunded;

    const-string p0, "ApiKey cannot be null"

    .line 8
    invoke-static {p2, p0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p0, v0, Lo/getEmails;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {p0, p2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1, v0}, Lo/getAmount_refunded;->ICustomTabsCallback(Lo/getEmails;)V

    return-void
.end method


# virtual methods
.method final extraCallback()Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection<",
            "Lo/RefundAccount$$Parcelable<",
            "*>;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/getEmails;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    return-object v0
.end method

.method protected final onMessageChannelReady(Lo/setReferenceId;I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lo/getEmails;->onPostMessage:Lo/getAmount_refunded;

    invoke-virtual {v0, p1, p2}, Lo/getAmount_refunded;->ICustomTabsCallback(Lo/setReferenceId;I)V

    return-void
.end method

.method protected final onPostMessage()V
    .locals 1

    .line 27
    iget-object v0, p0, Lo/getEmails;->onPostMessage:Lo/getAmount_refunded;

    invoke-virtual {v0}, Lo/getAmount_refunded;->onPostMessage()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 19
    invoke-super {p0}, Lo/FragmentViewBindingDelegate$1;->onResume()V

    .line 20
    invoke-direct {p0}, Lo/getEmails;->onNavigationEvent()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 16
    invoke-super {p0}, Lo/FragmentViewBindingDelegate$1;->onStart()V

    .line 17
    invoke-direct {p0}, Lo/getEmails;->onNavigationEvent()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 22
    invoke-super {p0}, Lo/FragmentViewBindingDelegate$1;->onStop()V

    .line 23
    iget-object v0, p0, Lo/getEmails;->onPostMessage:Lo/getAmount_refunded;

    invoke-virtual {v0, p0}, Lo/getAmount_refunded;->onNavigationEvent(Lo/getEmails;)V

    return-void
.end method
