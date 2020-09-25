.class final Lo/setEnterSharedElementCallback$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setEnterSharedElementCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/setEnterSharedElementCallback;


# direct methods
.method constructor <init>(Lo/setEnterSharedElementCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 35
    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    if-eqz p1, :cond_1

    .line 1054
    iget-object v0, p0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;->getOrderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2043
    iput-object v1, v0, Lo/setEnterSharedElementCallback;->onPostMessage:Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/setEnterSharedElementCallback;->ICustomTabsCallback(Lo/setEnterSharedElementCallback;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;->getEndUrls()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lo/setEnterSharedElementCallback;->onPostMessage(Lo/setEnterSharedElementCallback;Ljava/util/List;)V

    .line 1057
    iget-object v0, p0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    invoke-static {v0}, Lo/setEnterSharedElementCallback;->ICustomTabsCallback(Lo/setEnterSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    new-instance v1, Lo/setEnterSharedElementCallback$ICustomTabsService$3;

    invoke-direct {v1, p0, p1}, Lo/setEnterSharedElementCallback$ICustomTabsService$3;-><init>(Lo/setEnterSharedElementCallback$ICustomTabsService;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 1068
    iget-object p1, p0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    invoke-static {p1}, Lo/setEnterSharedElementCallback;->ICustomTabsCallback(Lo/setEnterSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->ICustomTabsCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void

    .line 1070
    :cond_1
    iget-object p1, p0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->limitConsentCheckBox:I

    invoke-virtual {p1, v0}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const-string v0, "limitConsentCheckBox"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1071
    iget-object p1, p0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->whatsappConsentCheckBox:I

    invoke-virtual {p1, v1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const-string/jumbo v1, "whatsappConsentCheckBox"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1072
    iget-object p1, p0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    invoke-static {p1}, Lo/setEnterSharedElementCallback;->ICustomTabsCallback(Lo/setEnterSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1073
    iget-object p1, p0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    .line 2044
    iput-boolean v0, p1, Lo/setEnterSharedElementCallback;->ICustomTabsCallback:Z

    .line 1074
    iget-object p1, p0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method
