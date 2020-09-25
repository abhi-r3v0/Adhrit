.class public final Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;-><init>()V
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
        "com/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$onItemClickListener$1",
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
.field final synthetic onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 10

    const-string p3, "failed"

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x4dc5946

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_7

    const v1, 0x1c2fceab

    if-eq v0, v1, :cond_0

    const p3, 0x7ee99eff

    if-ne v0, p3, :cond_15

    const-string p3, "asset_card"

    .line 323
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 324
    instance-of p1, p2, Lo/setOnScrollListener;

    if-eqz p1, :cond_14

    .line 325
    sget-object p1, Lo/recycleChildren;->onMessageChannelReady:Lo/recycleChildren$onPostMessage;

    check-cast p2, Lo/setOnScrollListener;

    invoke-static {p2}, Lo/recycleChildren$onPostMessage;->onPostMessage(Lo/setOnScrollListener;)Lo/recycleChildren;

    move-result-object p1

    .line 326
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p2

    const-string p3, "AssetViewerDialogFragment"

    invoke-virtual {p1, p2, p3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "broadcast_code"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 262
    instance-of p1, p2, Lo/getRecycleChildrenOnDetach;

    if-eqz p1, :cond_14

    .line 263
    move-object p1, p2

    check-cast p1, Lo/getRecycleChildrenOnDetach;

    .line 15096
    iget-object p1, p1, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 16078
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 264
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->getInterfaceDescriptor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p2, 0x7f1304ec

    invoke-static {p2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;)Lo/setIconifiedByDefault;

    move-result-object v0

    .line 16161
    iget-object v1, v0, Lo/setIconifiedByDefault;->onNavigationEvent:Lo/getSuggestionsAdapter;

    if-eqz v1, :cond_2

    .line 16162
    iget-object v1, v0, Lo/setIconifiedByDefault;->onNavigationEvent:Lo/getSuggestionsAdapter;

    invoke-interface {v1}, Lo/getSuggestionsAdapter;->onNavigationEvent()V

    .line 16163
    :cond_2
    sget-object v1, Lo/setIconifiedByDefault$onNavigationEvent;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    iput-object v1, v0, Lo/setIconifiedByDefault;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    .line 17000
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v4, 0x3

    .line 270
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 17073
    iput v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->ICustomTabsCallback:I

    .line 271
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    .line 18000
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 271
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    .line 19000
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 272
    sget-object v5, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onRelationshipValidationResult()I

    move-result v5

    mul-int v0, v0, v5

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v4, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 273
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;)Lo/setIconifiedByDefault;

    move-result-object v0

    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface$extraCallback;

    invoke-direct {v1, p1, p0, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface$extraCallback;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;Lo/StaggeredGridLayoutManager;)V

    check-cast v1, Lo/setQueryRefinementEnabled;

    .line 298
    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->ICustomTabsCallback$Stub()I

    move-result v2

    .line 273
    invoke-virtual {v0, p1, v1, v2}, Lo/setIconifiedByDefault;->onNavigationEvent(Ljava/lang/String;Lo/setQueryRefinementEnabled;I)I

    move-result p1

    .line 299
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->asInterface(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;)Lo/setMenuVisibility;

    move-result-object v0

    invoke-virtual {v0}, Lo/setMenuVisibility;->extraCallback()V

    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 307
    :cond_3
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    const-string p2, "headset_on"

    invoke-static {p1, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->errorView:I

    invoke-virtual {p1, p2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setLayoutStateDirection;

    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p2, 0x7f13027d

    invoke-static {p2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lo/setLayoutStateDirection;->extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V

    return-void

    .line 311
    :cond_4
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-static {p1, p3}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->errorView:I

    invoke-virtual {p1, p2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setLayoutStateDirection;

    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p2, 0x7f130413

    invoke-static {p2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lo/setLayoutStateDirection;->extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 302
    :cond_5
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    const-string/jumbo v0, "success"

    invoke-static {p1, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;Ljava/lang/String;)V

    .line 303
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {v3}, Lo/setTrackTintMode;->onNavigationEvent(Z)V

    .line 304
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    check-cast p2, Lo/getRecycleChildrenOnDetach;

    invoke-static {p1, p2, v3}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;Lo/getRecycleChildrenOnDetach;I)V
    :try_end_0
    .catch Lcom/cred/sproxlib/share/medium/sound/modulate/PublisherException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 317
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-static {p2, p3}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;Ljava/lang/String;)V

    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "PublisherException: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 19010
    new-instance p3, Ljava/io/StringWriter;

    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    .line 19011
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p3, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 19012
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 19013
    invoke-virtual {p3}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LifeStyle"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    const-string p3, "output_cta_clicked"

    .line 208
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 209
    instance-of p1, p2, Lo/getRecycleChildrenOnDetach;

    if-eqz p1, :cond_14

    const/4 p1, 0x2

    new-array p3, p1, [Lo/addWrite;

    .line 211
    check-cast p2, Lo/getRecycleChildrenOnDetach;

    .line 1096
    iget-object v0, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 2076
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 2089
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v0, :cond_9

    .line 3000
    iget-object v0, v0, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 211
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    const-string v4, " "

    const-string v5, "_"

    .line 3075
    invoke-static {v0, v4, v5, v2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 211
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    move-object v0, v1

    .line 4043
    :goto_1
    new-instance v4, Lo/addWrite;

    const-string v5, "cta_title"

    invoke-direct {v4, v5, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, p3, v2

    .line 5043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v4, "source"

    const-string v5, "claim"

    invoke-direct {v0, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p3, v3

    const-string v0, "pairs"

    .line 210
    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "reward_claimed_output_clicked"

    .line 210
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 6096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 7076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_a

    .line 7090
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->extraCallback:Ljava/lang/String;

    goto :goto_2

    :cond_a
    move-object p1, v1

    :goto_2
    const-string/jumbo p3, "web"

    .line 214
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 7096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 8076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    .line 8087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 217
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-virtual {p2}, Lo/onAudioInfoChanged;->m_()V

    .line 218
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-static {p2}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;)Lo/getMoveDuration;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 219
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-static {p2}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;)Lo/getMoveDuration;

    move-result-object p2

    if-eqz p2, :cond_b

    const/4 p3, 0x6

    invoke-static {p2, p1, v2, v1, p3}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;ZLjava/lang/Boolean;I)V

    :cond_b
    return-void

    .line 221
    :cond_c
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2, p1}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_d
    return-void

    :cond_e
    const-string/jumbo p3, "web_video"

    .line 225
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 8096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 9076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    .line 9087
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 228
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 229
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-static {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;)Lo/getMoveDuration;

    move-result-object p1

    if-eqz p1, :cond_f

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9289
    new-instance p2, Lo/onGetChildDrawingOrder$onLoadChildren;

    new-instance p3, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1a

    move-object v3, p3

    invoke-direct/range {v3 .. v9}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    invoke-direct {p2, p3, v2}, Lo/onGetChildDrawingOrder$onLoadChildren;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;Z)V

    check-cast p2, Lo/getRemoveDuration;

    invoke-virtual {p1, p2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_f
    return-void

    :cond_10
    const-string p3, "deeplink"

    .line 232
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 10096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 11076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    .line 11087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 235
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-virtual {p2}, Lo/onAudioInfoChanged;->m_()V

    .line 236
    sget-object p2, Lo/length;->extraCallback:Lo/length;

    invoke-virtual {p2, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_11
    const-string p3, "certificate"

    .line 239
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 11096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 12076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    .line 12087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 242
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-virtual {p2}, Lo/onAudioInfoChanged;->m_()V

    .line 243
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-static {p2}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;)Lo/getMoveDuration;

    move-result-object p2

    if-eqz p2, :cond_12

    const-string/jumbo p3, "rewardId"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12351
    new-instance p3, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-direct {p3, p1}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;-><init>(Ljava/lang/String;)V

    check-cast p3, Lo/getRemoveDuration;

    invoke-virtual {p2, p3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_12
    return-void

    :cond_13
    const-string p3, "game"

    .line 246
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 13096
    iget-object p1, p2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 14076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    .line 14087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 249
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-virtual {p2}, Lo/onAudioInfoChanged;->m_()V

    .line 250
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asInterface;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    invoke-static {p2}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;)Lo/getMoveDuration;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 14281
    new-instance p3, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;

    invoke-direct {v0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;)V

    check-cast p3, Lo/getRemoveDuration;

    invoke-virtual {p2, p3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_14
    return-void

    .line 330
    :cond_15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "unhandled cta received "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method
