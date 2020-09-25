.class final Lo/removeTabAt$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeTabAt;
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
.field private synthetic onMessageChannelReady:Lo/removeTabAt;


# direct methods
.method constructor <init>(Lo/removeTabAt;)V
    .locals 0

    iput-object p1, p0, Lo/removeTabAt$asBinder;->onMessageChannelReady:Lo/removeTabAt;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 42
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pi_recommendation_screen_cupi_fetch_ac_click"

    const/4 v0, 0x0

    .line 1179
    invoke-static {p1, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1180
    iget-object p1, p0, Lo/removeTabAt$asBinder;->onMessageChannelReady:Lo/removeTabAt;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lo/getMaxAvailableHeight;

    if-eqz p1, :cond_1

    .line 1181
    iget-object p1, p0, Lo/removeTabAt$asBinder;->onMessageChannelReady:Lo/removeTabAt;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/getMaxAvailableHeight;

    .line 1676
    new-instance v0, Lo/getMaxAvailableHeight$postMessage;

    invoke-direct {v0, p1}, Lo/getMaxAvailableHeight$postMessage;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v0, Lo/getServerTime;

    .line 1685
    invoke-virtual {p1, v0}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getServerTime;)V

    goto :goto_0

    .line 1181
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.cred.pay.ui.PaymentContainerFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
