.class final Lo/setSnapRadius;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/setShowProgressBar;


# direct methods
.method constructor <init>(Lo/setShowProgressBar;)V
    .locals 0

    iput-object p1, p0, Lo/setSnapRadius;->onMessageChannelReady:Lo/setShowProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/setSnapRadius;->onMessageChannelReady:Lo/setShowProgressBar;

    invoke-static {v0}, Lo/setShowProgressBar;->extraCallback(Lo/setShowProgressBar;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Timed out waiting for WebView to finish loading."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setSnapRadius;->onMessageChannelReady:Lo/setShowProgressBar;

    invoke-virtual {v0}, Lo/setShowProgressBar;->onMessageChannelReady()V

    return-void
.end method
