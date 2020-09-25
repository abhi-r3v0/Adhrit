.class final Lo/getSpanGroupIndex$requestPostMessageChannel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/onAnchorReady;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "state",
        "Lcom/dreamplug/fabrik/ui/lending/LendingSetupStates;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$requestPostMessageChannel;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 79
    check-cast p1, Lo/onAnchorReady;

    .line 1240
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "State"

    invoke-static {v1, v0}, Lo/replaceAll;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lo/getSpanGroupIndex$requestPostMessageChannel;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v0

    .line 2074
    iget-object v0, v0, Lo/getSpanIndex;->INotificationSideChannel:Lo/onAnchorReady;

    .line 1241
    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lo/getSpanGroupIndex$requestPostMessageChannel;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v0

    .line 3074
    iput-object p1, v0, Lo/getSpanIndex;->INotificationSideChannel:Lo/onAnchorReady;

    .line 1243
    iget-object v0, p0, Lo/getSpanGroupIndex$requestPostMessageChannel;->onNavigationEvent:Lo/getSpanGroupIndex;

    const-string/jumbo v1, "state"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/getSpanGroupIndex;->ICustomTabsCallback(Lo/getSpanGroupIndex;Lo/onAnchorReady;)V

    .line 1244
    iget-object v0, p0, Lo/getSpanGroupIndex$requestPostMessageChannel;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {v0, p1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;Lo/onAnchorReady;)V

    :cond_0
    return-void
.end method
