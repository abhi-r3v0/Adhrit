.class final Lo/dispatchLastEvent$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchLastEvent;-><init>(Landroidx/fragment/app/Fragment;Lo/onAddFocusables$extraCallback;Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V
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
.field private synthetic ICustomTabsCallback:Lo/dispatchLastEvent;


# direct methods
.method constructor <init>(Lo/dispatchLastEvent;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchLastEvent$5;->ICustomTabsCallback:Lo/dispatchLastEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 39
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    iget-object p1, p0, Lo/dispatchLastEvent$5;->ICustomTabsCallback:Lo/dispatchLastEvent;

    invoke-static {p1}, Lo/dispatchLastEvent;->ICustomTabsCallback(Lo/dispatchLastEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x265339

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "RENT"

    .line 1084
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1085
    iget-object p1, p0, Lo/dispatchLastEvent$5;->ICustomTabsCallback:Lo/dispatchLastEvent;

    invoke-static {p1}, Lo/dispatchLastEvent;->onMessageChannelReady(Lo/dispatchLastEvent;)Lo/getMoveDuration;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {p1, v0, v1, v2, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1089
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/dispatchLastEvent$5;->ICustomTabsCallback:Lo/dispatchLastEvent;

    invoke-static {p1}, Lo/dispatchLastEvent;->onMessageChannelReady(Lo/dispatchLastEvent;)Lo/getMoveDuration;

    move-result-object v2

    const/4 v3, 0x0

    iget-object p1, p0, Lo/dispatchLastEvent$5;->ICustomTabsCallback:Lo/dispatchLastEvent;

    invoke-static {p1}, Lo/dispatchLastEvent;->onNavigationEvent(Lo/dispatchLastEvent;)Lo/onAddFocusables$extraCallback;

    move-result-object p1

    .line 2222
    iget-object v4, p1, Lo/onAddFocusables$extraCallback;->onRelationshipValidationResult:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    .line 1089
    invoke-static/range {v2 .. v7}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 1092
    iget-object p1, p0, Lo/dispatchLastEvent$5;->ICustomTabsCallback:Lo/dispatchLastEvent;

    invoke-static {p1}, Lo/dispatchLastEvent;->extraCallback(Lo/dispatchLastEvent;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "payment_unsuccessful_get_support_click"

    invoke-virtual {p1, v2, v0}, Lo/dispatchLastEvent;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    .line 1093
    iget-object p1, p0, Lo/dispatchLastEvent$5;->ICustomTabsCallback:Lo/dispatchLastEvent;

    .line 3056
    iput-boolean v1, p1, Lo/dispatchLastEvent;->onMessageChannelReady:Z

    .line 1094
    iget-object p1, p0, Lo/dispatchLastEvent$5;->ICustomTabsCallback:Lo/dispatchLastEvent;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 39
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
