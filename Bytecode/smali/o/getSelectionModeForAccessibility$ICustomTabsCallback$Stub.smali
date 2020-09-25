.class final Lo/getSelectionModeForAccessibility$ICustomTabsCallback$Stub;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSelectionModeForAccessibility;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onPostMessage:Lo/getSelectionModeForAccessibility;


# direct methods
.method constructor <init>(Lo/getSelectionModeForAccessibility;)V
    .locals 0

    iput-object p1, p0, Lo/getSelectionModeForAccessibility$ICustomTabsCallback$Stub;->onPostMessage:Lo/getSelectionModeForAccessibility;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 36
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    iget-object p1, p0, Lo/getSelectionModeForAccessibility$ICustomTabsCallback$Stub;->onPostMessage:Lo/getSelectionModeForAccessibility;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->consentCheckbox:I

    invoke-virtual {p1, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    const-string v0, "consentCheckbox"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 1061
    iget-object v0, p0, Lo/getSelectionModeForAccessibility$ICustomTabsCallback$Stub;->onPostMessage:Lo/getSelectionModeForAccessibility;

    const/4 v1, 0x1

    new-array v2, v1, [Lo/addWrite;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string v5, "consent"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const-string v3, "pairs"

    .line 1061
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v1, "send_sms_confirmation_screen_CTA_click"

    const-string v2, "eventName"

    .line 1061
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3036
    invoke-static {v0, v1, v3}, Lo/setThumbResource$onPostMessage;->extraCallback(Lo/setThumbResource;Ljava/lang/String;Ljava/util/Map;)V

    .line 1062
    iget-object v0, p0, Lo/getSelectionModeForAccessibility$ICustomTabsCallback$Stub;->onPostMessage:Lo/getSelectionModeForAccessibility;

    .line 4000
    iget-object v0, v0, Lo/getSelectionModeForAccessibility;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isLayoutHierarchical;

    .line 1062
    invoke-virtual {v0, p1}, Lo/isLayoutHierarchical;->ICustomTabsCallback(Z)V

    .line 36
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
