.class final Lo/isItemChanged$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isItemChanged;->ICustomTabsCallback(Lo/getServerTime;)V
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
.field final synthetic ICustomTabsCallback:Lo/updateAllRemainingSpans;

.field final synthetic onMessageChannelReady:Lo/getServerTime;

.field final synthetic onNavigationEvent:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;Lo/getServerTime;Lo/updateAllRemainingSpans;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$onMessageChannelReady;->onNavigationEvent:Lo/isItemChanged;

    iput-object p2, p0, Lo/isItemChanged$onMessageChannelReady;->onMessageChannelReady:Lo/getServerTime;

    iput-object p3, p0, Lo/isItemChanged$onMessageChannelReady;->ICustomTabsCallback:Lo/updateAllRemainingSpans;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 67
    check-cast p1, Lo/updateAllRemainingSpans$onMessageChannelReady;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13035d

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    .line 2151
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 1628
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13035c

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    .line 2152
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 1629
    new-instance v0, Lo/updateAllRemainingSpans$extraCallback;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1304bd

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/isItemChanged$onMessageChannelReady$5;

    invoke-direct {v2, p0}, Lo/isItemChanged$onMessageChannelReady$5;-><init>(Lo/isItemChanged$onMessageChannelReady;)V

    check-cast v2, Lo/getServerTime;

    invoke-direct {v0, v1, v2}, Lo/updateAllRemainingSpans$extraCallback;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    .line 2153
    iput-object v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    const/4 v0, 0x0

    .line 2156
    iput-boolean v0, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    .line 67
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method