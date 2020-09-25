.class final Lo/setFrom$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setFrom;
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
.field private synthetic onMessageChannelReady:Lo/setFrom;


# direct methods
.method constructor <init>(Lo/setFrom;)V
    .locals 0

    iput-object p1, p0, Lo/setFrom$onNavigationEvent;->onMessageChannelReady:Lo/setFrom;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 17
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    iget-object p1, p0, Lo/setFrom$onNavigationEvent;->onMessageChannelReady:Lo/setFrom;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lifestyleBadge:I

    invoke-virtual {p1, v0}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "lifestyleBadge"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1114
    sget-object p1, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    iget-object v1, p0, Lo/setFrom$onNavigationEvent;->onMessageChannelReady:Lo/setFrom;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lifestyleBadge:I

    invoke-virtual {v1, v2}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/getPaddingStart;->onPostMessage(Ljava/lang/String;)V

    .line 1116
    :cond_0
    iget-object p1, p0, Lo/setFrom$onNavigationEvent;->onMessageChannelReady:Lo/setFrom;

    .line 2023
    iget-object p1, p1, Lo/setFrom;->ICustomTabsCallback:Lo/setFrom$onPostMessage;

    if-eqz p1, :cond_1

    .line 1116
    iget-object v0, p0, Lo/setFrom$onNavigationEvent;->onMessageChannelReady:Lo/setFrom;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->lifestyle:I

    invoke-virtual {v0, v1}, Lo/setFrom;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "lifestyle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lo/setFrom$onPostMessage;->extraCallback(I)V

    .line 17
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
