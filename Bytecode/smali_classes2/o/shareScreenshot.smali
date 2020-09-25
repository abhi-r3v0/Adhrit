.class final Lo/shareScreenshot;
.super Ljava/lang/Object;

# interfaces
.implements Lo/openAmexWebView;


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/view/View;

.field private final synthetic onMessageChannelReady:Lo/refundAccountDataUpdated;


# direct methods
.method constructor <init>(Lo/refundAccountDataUpdated;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lo/shareScreenshot;->onMessageChannelReady:Lo/refundAccountDataUpdated;

    iput-object p2, p0, Lo/shareScreenshot;->ICustomTabsCallback:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    iget-object v0, p0, Lo/shareScreenshot;->onMessageChannelReady:Lo/refundAccountDataUpdated;

    sget-object v1, Lo/refundAccountDataUpdated;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v0, v1}, Lo/refundAccountDataUpdated;->onPostMessage(Lo/refundAccountDataUpdated;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/shareScreenshot;->onMessageChannelReady:Lo/refundAccountDataUpdated;

    iget-object v1, p0, Lo/shareScreenshot;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/refundAccountDataUpdated;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lo/shareScreenshot;->onMessageChannelReady:Lo/refundAccountDataUpdated;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lo/refundAccountDataUpdated;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method
