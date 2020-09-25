.class final Lo/computeScrollRange$mayLaunchUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollRange;-><init>()V
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
        "Lclub/cred/credcurrency/CredPointCountModel;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lclub/cred/credcurrency/CredPointCountModel;",
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
.field private synthetic onMessageChannelReady:Lo/computeScrollRange;


# direct methods
.method constructor <init>(Lo/computeScrollRange;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollRange$mayLaunchUrl;->onMessageChannelReady:Lo/computeScrollRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 1081
    iget-object p1, p0, Lo/computeScrollRange$mayLaunchUrl;->onMessageChannelReady:Lo/computeScrollRange;

    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v0}, Lo/onPanelClosed;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lo/computeScrollRange;->onMessageChannelReady(Lo/computeScrollRange;J)V

    .line 1082
    iget-object p1, p0, Lo/computeScrollRange$mayLaunchUrl;->onMessageChannelReady:Lo/computeScrollRange;

    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v0}, Lo/onPanelClosed;->onPostMessage()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;J)V

    .line 1083
    iget-object p1, p0, Lo/computeScrollRange$mayLaunchUrl;->onMessageChannelReady:Lo/computeScrollRange;

    invoke-static {p1}, Lo/computeScrollRange;->ICustomTabsCallback$Stub(Lo/computeScrollRange;)V

    return-void
.end method
