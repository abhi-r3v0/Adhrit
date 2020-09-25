.class public final Lo/releaseGlows$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/releaseGlows;-><init>()V
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$listItemClickListener$1",
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
.field final synthetic onPostMessage:Lo/releaseGlows;


# direct methods
.method constructor <init>(Lo/releaseGlows;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 12

    const-string v0, "failed"

    const-string/jumbo v1, "type"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string p3, "asset_card"

    .line 270
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 271
    instance-of p1, p2, Lo/setOnScrollListener;

    if-eqz p1, :cond_14

    .line 272
    sget-object p1, Lo/recycleChildren;->onMessageChannelReady:Lo/recycleChildren$onPostMessage;

    check-cast p2, Lo/setOnScrollListener;

    invoke-static {p2}, Lo/recycleChildren$onPostMessage;->onPostMessage(Lo/setOnScrollListener;)Lo/recycleChildren;

    move-result-object p1

    .line 273
    iget-object p2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p2

    const-string p3, "AssetViewerDialogFragment"

    invoke-virtual {p1, p2, p3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-virtual {p1}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo p2, "reward_details_cta_click_images"

    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    :sswitch_1
    const-string/jumbo p3, "user_input"

    .line 205
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto/16 :goto_3

    :sswitch_2
    const-string p3, "input_candidate_item"

    .line 217
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 218
    instance-of p1, p2, Lo/jumpToPositionForSmoothScroller;

    if-eqz p1, :cond_14

    .line 219
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-static {p1}, Lo/releaseGlows;->onMessageChannelReady(Lo/releaseGlows;)Lo/pullGlows;

    move-result-object p1

    check-cast p2, Lo/jumpToPositionForSmoothScroller;

    .line 3097
    iget-object p3, p2, Lo/jumpToPositionForSmoothScroller;->onNavigationEvent:Ljava/lang/String;

    .line 3098
    iget-object v0, p2, Lo/jumpToPositionForSmoothScroller;->extraCallback:Ljava/lang/String;

    .line 3101
    iget-object p2, p2, Lo/jumpToPositionForSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 3113
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onPostMessage:Ljava/lang/String;

    const-string/jumbo v1, "sectionId"

    .line 219
    invoke-static {p3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fieldId"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "text"

    invoke-static {p2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3735
    iget-boolean v5, p1, Lo/pullGlows;->onNavigationEvent:Z

    if-eqz v5, :cond_1

    .line 3736
    iget-object p1, p1, Lo/pullGlows;->extraCallback:Lo/consumePendingUpdateOperations;

    invoke-static {p3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object v1, p1, Lo/consumePendingUpdateOperations;->asBinder:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ensureRightGlow$extraCallback;

    .line 4209
    invoke-interface {v1, p2, p3, v0}, Lo/ensureRightGlow$extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    iget-object p2, p1, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 5125
    invoke-virtual {p1, p2, v4, v4}, Lo/consumePendingUpdateOperations;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;ZZ)V

    return-void

    .line 6000
    :cond_1
    iget-object v1, p1, Lo/pullGlows;->cancel:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ensureRightGlow$extraCallback;

    .line 5743
    invoke-interface {v1, p2, p3, v0}, Lo/ensureRightGlow$extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5744
    iget-object p2, p1, Lo/pullGlows;->cancelAll:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 6627
    invoke-virtual {p1, p2, v4, v4}, Lo/pullGlows;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;ZZ)V

    return-void

    :sswitch_3
    const-string p3, "broadcast_code"

    .line 277
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 278
    instance-of p1, p2, Lo/getRecycleChildrenOnDetach;

    if-eqz p1, :cond_14

    .line 279
    move-object p1, p2

    check-cast p1, Lo/getRecycleChildrenOnDetach;

    .line 25096
    iget-object p1, p1, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 26078
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 280
    sget-object p3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->getInterfaceDescriptor()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 281
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p2, 0x7f1304ec

    invoke-static {p2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 284
    :cond_3
    iget-object p3, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-static {p3}, Lo/releaseGlows;->extraCallback(Lo/releaseGlows;)Lo/setIconifiedByDefault;

    move-result-object p3

    .line 26161
    iget-object v1, p3, Lo/setIconifiedByDefault;->onNavigationEvent:Lo/getSuggestionsAdapter;

    if-eqz v1, :cond_4

    .line 26162
    iget-object v1, p3, Lo/setIconifiedByDefault;->onNavigationEvent:Lo/getSuggestionsAdapter;

    invoke-interface {v1}, Lo/getSuggestionsAdapter;->onNavigationEvent()V

    .line 26163
    :cond_4
    sget-object v1, Lo/setIconifiedByDefault$onNavigationEvent;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    iput-object v1, p3, Lo/setIconifiedByDefault;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    .line 286
    :try_start_0
    iget-object p3, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    iget-object v1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    .line 27000
    iget-object v1, v1, Lo/releaseGlows;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v5, 0x3

    .line 286
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 27067
    iput v1, p3, Lo/releaseGlows;->extraCallback:I

    .line 287
    iget-object p3, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    .line 28000
    iget-object p3, p3, Lo/releaseGlows;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    .line 287
    invoke-virtual {p3, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p3

    .line 288
    iget-object v1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    .line 29000
    iget-object v1, v1, Lo/releaseGlows;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 288
    sget-object v6, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onRelationshipValidationResult()I

    move-result v6

    mul-int p3, p3, v6

    div-int/lit8 p3, p3, 0x64

    invoke-virtual {v1, v5, p3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 289
    iget-object p3, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-static {p3}, Lo/releaseGlows;->extraCallback(Lo/releaseGlows;)Lo/setIconifiedByDefault;

    move-result-object p3

    new-instance v1, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;

    invoke-direct {v1, p1, p0, p2}, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;-><init>(Ljava/lang/String;Lo/releaseGlows$ICustomTabsCallback$Stub;Lo/StaggeredGridLayoutManager;)V

    check-cast v1, Lo/setQueryRefinementEnabled;

    .line 314
    sget-object v4, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->ICustomTabsCallback$Stub()I

    move-result v4

    .line 289
    invoke-virtual {p3, p1, v1, v4}, Lo/setIconifiedByDefault;->onNavigationEvent(Ljava/lang/String;Lo/setQueryRefinementEnabled;I)I

    move-result p1

    .line 315
    iget-object p3, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-static {p3}, Lo/releaseGlows;->ICustomTabsCallback(Lo/releaseGlows;)Lo/setMenuVisibility;

    move-result-object p3

    invoke-virtual {p3}, Lo/setMenuVisibility;->extraCallback()V

    if-eq p1, v3, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 323
    :cond_5
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    const-string p2, "headset_on"

    invoke-static {p1, p2}, Lo/releaseGlows;->ICustomTabsCallback(Lo/releaseGlows;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->errorView:I

    invoke-virtual {p1, p2}, Lo/releaseGlows;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setLayoutStateDirection;

    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p2, 0x7f13027d

    invoke-static {p2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lo/setLayoutStateDirection;->extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V

    return-void

    .line 327
    :cond_6
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-static {p1, v0}, Lo/releaseGlows;->ICustomTabsCallback(Lo/releaseGlows;Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->errorView:I

    invoke-virtual {p1, p2}, Lo/releaseGlows;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setLayoutStateDirection;

    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p2, 0x7f130413

    invoke-static {p2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lo/setLayoutStateDirection;->extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 318
    :cond_7
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    const-string/jumbo p3, "success"

    invoke-static {p1, p3}, Lo/releaseGlows;->ICustomTabsCallback(Lo/releaseGlows;Ljava/lang/String;)V

    .line 319
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {v3}, Lo/setTrackTintMode;->onNavigationEvent(Z)V

    .line 320
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    check-cast p2, Lo/getRecycleChildrenOnDetach;

    invoke-static {p1, p2, v3}, Lo/releaseGlows;->onNavigationEvent(Lo/releaseGlows;Lo/getRecycleChildrenOnDetach;I)V
    :try_end_0
    .catch Lcom/cred/sproxlib/share/medium/sound/modulate/PublisherException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 333
    iget-object p2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-static {p2, v0}, Lo/releaseGlows;->ICustomTabsCallback(Lo/releaseGlows;Ljava/lang/String;)V

    .line 334
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "PublisherException: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 29010
    new-instance p3, Ljava/io/StringWriter;

    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    .line 29011
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p3, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 29012
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 29013
    invoke-virtual {p3}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LifeStyle"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_4
    const-string p3, "checkBoxInput"

    .line 205
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto/16 :goto_3

    :sswitch_5
    const-string p3, "output_cta_clicked"

    .line 223
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 224
    instance-of p1, p2, Lo/getRecycleChildrenOnDetach;

    if-eqz p1, :cond_14

    const/4 p1, 0x2

    new-array p3, p1, [Lo/addWrite;

    .line 226
    check-cast p2, Lo/getRecycleChildrenOnDetach;

    .line 7096
    iget-object v0, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 8076
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 8089
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v0, :cond_9

    .line 9000
    iget-object v0, v0, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 226
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    const-string v5, " "

    const-string v6, "_"

    .line 9075
    invoke-static {v0, v5, v6, v4}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 226
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    move-object v0, v1

    .line 10043
    :goto_1
    new-instance v5, Lo/addWrite;

    const-string v6, "cta_title"

    invoke-direct {v5, v6, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, p3, v4

    .line 11043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v5, "source"

    const-string v6, "redeem"

    invoke-direct {v0, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p3, v3

    const-string v0, "pairs"

    .line 225
    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "reward_claimed_output_clicked"

    .line 225
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 12096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 13076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_a

    .line 13090
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->extraCallback:Ljava/lang/String;

    goto :goto_2

    :cond_a
    move-object p1, v1

    :goto_2
    const-string/jumbo p3, "web"

    .line 229
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 13096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 14076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    .line 14087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 232
    iget-object p2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    .line 15000
    iget-object p2, p2, Lo/releaseGlows;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getMoveDuration;

    if-eqz p2, :cond_b

    .line 232
    invoke-static {p2, p1, v4, v1, v2}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;ZLjava/lang/Boolean;I)V

    :cond_b
    return-void

    :cond_c
    const-string/jumbo p3, "web_video"

    .line 235
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 15096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 16076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    .line 16087
    iget-object v6, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v6, :cond_14

    .line 238
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    .line 17000
    iget-object p1, p1, Lo/releaseGlows;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    if-eqz p1, :cond_d

    .line 238
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17289
    new-instance p2, Lo/onGetChildDrawingOrder$onLoadChildren;

    new-instance p3, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1a

    move-object v5, p3

    invoke-direct/range {v5 .. v11}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    invoke-direct {p2, p3, v4}, Lo/onGetChildDrawingOrder$onLoadChildren;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;Z)V

    check-cast p2, Lo/getRemoveDuration;

    invoke-virtual {p1, p2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_d
    return-void

    :cond_e
    const-string p3, "deeplink"

    .line 241
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 18096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 19076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    .line 19087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 244
    iget-object p2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-virtual {p2}, Lo/releaseGlows;->onNavigationEvent()V

    .line 245
    sget-object p2, Lo/length;->extraCallback:Lo/length;

    invoke-virtual {p2, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_f
    const-string p3, "certificate"

    .line 248
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 19096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 20076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    .line 20087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 251
    iget-object p2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-virtual {p2}, Lo/releaseGlows;->onNavigationEvent()V

    .line 252
    iget-object p2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    .line 21000
    iget-object p2, p2, Lo/releaseGlows;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getMoveDuration;

    if-eqz p2, :cond_10

    const-string/jumbo p3, "rewardId"

    .line 252
    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21351
    new-instance p3, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-direct {p3, p1}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;-><init>(Ljava/lang/String;)V

    check-cast p3, Lo/getRemoveDuration;

    invoke-virtual {p2, p3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_10
    return-void

    :cond_11
    const-string p3, "game"

    .line 255
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 22096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 23076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    .line 23087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 258
    iget-object p2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-virtual {p2}, Lo/releaseGlows;->onNavigationEvent()V

    .line 259
    iget-object p2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    .line 24000
    iget-object p2, p2, Lo/releaseGlows;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getMoveDuration;

    if-eqz p2, :cond_12

    .line 24281
    new-instance p3, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;

    invoke-direct {v0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;)V

    check-cast p3, Lo/getRemoveDuration;

    invoke-virtual {p2, p3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_12
    return-void

    :sswitch_6
    const-string p3, "input_address_item"

    .line 211
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 212
    instance-of p1, p2, Lo/scrollByInternal;

    if-eqz p1, :cond_14

    .line 213
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-static {p1}, Lo/releaseGlows;->onMessageChannelReady(Lo/releaseGlows;)Lo/pullGlows;

    move-result-object p1

    check-cast p2, Lo/scrollByInternal;

    .line 2085
    iget-object p3, p2, Lo/scrollByInternal;->ICustomTabsCallback:Ljava/lang/String;

    .line 2086
    iget-object v0, p2, Lo/scrollByInternal;->onNavigationEvent:Ljava/lang/String;

    .line 2089
    iget-object p2, p2, Lo/scrollByInternal;->onPostMessage:Lcom/dreamplug/fabrik/ui/address/Address;

    .line 3021
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/address/Address;->onNavigationEvent:Ljava/lang/String;

    .line 213
    invoke-virtual {p1, p3, v0, p2}, Lo/pullGlows;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_7
    const-string v0, "fill_section"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    if-eqz p3, :cond_13

    .line 200
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 201
    :cond_13
    instance-of p1, p2, Lo/smoothScrollBy;

    if-eqz p1, :cond_14

    .line 202
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-static {p1}, Lo/releaseGlows;->onMessageChannelReady(Lo/releaseGlows;)Lo/pullGlows;

    move-result-object p1

    check-cast p2, Lo/smoothScrollBy;

    .line 1015
    iget-object p2, p2, Lo/smoothScrollBy;->onMessageChannelReady:Ljava/lang/String;

    .line 202
    invoke-static {p1, p2}, Lo/pullGlows;->onMessageChannelReady(Lo/pullGlows;Ljava/lang/String;)V

    return-void

    :sswitch_8
    const-string p3, "input_list_item"

    .line 205
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 206
    :goto_3
    instance-of p1, p2, Lo/scrollStep;

    if-eqz p1, :cond_14

    .line 207
    iget-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-static {p1}, Lo/releaseGlows;->onMessageChannelReady(Lo/releaseGlows;)Lo/pullGlows;

    move-result-object p1

    check-cast p2, Lo/scrollStep;

    .line 1045
    iget-object p3, p2, Lo/scrollStep;->onPostMessage:Ljava/lang/String;

    .line 1046
    iget-object v0, p2, Lo/scrollStep;->onNavigationEvent:Ljava/lang/String;

    .line 1049
    iget-object p2, p2, Lo/scrollStep;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 1111
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onNavigationEvent:Ljava/lang/String;

    .line 207
    invoke-virtual {p1, p3, v0, p2}, Lo/pullGlows;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x644a2c21 -> :sswitch_8
        -0x3f9117d7 -> :sswitch_7
        -0xb39852d -> :sswitch_6
        -0x4dc5946 -> :sswitch_5
        0x14f191e7 -> :sswitch_4
        0x1c2fceab -> :sswitch_3
        0x1febe164 -> :sswitch_2
        0x72c36256 -> :sswitch_1
        0x7ee99eff -> :sswitch_0
    .end sparse-switch
.end method
