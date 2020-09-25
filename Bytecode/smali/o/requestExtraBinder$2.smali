.class final Lo/requestExtraBinder$2;
.super Lo/handleMediaPlayPauseKeySingleTapIfPending;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestExtraBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/requestExtraBinder;


# direct methods
.method constructor <init>(Lo/requestExtraBinder;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lo/requestExtraBinder$2;->onPostMessage:Lo/requestExtraBinder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/handleMediaPlayPauseKeySingleTapIfPending;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 2

    .line 350
    iget-object v0, p0, Lo/requestExtraBinder$2;->onPostMessage:Lo/requestExtraBinder;

    const/4 v1, 0x1

    .line 1550
    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->ICustomTabsCallback(Z)Z

    .line 1551
    iget-object v1, v0, Lo/requestExtraBinder;->onPostMessage:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    invoke-virtual {v1}, Lo/handleMediaPlayPauseKeySingleTapIfPending;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    invoke-virtual {v0}, Lo/requestExtraBinder;->ICustomTabsCallback()Z

    return-void

    .line 1561
    :cond_0
    iget-object v0, v0, Lo/requestExtraBinder;->ICustomTabsCallback:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->extraCallback()V

    return-void
.end method
