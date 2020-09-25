.class final Lo/getMaxAvailableHeight$onTransact$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxAvailableHeight$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/updateAllRemainingSpans$onMessageChannelReady;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/dreamplug/widget/GenericBottomSheet$UIState;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/toDebugString$ICustomTabsCallback;

.field final synthetic extraCallback:Lo/fromPathMerge;

.field final synthetic onMessageChannelReady:Lo/getMaxAvailableHeight$onTransact;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight$onTransact;Ljava/lang/String;Ljava/lang/String;Lo/fromPathMerge;Lo/toDebugString$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$onTransact$3;->onMessageChannelReady:Lo/getMaxAvailableHeight$onTransact;

    iput-object p2, p0, Lo/getMaxAvailableHeight$onTransact$3;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/getMaxAvailableHeight$onTransact$3;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p0, Lo/getMaxAvailableHeight$onTransact$3;->extraCallback:Lo/fromPathMerge;

    iput-object p5, p0, Lo/getMaxAvailableHeight$onTransact$3;->ICustomTabsCallback:Lo/toDebugString$ICustomTabsCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 45
    check-cast p1, Lo/updateAllRemainingSpans$onMessageChannelReady;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lo/getMaxAvailableHeight$onTransact$3;->onPostMessage:Ljava/lang/String;

    .line 2151
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 1329
    sget-object v0, Lo/onMoveFinished;->onMessageChannelReady:Lo/onMoveFinished;

    iget-object v0, p0, Lo/getMaxAvailableHeight$onTransact$3;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/onMoveFinished;->ICustomTabsCallback(Ljava/lang/String;Z)Lo/snapFromFling$ICustomTabsCallback$Stub;

    move-result-object v0

    .line 3058
    iget-object v0, v0, Lo/snapFromFling$ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/String;

    .line 3152
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 1330
    new-instance v0, Lo/updateAllRemainingSpans$extraCallback;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->upi_retry:I

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/getMaxAvailableHeight$onTransact$3$4;

    invoke-direct {v2, p0}, Lo/getMaxAvailableHeight$onTransact$3$4;-><init>(Lo/getMaxAvailableHeight$onTransact$3;)V

    check-cast v2, Lo/getServerTime;

    invoke-direct {v0, v1, v2}, Lo/updateAllRemainingSpans$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    .line 3153
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    .line 1333
    new-instance v0, Lo/updateAllRemainingSpans$extraCallback;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->upi_go_back:I

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/getMaxAvailableHeight$onTransact$3$3;

    invoke-direct {v2, p0}, Lo/getMaxAvailableHeight$onTransact$3$3;-><init>(Lo/getMaxAvailableHeight$onTransact$3;)V

    check-cast v2, Lo/getServerTime;

    invoke-direct {v0, v1, v2}, Lo/updateAllRemainingSpans$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    .line 3154
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    .line 45
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
