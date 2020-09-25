.class final Lo/findTargetSnapPosition$newSession$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findTargetSnapPosition$newSession;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;",
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/SimpleBottomSheetView$Cta$Builder;",
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
.field final synthetic extraCallback:Ljava/lang/String;

.field final synthetic onPostMessage:Lo/findTargetSnapPosition$newSession;


# direct methods
.method constructor <init>(Lo/findTargetSnapPosition$newSession;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/findTargetSnapPosition$newSession$onMessageChannelReady;->onPostMessage:Lo/findTargetSnapPosition$newSession;

    iput-object p2, p0, Lo/findTargetSnapPosition$newSession$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 168
    check-cast p1, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lo/findTargetSnapPosition$newSession$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    const-string v1, "inadequate_points"

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130295

    .line 1188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f130294

    .line 1190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2053
    :goto_0
    iput-object v0, p1, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;->onNavigationEvent:Ljava/lang/Integer;

    .line 1192
    new-instance v0, Lo/findTargetSnapPosition$newSession$onMessageChannelReady$2;

    invoke-direct {v0, p0}, Lo/findTargetSnapPosition$newSession$onMessageChannelReady$2;-><init>(Lo/findTargetSnapPosition$newSession$onMessageChannelReady;)V

    check-cast v0, Lo/getServerTime;

    .line 2055
    iput-object v0, p1, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/getServerTime;

    .line 168
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
