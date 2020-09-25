.class final Lo/findMinMaxChildLayoutPositions$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findMinMaxChildLayoutPositions;->setData(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;Lo/hasGapsToFix$onMessageChannelReady;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;

.field private synthetic onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/findMinMaxChildLayoutPositions$ICustomTabsCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;

    iput-object p2, p0, Lo/findMinMaxChildLayoutPositions$ICustomTabsCallback;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 35
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$ICustomTabsCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;

    .line 1088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Section;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p1, :cond_0

    .line 1067
    iget-object v0, p0, Lo/findMinMaxChildLayoutPositions$ICustomTabsCallback;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    if-eqz v0, :cond_0

    check-cast p1, Lo/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    const-string v2, "output_cta_clicked"

    .line 2066
    invoke-interface {v0, v2, p1, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    .line 35
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
