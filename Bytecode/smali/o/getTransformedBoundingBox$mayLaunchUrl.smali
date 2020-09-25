.class final Lo/getTransformedBoundingBox$mayLaunchUrl;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTransformedBoundingBox;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onPostMessage:Lo/getTransformedBoundingBox;


# direct methods
.method constructor <init>(Lo/getTransformedBoundingBox;)V
    .locals 0

    iput-object p1, p0, Lo/getTransformedBoundingBox$mayLaunchUrl;->onPostMessage:Lo/getTransformedBoundingBox;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 58
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1386
    iget-object p1, p0, Lo/getTransformedBoundingBox$mayLaunchUrl;->onPostMessage:Lo/getTransformedBoundingBox;

    invoke-static {p1}, Lo/getTransformedBoundingBox;->asInterface(Lo/getTransformedBoundingBox;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    invoke-static {p1, v0}, Lo/getTransformedBoundingBox;->onMessageChannelReady(Lo/getTransformedBoundingBox;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "source"

    const-string v1, "onboarding_verify_card_carousel"

    .line 1387
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "add_card_click"

    .line 1386
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1389
    iget-object p1, p0, Lo/getTransformedBoundingBox$mayLaunchUrl;->onPostMessage:Lo/getTransformedBoundingBox;

    invoke-static {p1}, Lo/getTransformedBoundingBox;->onNavigationEvent(Lo/getTransformedBoundingBox;)Lo/setTitleMarginStart;

    move-result-object p1

    .line 2000
    iget-object p1, p1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 1389
    new-instance v0, Lo/getThumbTintList;

    new-instance v8, Lo/setTitleMarginStart$extraCallback;

    new-instance v4, Lo/getTitleMarginEnd$extraCallback;

    const-string/jumbo v1, "single_card_verify_screen"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0xd

    invoke-direct {v4, v1, v2, v3, v5}, Lo/getTitleMarginEnd$extraCallback;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    const-string v2, "VERIFY_CARD_FRAGMENT"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1a

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v0, v8}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 58
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
