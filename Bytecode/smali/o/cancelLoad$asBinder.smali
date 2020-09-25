.class final Lo/cancelLoad$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelLoad;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onPostMessage:Lo/cancelLoad;


# direct methods
.method constructor <init>(Lo/cancelLoad;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/cancelLoad$asBinder;->onPostMessage:Lo/cancelLoad;

    iput-object p2, p0, Lo/cancelLoad$asBinder;->onMessageChannelReady:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 41
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 2043
    new-instance v1, Lo/addWrite;

    const-string v2, "cta_type"

    const-string v3, "pay_now"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "pairs"

    .line 1128
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "verify_card_successful_screen_cta"

    .line 1128
    invoke-static {p1, v1}, Lo/cancelLoad;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1131
    iget-object p1, p0, Lo/cancelLoad$asBinder;->onPostMessage:Lo/cancelLoad;

    .line 3000
    iget-object p1, p1, Lo/cancelLoad;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 1131
    iget-object v0, p0, Lo/cancelLoad$asBinder;->onPostMessage:Lo/cancelLoad;

    invoke-static {v0}, Lo/cancelLoad;->onPostMessage(Lo/cancelLoad;)Lo/takeContentChanged;

    move-result-object v0

    .line 3020
    iget-object v0, v0, Lo/takeContentChanged;->asInterface:Ljava/lang/String;

    .line 1131
    iget-object v1, p0, Lo/cancelLoad$asBinder;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget-object p1, p0, Lo/cancelLoad$asBinder;->onPostMessage:Lo/cancelLoad;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 41
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
