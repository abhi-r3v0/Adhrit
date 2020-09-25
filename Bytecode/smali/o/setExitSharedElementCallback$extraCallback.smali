.class public final Lo/setExitSharedElementCallback$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setExitSharedElementCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onNavigationEvent:Lo/setExitSharedElementCallback;


# direct methods
.method constructor <init>(Lo/setExitSharedElementCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 8

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string p3, "lifecycle"

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    new-instance p3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 515
    new-instance v1, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v1}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 516
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_9

    .line 170
    instance-of v2, p2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    if-eqz v2, :cond_8

    .line 171
    iget-object v2, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    check-cast p2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    .line 2023
    iget-object v4, p2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->asBinder:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_1

    move-object v4, v5

    .line 171
    :cond_1
    invoke-static {v2, v4}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v2}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object v2

    .line 2038
    iget-object v2, v2, Lo/getSharedElementEnterTransition;->asInterface:Lo/setActive;

    .line 172
    new-instance v4, Lo/getSharedElementEnterTransition$onNavigationEvent;

    sget-object v6, Lo/onPrepareOptionsMenu$onNavigationEvent;->onPostMessage:Lo/onPrepareOptionsMenu$onNavigationEvent;

    check-cast v6, Lo/onPrepareOptionsMenu;

    invoke-direct {v4, v6}, Lo/getSharedElementEnterTransition$onNavigationEvent;-><init>(Lo/onPrepareOptionsMenu;)V

    invoke-virtual {v2, v4}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 173
    iget-object v2, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v2}, Lo/setExitSharedElementCallback;->asBinder(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object v2

    move-object v4, v5

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v2, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v2}, Lo/setExitSharedElementCallback;->IPostMessageService(Lo/setExitSharedElementCallback;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->postMessage(Lo/setExitSharedElementCallback;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v2}, Lo/setExitSharedElementCallback;->asBinder(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object v2

    new-array v4, v3, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    iget-object v7, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v7}, Lo/setExitSharedElementCallback;->postMessage(Lo/setExitSharedElementCallback;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0xb

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    check-cast v6, Landroid/text/InputFilter;

    aput-object v6, v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-array v2, v3, [Lo/addWrite;

    .line 3013
    iget-object v4, p2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onNavigationEvent:Ljava/lang/String;

    .line 3043
    new-instance v6, Lo/addWrite;

    const-string v7, "bank_name"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v0

    const-string v4, "pairs"

    .line 176
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "ad_bank_selected"

    .line 176
    invoke-static {v2, v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 177
    iget-object v2, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    .line 4013
    iget-object v4, p2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onNavigationEvent:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v4

    .line 177
    :goto_1
    invoke-static {v2, v5}, Lo/setExitSharedElementCallback;->onMessageChannelReady(Lo/setExitSharedElementCallback;Ljava/lang/String;)V

    .line 5013
    iget-object v2, p2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onNavigationEvent:Ljava/lang/String;

    .line 178
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_8

    .line 179
    iget-object v2, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->bankGroup:I

    invoke-virtual {v2, v4}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string v4, "bankGroup"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v2, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->bankName:I

    invoke-virtual {v2, v4}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "bankName"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6013
    iget-object v4, p2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onNavigationEvent:Ljava/lang/String;

    .line 180
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6015
    iget-object v2, p2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onPostMessage:Ljava/lang/String;

    .line 181
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    const-string v2, "bankIcon"

    if-eqz v0, :cond_7

    .line 6017
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->extraCallback:Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 183
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {p2}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 184
    iget-object v0, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->bankIcon:I

    invoke-virtual {v0, v4}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lo/remove;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_4

    .line 188
    :cond_7
    iget-object v0, p0, Lo/setExitSharedElementCallback$extraCallback;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->bankIcon:I

    invoke-virtual {v0, v4}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7015
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onPostMessage:Ljava/lang/String;

    .line 188
    invoke-static {v0, p2}, Lo/remove;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 518
    :cond_8
    :goto_4
    iput-boolean v3, p3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_5

    .line 519
    :cond_9
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v2, :cond_a

    .line 520
    new-instance v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-direct {v0, p1, p3, p0, p2}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setExitSharedElementCallback$extraCallback;Lo/StaggeredGridLayoutManager;)V

    check-cast v0, Lo/createCallback;

    iput-object v0, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 521
    iget-object p2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 523
    :cond_a
    :goto_5
    new-instance p2, Lo/setExitSharedElementCallback$extraCallback$ICustomTabsCallback;

    invoke-direct {p2, v1, p1}, Lo/setExitSharedElementCallback$extraCallback$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
