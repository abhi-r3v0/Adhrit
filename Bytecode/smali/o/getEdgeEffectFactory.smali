.class public final Lo/getEdgeEffectFactory;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getEdgeEffectFactory$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0018\u00010\nH\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u00142\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/referal/ReferralBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "extra",
        "Lcom/dreamplug/fabrik/ui/lifestyle/referal/ReferralBottomSheet$Data;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/referal/ReferralBottomSheet$Data;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "getEventAttrs",
        "",
        "",
        "",
        "getTheme",
        "",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "",
        "onViewCreated",
        "view",
        "Data",
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
.field private final onMessageChannelReady:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 41
    new-instance v0, Lo/getEdgeEffectFactory$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getEdgeEffectFactory$ICustomTabsCallback;-><init>(Lo/getEdgeEffectFactory;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 41
    iput-object v1, p0, Lo/getEdgeEffectFactory;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/getEdgeEffectFactory;)Ljava/util/Map;
    .locals 0

    .line 39
    invoke-direct {p0}, Lo/getEdgeEffectFactory;->onPostMessage()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final onPostMessage()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [Lo/addWrite;

    .line 13000
    iget-object v2, p0, Lo/getEdgeEffectFactory;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getEdgeEffectFactory$extraCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 13135
    iget-object v2, v2, Lo/getEdgeEffectFactory$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 14043
    :goto_0
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "source"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 15000
    iget-object v4, p0, Lo/getEdgeEffectFactory;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getEdgeEffectFactory$extraCallback;

    if-eqz v4, :cond_1

    .line 15135
    iget-object v4, v4, Lo/getEdgeEffectFactory$extraCallback;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 16043
    :goto_1
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "reward_id"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x2

    .line 17000
    iget-object v4, p0, Lo/getEdgeEffectFactory;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getEdgeEffectFactory$extraCallback;

    if-eqz v4, :cond_2

    .line 17135
    iget-object v4, v4, Lo/getEdgeEffectFactory$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v3

    .line 18043
    :goto_2
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "usage_id"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x3

    .line 19000
    iget-object v4, p0, Lo/getEdgeEffectFactory;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getEdgeEffectFactory$extraCallback;

    if-eqz v4, :cond_3

    .line 19135
    iget-object v4, v4, Lo/getEdgeEffectFactory$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;

    if-eqz v4, :cond_3

    .line 19194
    iget-object v3, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 20043
    :cond_3
    new-instance v4, Lo/addWrite;

    const-string v5, "referral_template_type"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 124
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    return-object v2
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/createAbtInstance;

    .line 112
    new-instance v0, Lo/getEdgeEffectFactory$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/getEdgeEffectFactory$onNavigationEvent;-><init>(Lo/createAbtInstance;)V

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 120
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 111
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final asBinder()I
    .locals 1

    const v0, 0x7f140182

    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0e0037

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    return-void
.end method

.method public final onStart()V
    .locals 7

    .line 98
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onStart()V

    .line 99
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    .line 100
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 101
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v3

    const-string v4, "lifecycle"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0xc8

    new-instance v6, Lo/getEdgeEffectFactory$onMessageChannelReady;

    invoke-direct {v6, v1}, Lo/getEdgeEffectFactory$onMessageChannelReady;-><init>(Landroid/view/Window;)V

    check-cast v6, Lo/getServerTime;

    invoke-static {v2, v3, v4, v5, v6}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 104
    new-instance v1, Lo/getEdgeEffectFactory$onPostMessage;

    invoke-direct {v1, p0}, Lo/getEdgeEffectFactory$onPostMessage;-><init>(Lo/getEdgeEffectFactory;)V

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1000
    iget-object p2, p0, Lo/getEdgeEffectFactory;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getEdgeEffectFactory$extraCallback;

    if-eqz p2, :cond_12

    .line 52
    invoke-direct {p0}, Lo/getEdgeEffectFactory;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    const-string v1, "redeem_referral_bottom_sheet_open"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1135
    iget-object p2, p2, Lo/getEdgeEffectFactory$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;

    .line 1196
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v0, :cond_0

    .line 54
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "view.text1"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    :cond_0
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v0, :cond_1

    .line 55
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "view.text2"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_1
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->image1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setSpeed;

    const-string/jumbo v1, "view.image1"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 2216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    check-cast v0, Lo/setMaxFrame;

    .line 56
    check-cast v0, Lo/getComposition;

    const-string/jumbo v3, "view.image1.hierarchy"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onMessageChannelReady()Lo/setFailureListener$extraCallback;

    move-result-object v3

    if-eqz v3, :cond_10

    const/4 v4, 0x2

    .line 4369
    invoke-virtual {v0, v4}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 4370
    instance-of v4, v0, Lo/fromAssets;

    if-eqz v4, :cond_2

    .line 4371
    check-cast v0, Lo/fromAssets;

    goto :goto_0

    .line 4373
    :cond_2
    sget-object v4, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v4}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 5094
    :goto_0
    iget-object v4, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v3, :cond_4

    if-eqz v4, :cond_3

    .line 6053
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_5

    .line 5098
    iput-object v3, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 5099
    iput-object v2, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 5100
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 5101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6200
    :cond_5
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;

    if-eqz v0, :cond_6

    .line 6339
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v0, v2

    .line 57
    :goto_3
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_9

    .line 58
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->image1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setSpeed;

    const v1, 0x7f0803d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 60
    :cond_9
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->image1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setSpeed;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 7200
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;

    if-eqz v1, :cond_a

    .line 7339
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;->onMessageChannelReady:Ljava/lang/String;

    :cond_a
    if-nez v2, :cond_b

    .line 60
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_b
    invoke-static {v0, v2}, Lo/setInflatedId;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 8202
    :goto_6
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    const-string/jumbo v1, "view.button"

    if-eqz v0, :cond_c

    .line 63
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 64
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9062
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onPostMessage:Ljava/lang/String;

    .line 64
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9204
    :cond_c
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    const-string/jumbo v2, "view.ctaSecondary"

    if-eqz v0, :cond_d

    .line 67
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaSecondary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 68
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaSecondary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10204
    iget-object v3, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 11062
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onPostMessage:Ljava/lang/String;

    .line 68
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 70
    :cond_d
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    .line 12009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "Resources.getSystem()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    .line 12010
    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 71
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 72
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->button:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12200
    :goto_7
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;

    if-eqz v0, :cond_e

    .line 12340
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetBackground;->onPostMessage:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 74
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    const-string/jumbo v3, "view.container"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    invoke-static/range {v3 .. v9}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 76
    :cond_e
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/getEdgeEffectFactory$asBinder;

    invoke-direct {v1, p2, p0}, Lo/getEdgeEffectFactory$asBinder;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;Lo/getEdgeEffectFactory;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 85
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaSecondary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/getEdgeEffectFactory$onTransact;

    invoke-direct {v0, p2, p0}, Lo/getEdgeEffectFactory$onTransact;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;Lo/getEdgeEffectFactory;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 70
    :cond_f
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4215
    :cond_10
    throw v2

    .line 3215
    :cond_11
    throw v2

    :cond_12
    return-void
.end method
