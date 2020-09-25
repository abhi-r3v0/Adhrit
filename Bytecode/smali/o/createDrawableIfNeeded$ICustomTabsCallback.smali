.class final Lo/createDrawableIfNeeded$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createDrawableIfNeeded;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic extraCallback:Ljava/util/Map;

.field private synthetic onPostMessage:Lo/createDrawableIfNeeded;


# direct methods
.method constructor <init>(Lo/createDrawableIfNeeded;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lo/createDrawableIfNeeded$ICustomTabsCallback;->onPostMessage:Lo/createDrawableIfNeeded;

    iput-object p2, p0, Lo/createDrawableIfNeeded$ICustomTabsCallback;->extraCallback:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 43
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1091
    iget-object p1, p0, Lo/createDrawableIfNeeded$ICustomTabsCallback;->extraCallback:Ljava/util/Map;

    const-string v0, "payment_confirmation_change_instrument_click"

    invoke-static {v0, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1092
    iget-object p1, p0, Lo/createDrawableIfNeeded$ICustomTabsCallback;->onPostMessage:Lo/createDrawableIfNeeded;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lo/getMaxAvailableHeight;

    if-eqz p1, :cond_1

    .line 1093
    iget-object p1, p0, Lo/createDrawableIfNeeded$ICustomTabsCallback;->onPostMessage:Lo/createDrawableIfNeeded;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/getMaxAvailableHeight;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lo/getMaxAvailableHeight;->onPostMessage(Lo/getMaxAvailableHeight;Ljava/util/Map;ZI)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.cred.pay.ui.PaymentContainerFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
