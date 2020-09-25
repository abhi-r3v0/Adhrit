.class final Lo/getLogo$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getLogo;->extraCallback(Z)V
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
.field private synthetic ICustomTabsCallback:Z

.field private synthetic onMessageChannelReady:Lo/getLogo;


# direct methods
.method constructor <init>(Lo/getLogo;Z)V
    .locals 0

    iput-object p1, p0, Lo/getLogo$ICustomTabsCallback;->onMessageChannelReady:Lo/getLogo;

    iput-boolean p2, p0, Lo/getLogo$ICustomTabsCallback;->ICustomTabsCallback:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 36
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    iget-boolean p1, p0, Lo/getLogo$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-eqz p1, :cond_1

    const-string p1, "onboard_verify_card_bank_select"

    .line 1144
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1145
    iget-object p1, p0, Lo/getLogo$ICustomTabsCallback;->onMessageChannelReady:Lo/getLogo;

    .line 2036
    iget-object p1, p1, Lo/getLogo;->asInterface:Lo/getTitleMarginEnd;

    .line 2573
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->extraCallback()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2574
    new-instance v0, Lo/onAbandon;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/getTitleMarginEnd$asInterface;

    invoke-direct {v2, p1}, Lo/getTitleMarginEnd$asInterface;-><init>(Lo/getTitleMarginEnd;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-direct {v0, v1, v2}, Lo/onAbandon;-><init>(Landroid/content/Context;Lo/onDisconnectSetValue;)V

    .line 36
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
