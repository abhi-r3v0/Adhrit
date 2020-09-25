.class final Lo/ensureTopGlow$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureTopGlow;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onPostMessage:Lo/ensureTopGlow;


# direct methods
.method constructor <init>(Lo/ensureTopGlow;)V
    .locals 0

    iput-object p1, p0, Lo/ensureTopGlow$extraCallback;->onPostMessage:Lo/ensureTopGlow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 26
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "booster_coins_intro_get_started_click"

    .line 1128
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1129
    iget-object p1, p0, Lo/ensureTopGlow$extraCallback;->onPostMessage:Lo/ensureTopGlow;

    .line 2000
    iget-object p1, p1, Lo/ensureTopGlow;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 1129
    iget-object v0, p0, Lo/ensureTopGlow$extraCallback;->onPostMessage:Lo/ensureTopGlow;

    invoke-static {v0}, Lo/ensureTopGlow;->onPostMessage(Lo/ensureTopGlow;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/getMoveDuration;->onRelationshipValidationResult(Lo/getMoveDuration;Ljava/lang/String;)V

    .line 1130
    iget-object p1, p0, Lo/ensureTopGlow$extraCallback;->onPostMessage:Lo/ensureTopGlow;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 26
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
