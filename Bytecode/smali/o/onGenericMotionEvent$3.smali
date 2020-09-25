.class final Lo/onGenericMotionEvent$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onGenericMotionEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field private synthetic onNavigationEvent:Lo/onGenericMotionEvent;


# direct methods
.method constructor <init>(Lo/onGenericMotionEvent;)V
    .locals 0

    iput-object p1, p0, Lo/onGenericMotionEvent$3;->onNavigationEvent:Lo/onGenericMotionEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 18
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array v0, p1, [Lo/addWrite;

    .line 1041
    iget-object v1, p0, Lo/onGenericMotionEvent$3;->onNavigationEvent:Lo/onGenericMotionEvent;

    .line 2019
    iget-object v1, v1, Lo/onGenericMotionEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "reward_ID"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 1042
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lo/setTrackTintMode;->asBinder()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string v3, "cred_balance"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 1043
    iget-object v1, p0, Lo/onGenericMotionEvent$3;->onNavigationEvent:Lo/onGenericMotionEvent;

    .line 4022
    iget-object v1, v1, Lo/onGenericMotionEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 4043
    new-instance v2, Lo/addWrite;

    const-string v3, "currency"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 1044
    iget-object v1, p0, Lo/onGenericMotionEvent$3;->onNavigationEvent:Lo/onGenericMotionEvent;

    .line 5023
    iget-object v1, v1, Lo/onGenericMotionEvent;->extraCallback:Ljava/lang/String;

    .line 5043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "source"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1040
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "reward_purchase_failure_pay_now_clicked"

    .line 1040
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1046
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    .line 1047
    iget-object v0, p0, Lo/onGenericMotionEvent$3;->onNavigationEvent:Lo/onGenericMotionEvent;

    invoke-static {v0}, Lo/onGenericMotionEvent;->ICustomTabsCallback(Lo/onGenericMotionEvent;)Z

    move-result v0

    const-string v1, "_inadequate_gems&instrument_id="

    if-eqz v0, :cond_0

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cred://app/launch?page=control&menu=control_farm&source="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/onGenericMotionEvent$3;->onNavigationEvent:Lo/onGenericMotionEvent;

    .line 6023
    iget-object v2, v2, Lo/onGenericMotionEvent;->extraCallback:Ljava/lang/String;

    .line 1048
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/onGenericMotionEvent$3;->onNavigationEvent:Lo/onGenericMotionEvent;

    .line 7019
    iget-object v1, v1, Lo/onGenericMotionEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 1048
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1050
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cred://app/launch?target=referral&extra=whatsapp&source="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/onGenericMotionEvent$3;->onNavigationEvent:Lo/onGenericMotionEvent;

    .line 7023
    iget-object v2, v2, Lo/onGenericMotionEvent;->extraCallback:Ljava/lang/String;

    .line 1050
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/onGenericMotionEvent$3;->onNavigationEvent:Lo/onGenericMotionEvent;

    .line 8019
    iget-object v1, v1, Lo/onGenericMotionEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 1050
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    :goto_0
    invoke-virtual {p1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    .line 1051
    iget-object p1, p0, Lo/onGenericMotionEvent$3;->onNavigationEvent:Lo/onGenericMotionEvent;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 18
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
