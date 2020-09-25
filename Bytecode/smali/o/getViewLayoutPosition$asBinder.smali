.class final Lo/getViewLayoutPosition$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getViewLayoutPosition;
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
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;

.field private synthetic extraCallback:Lo/getViewLayoutPosition;


# direct methods
.method constructor <init>(Lo/getViewLayoutPosition;Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;)V
    .locals 0

    iput-object p1, p0, Lo/getViewLayoutPosition$asBinder;->extraCallback:Lo/getViewLayoutPosition;

    iput-object p2, p0, Lo/getViewLayoutPosition$asBinder;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 63
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1422
    iget-object p1, p0, Lo/getViewLayoutPosition$asBinder;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;

    .line 2057
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p1, :cond_0

    .line 3051
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 1422
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x1cb54

    if-eq v0, v1, :cond_3

    const v1, 0x258156e6

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "deeplink"

    .line 1423
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1424
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    iget-object v0, p0, Lo/getViewLayoutPosition$asBinder;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;

    .line 3057
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    .line 4050
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->ICustomTabsCallback:Ljava/lang/String;

    .line 1424
    invoke-virtual {p1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "web"

    .line 1426
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1427
    iget-object p1, p0, Lo/getViewLayoutPosition$asBinder;->extraCallback:Lo/getViewLayoutPosition;

    invoke-static {p1}, Lo/getViewLayoutPosition;->onPostMessage(Lo/getViewLayoutPosition;)Lo/getMoveDuration;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p1, p0, Lo/getViewLayoutPosition$asBinder;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;

    .line 4057
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/tabholder/LockConfigData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    .line 5050
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    .line 1427
    invoke-static/range {v0 .. v5}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 63
    :cond_4
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
