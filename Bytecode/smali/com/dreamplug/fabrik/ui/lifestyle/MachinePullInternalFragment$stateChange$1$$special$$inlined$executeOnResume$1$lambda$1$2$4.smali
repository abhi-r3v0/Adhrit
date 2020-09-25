.class final Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage(Lo/toLegacyStreamType;)V
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
        "com/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$1$1$onAnimationEnd$$inlined$executeOnResume$1$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2$4;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2$4;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2$4;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    invoke-static {v0, v1}, Lo/computeScrollExtent;->onMessageChannelReady(Lo/computeScrollExtent;Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;)V

    .line 455
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
