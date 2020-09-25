.class final Lo/unregisterForContextMenu$newSession$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unregisterForContextMenu$newSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private synthetic ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

.field private synthetic onMessageChannelReady:Lo/addWrite;


# direct methods
.method constructor <init>(Lo/unregisterForContextMenu$newSession;Lo/addWrite;)V
    .locals 0

    iput-object p1, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iput-object p2, p0, Lo/unregisterForContextMenu$newSession$5;->onMessageChannelReady:Lo/addWrite;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 10

    .line 1063
    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->onMessageChannelReady:Lo/addWrite;

    .line 2028
    iget-object v0, v0, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 1064
    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iget-object v0, v0, Lo/unregisterForContextMenu$newSession;->ICustomTabsCallback:Lo/unregisterForContextMenu;

    invoke-static {v0, v1}, Lo/unregisterForContextMenu;->onPostMessage(Lo/unregisterForContextMenu;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iget-object v0, v0, Lo/unregisterForContextMenu$newSession;->ICustomTabsCallback:Lo/unregisterForContextMenu;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1066
    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iget-object v0, v0, Lo/unregisterForContextMenu$newSession;->ICustomTabsCallback:Lo/unregisterForContextMenu;

    invoke-static {v0}, Lo/unregisterForContextMenu;->asInterface(Lo/unregisterForContextMenu;)Lo/setReenterTransition$onPostMessage;

    move-result-object v1

    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iget-object v0, v0, Lo/unregisterForContextMenu$newSession;->ICustomTabsCallback:Lo/unregisterForContextMenu;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->onMessageChannelReady:Lo/addWrite;

    .line 3028
    iget-object v0, v0, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1066
    check-cast v0, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1067
    :cond_1
    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iget-object v0, v0, Lo/unregisterForContextMenu$newSession;->ICustomTabsCallback:Lo/unregisterForContextMenu;

    const v3, 0x7f130412

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.something_went_wrong)"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    .line 1066
    invoke-static/range {v1 .. v7}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    goto/16 :goto_1

    .line 1068
    :cond_3
    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->onMessageChannelReady:Lo/addWrite;

    .line 4027
    iget-object v0, v0, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 1069
    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->onMessageChannelReady:Lo/addWrite;

    .line 5027
    iget-object v0, v0, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1069
    check-cast v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegistrationStatusResponse;

    if-eqz v0, :cond_4

    .line 6009
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "failed"

    .line 1070
    invoke-static {v3, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1071
    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iget-object v0, v0, Lo/unregisterForContextMenu$newSession;->ICustomTabsCallback:Lo/unregisterForContextMenu;

    invoke-static {v0}, Lo/unregisterForContextMenu;->onMessageChannelReady(Lo/unregisterForContextMenu;)Lo/getSharedElementEnterTransition;

    move-result-object v0

    .line 7000
    iget-object v1, v0, Lo/getSharedElementEnterTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setReenterTransition;

    .line 6210
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lo/setReenterTransition;->onPostMessage(Ljava/lang/Boolean;)Lo/clearScrap;

    move-result-object v1

    .line 6211
    sget-object v2, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0xf

    invoke-static/range {v3 .. v9}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 6212
    new-instance v2, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;

    invoke-direct {v2, v0}, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;-><init>(Lo/getSharedElementEnterTransition;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    goto/16 :goto_1

    .line 1073
    :cond_4
    iget-object v2, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iget-object v2, v2, Lo/unregisterForContextMenu$newSession;->ICustomTabsCallback:Lo/unregisterForContextMenu;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v2, v3}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onDestroyView;

    invoke-virtual {v2}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    if-eqz v0, :cond_5

    .line 7019
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/autodebit/ErrorDetail;

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 8019
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/autodebit/ErrorDetail;

    .line 8024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/autodebit/ErrorDetail;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_6

    .line 1078
    iget-object v3, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iget-object v3, v3, Lo/unregisterForContextMenu$newSession;->ICustomTabsCallback:Lo/unregisterForContextMenu;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->errorTitle:I

    invoke-virtual {v3, v4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "errorTitle"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1078
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9019
    :cond_6
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/autodebit/ErrorDetail;

    .line 9025
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/autodebit/ErrorDetail;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v0, :cond_7

    .line 1081
    iget-object v1, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iget-object v1, v1, Lo/unregisterForContextMenu$newSession;->ICustomTabsCallback:Lo/unregisterForContextMenu;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->errorDesc:I

    invoke-virtual {v1, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "errorDesc"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10000
    iget-object v0, v0, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1081
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iget-object v0, v0, Lo/unregisterForContextMenu$newSession;->ICustomTabsCallback:Lo/unregisterForContextMenu;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->errorDesc:I

    invoke-virtual {v0, v1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1085
    :cond_7
    iget-object v0, p0, Lo/unregisterForContextMenu$newSession$5;->ICustomTabsCallback:Lo/unregisterForContextMenu$newSession;

    iget-object v0, v0, Lo/unregisterForContextMenu$newSession;->ICustomTabsCallback:Lo/unregisterForContextMenu;

    invoke-static {v0, v1}, Lo/unregisterForContextMenu;->onPostMessage(Lo/unregisterForContextMenu;Ljava/lang/String;)V

    .line 43
    :cond_8
    :goto_1
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
