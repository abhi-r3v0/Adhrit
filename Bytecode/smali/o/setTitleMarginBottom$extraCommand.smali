.class final Lo/setTitleMarginBottom$extraCommand;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTitleMarginBottom;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/setTitleMarginBottom;


# direct methods
.method constructor <init>(Lo/setTitleMarginBottom;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginBottom$extraCommand;->onNavigationEvent:Lo/setTitleMarginBottom;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 71
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1255
    iget-object p1, p0, Lo/setTitleMarginBottom$extraCommand;->onNavigationEvent:Lo/setTitleMarginBottom;

    invoke-static {p1}, Lo/setTitleMarginBottom;->onNavigationEvent(Lo/setTitleMarginBottom;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    invoke-static {p1, v0}, Lo/setTitleMarginBottom;->onMessageChannelReady(Lo/setTitleMarginBottom;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "single_card_verify_screen"

    const-string/jumbo v1, "source"

    .line 1256
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "add_card_click"

    .line 1255
    invoke-static {v1, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1258
    iget-object p1, p0, Lo/setTitleMarginBottom$extraCommand;->onNavigationEvent:Lo/setTitleMarginBottom;

    invoke-static {p1}, Lo/setTitleMarginBottom;->extraCallback(Lo/setTitleMarginBottom;)Lo/setTitleMarginStart;

    move-result-object p1

    .line 2000
    iget-object p1, p1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 1258
    new-instance v1, Lo/getThumbTintList;

    new-instance v9, Lo/setTitleMarginStart$extraCallback;

    new-instance v5, Lo/getTitleMarginEnd$extraCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-direct {v5, v0, v2, v3, v4}, Lo/getTitleMarginEnd$extraCallback;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    const-string v3, "VERIFY_CARD_FRAGMENT"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1a

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v1, v9}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 71
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
