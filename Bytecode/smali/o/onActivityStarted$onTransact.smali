.class final Lo/onActivityStarted$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityStarted;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/onActivityStarted;


# direct methods
.method constructor <init>(Lo/onActivityStarted;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityStarted$onTransact;->onNavigationEvent:Lo/onActivityStarted;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 38
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Lo/addWrite;

    .line 2043
    new-instance v1, Lo/addWrite;

    const-string/jumbo v2, "source"

    const-string v3, "invite_manage"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1101
    iget-object v1, p0, Lo/onActivityStarted$onTransact;->onNavigationEvent:Lo/onActivityStarted;

    invoke-static {v1}, Lo/onActivityStarted;->ICustomTabsCallback(Lo/onActivityStarted;)Lo/onActivityStarted$extraCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2194
    iget-object v1, v1, Lo/onActivityStarted$extraCallback;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3043
    :goto_0
    new-instance v2, Lo/addWrite;

    const-string v3, "referral_campaign_id"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1099
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "invite_faq_clicked"

    .line 1099
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1103
    iget-object p1, p0, Lo/onActivityStarted$onTransact;->onNavigationEvent:Lo/onActivityStarted;

    .line 4000
    iget-object p1, p1, Lo/onActivityStarted;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/getMoveDuration;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const-string/jumbo v1, "support/articles/43000564302"

    .line 1103
    invoke-static/range {v0 .. v5}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 38
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
