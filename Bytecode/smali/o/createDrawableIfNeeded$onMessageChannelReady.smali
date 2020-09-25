.class final Lo/createDrawableIfNeeded$onMessageChannelReady;
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
.field private synthetic onMessageChannelReady:Ljava/util/Map;

.field private synthetic onPostMessage:Lo/createDrawableIfNeeded;


# direct methods
.method constructor <init>(Lo/createDrawableIfNeeded;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lo/createDrawableIfNeeded$onMessageChannelReady;->onPostMessage:Lo/createDrawableIfNeeded;

    iput-object p2, p0, Lo/createDrawableIfNeeded$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 43
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    iget-object p1, p0, Lo/createDrawableIfNeeded$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Map;

    const-string v0, "payment_confirmation_screen_pay_now_click"

    invoke-static {v0, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1087
    iget-object p1, p0, Lo/createDrawableIfNeeded$onMessageChannelReady;->onPostMessage:Lo/createDrawableIfNeeded;

    invoke-static {p1}, Lo/createDrawableIfNeeded;->ICustomTabsCallback(Lo/createDrawableIfNeeded;)Lo/MenuItemHoverListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2039
    iget-object p1, p1, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub:Lo/isInputMethodNotNeeded;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 1087
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1088
    :cond_1
    iget-object v0, p0, Lo/createDrawableIfNeeded$onMessageChannelReady;->onPostMessage:Lo/createDrawableIfNeeded;

    invoke-static {v0}, Lo/createDrawableIfNeeded;->ICustomTabsCallback(Lo/createDrawableIfNeeded;)Lo/MenuItemHoverListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lo/MenuItemHoverListener;->extraCallback(Lo/isInputMethodNotNeeded;)V

    .line 43
    :cond_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
