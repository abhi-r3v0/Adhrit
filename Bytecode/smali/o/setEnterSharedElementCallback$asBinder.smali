.class final Lo/setEnterSharedElementCallback$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setEnterSharedElementCallback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/setEnterSharedElementCallback;


# direct methods
.method constructor <init>(Lo/setEnterSharedElementCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setEnterSharedElementCallback$asBinder;->onNavigationEvent:Lo/setEnterSharedElementCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 35
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1149
    iget-object p1, p0, Lo/setEnterSharedElementCallback$asBinder;->onNavigationEvent:Lo/setEnterSharedElementCallback;

    invoke-static {p1}, Lo/setEnterSharedElementCallback;->ICustomTabsCallback(Lo/setEnterSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    .line 1251
    iget-object p1, p1, Lo/recycleFromEnd;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    .line 1149
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    if-ne p1, v0, :cond_2

    .line 1150
    iget-object p1, p0, Lo/setEnterSharedElementCallback$asBinder;->onNavigationEvent:Lo/setEnterSharedElementCallback;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->limitConsentCheckBox:I

    invoke-virtual {p1, v0}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const-string v0, "limitConsentCheckBox"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1151
    iget-object p1, p0, Lo/setEnterSharedElementCallback$asBinder;->onNavigationEvent:Lo/setEnterSharedElementCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->whatsappConsentCheckBox:I

    invoke-virtual {p1, v1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const-string/jumbo v1, "whatsappConsentCheckBox"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1152
    iget-object p1, p0, Lo/setEnterSharedElementCallback$asBinder;->onNavigationEvent:Lo/setEnterSharedElementCallback;

    invoke-static {p1}, Lo/setEnterSharedElementCallback;->ICustomTabsCallback(Lo/setEnterSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1153
    iget-object p1, p0, Lo/setEnterSharedElementCallback$asBinder;->onNavigationEvent:Lo/setEnterSharedElementCallback;

    invoke-static {p1}, Lo/setEnterSharedElementCallback;->extraCallback(Lo/setEnterSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    iget-object v0, p0, Lo/setEnterSharedElementCallback$asBinder;->onNavigationEvent:Lo/setEnterSharedElementCallback;

    .line 2042
    iget-object v0, v0, Lo/setEnterSharedElementCallback;->onNavigationEvent:Ljava/lang/String;

    const-string v1, "id"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1153
    :cond_0
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v1, p1, Lo/getSharedElementEnterTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setReenterTransition;

    .line 2175
    new-instance v2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRequestBody;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRequestBody;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRequestBody$MandateDetail;)V

    invoke-interface {v1, v2}, Lo/setReenterTransition;->onPostMessage(Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRequestBody;)Lo/clearScrap;

    move-result-object v0

    .line 2176
    new-instance v1, Lo/getSharedElementEnterTransition$onRelationshipValidationResult;

    invoke-direct {v1, p1}, Lo/getSharedElementEnterTransition$onRelationshipValidationResult;-><init>(Lo/getSharedElementEnterTransition;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 1154
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object p1, Lo/setTrackTintMode;->ICustomTabsService$Stub:Lo/setTitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1155
    sget-object p1, Lo/onCreateOptionsMenu;->onPostMessage:Lo/onCreateOptionsMenu;

    invoke-static {p1}, Lo/onCreateOptionsMenu;->extraCallback(Lo/onCreateOptionsMenu;)V

    :cond_1
    const-string p1, "ad_setup_auth_proceed_click"

    .line 1157
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 35
    :cond_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
