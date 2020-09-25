.class final Lo/appendViewToAllSpans$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/appendViewToAllSpans;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
.field private synthetic onNavigationEvent:Lo/appendViewToAllSpans;


# direct methods
.method constructor <init>(Lo/appendViewToAllSpans;)V
    .locals 0

    iput-object p1, p0, Lo/appendViewToAllSpans$1;->onNavigationEvent:Lo/appendViewToAllSpans;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 28
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1103
    iget-object p1, p0, Lo/appendViewToAllSpans$1;->onNavigationEvent:Lo/appendViewToAllSpans;

    .line 2035
    iget-object p1, p1, Lo/appendViewToAllSpans;->onMessageChannelReady:Lo/appendViewToAllSpans$onNavigationEvent;

    if-eqz p1, :cond_0

    .line 2134
    iget-object p1, p1, Lo/appendViewToAllSpans$onNavigationEvent;->onMessageChannelReady:Lo/appendViewToAllSpans$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 2140
    iget-object p1, p1, Lo/appendViewToAllSpans$ICustomTabsCallback;->onMessageChannelReady:Lo/getServerTime;

    if-eqz p1, :cond_0

    .line 1103
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 1104
    :cond_0
    iget-object p1, p0, Lo/appendViewToAllSpans$1;->onNavigationEvent:Lo/appendViewToAllSpans;

    invoke-static {p1}, Lo/appendViewToAllSpans;->onPostMessage(Lo/appendViewToAllSpans;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1105
    iget-object p1, p0, Lo/appendViewToAllSpans$1;->onNavigationEvent:Lo/appendViewToAllSpans;

    invoke-virtual {p1}, Lo/appendViewToAllSpans;->extraCallback()V

    .line 28
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
