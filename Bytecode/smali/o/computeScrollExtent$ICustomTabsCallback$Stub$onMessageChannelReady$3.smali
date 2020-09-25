.class final Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$1$1$onAnimationEnd$1$2",
        "com/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$1$1$onAnimationEnd$$inlined$executeOnResume$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady$3;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1481
    iget-object v0, p0, Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady$3;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady;

    iget-object v0, v0, Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady;->extraCallback:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    iget-object v1, p0, Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady$3;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady;

    iget-object v1, v1, Lo/computeScrollExtent$ICustomTabsCallback$Stub$onMessageChannelReady;->extraCallback:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    invoke-static {v0, v1}, Lo/computeScrollExtent;->onMessageChannelReady(Lo/computeScrollExtent;Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;)V

    .line 455
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
