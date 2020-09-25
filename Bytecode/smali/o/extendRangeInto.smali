.class public final Lo/extendRangeInto;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/payments/PaymentsCardHeader;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "init",
        "",
        "paymentNotSupported",
        "setup",
        "cardTemplateData",
        "Lcom/dreamplug/fabrik/ui/control/CardTemplateData;",
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
.field private ICustomTabsCallback:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/extendRangeInto;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/extendRangeInto;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lo/extendRangeInto;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    const-string p4, "context"

    invoke-static {p1, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 13027
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x7f0e0261

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 13028
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 20
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lo/extendRangeInto;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/extendRangeInto;->ICustomTabsCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/extendRangeInto;->ICustomTabsCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/extendRangeInto;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/extendRangeInto;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final setup(Lcom/dreamplug/fabrik/ui/control/CardTemplateData;)V
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "cardTemplateData"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;->getControlMetadata()Lcom/dreamplug/fabrik/ui/control/ControlMetadata;

    move-result-object v1

    const-string v3, "$this$visible"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 1042
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/ControlMetadata;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/PayNowBottomSheetResponse;

    if-eqz v1, :cond_0

    .line 33
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->successGroup:I

    invoke-virtual {v0, v5}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string/jumbo v6, "successGroup"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    invoke-static {v5, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 34
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->instantText:I

    invoke-virtual {v0, v5}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "instantText"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2051
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/PayNowBottomSheetResponse;->ICustomTabsCallback:Ljava/lang/String;

    .line 34
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v5, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 36
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;->getData()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 37
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->bankName:I

    invoke-virtual {v0, v5}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "bankName"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getVariant_name()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v6

    :goto_0
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->accountNumber:I

    invoke-virtual {v0, v5}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "accountNumber"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAccount_number()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    sget-object v5, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-static {v1}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2086
    invoke-static {v5}, Lcom/bumptech/glide/Glide;->onNavigationEvent(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object v5

    check-cast v5, Lo/setSwitchTextAppearance;

    .line 40
    invoke-virtual {v5, v1}, Lo/setSwitchTextAppearance;->onMessageChannelReady(Ljava/lang/String;)Lo/getSwitchPadding;

    move-result-object v1

    const v5, 0x7f080300

    invoke-virtual {v1, v5}, Lo/getSwitchPadding;->ICustomTabsCallback(I)Lo/getSwitchPadding;

    move-result-object v1

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->logo:I

    invoke-virtual {v0, v5}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v5}, Lo/setTextClassifier;->onMessageChannelReady(Landroid/widget/ImageView;)Lo/getPromptPosition;

    .line 43
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;->getControlMetadata()Lcom/dreamplug/fabrik/ui/control/ControlMetadata;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 3044
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/ControlMetadata;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Nudge;

    if-eqz v1, :cond_e

    .line 44
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->layoutNudge:I

    invoke-virtual {v0, v2}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    const-string v5, "layoutNudge"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 45
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->nudgeBackground:I

    invoke-virtual {v0, v2}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    const-string v5, "nudgeBackground"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Landroid/view/View;

    .line 4012
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/cm/models/Nudge;->onPostMessage:Lcom/dreamplug/fabrik/ui/cm/models/Nudge$Background;

    const/4 v14, 0x0

    if-eqz v2, :cond_4

    .line 4022
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/cm/models/Nudge$Background;->onMessageChannelReady:Ljava/lang/String;

    move-object v7, v2

    goto :goto_1

    :cond_4
    move-object v7, v14

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7c

    .line 45
    invoke-static/range {v6 .. v13}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 5012
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/cm/models/Nudge;->onPostMessage:Lcom/dreamplug/fabrik/ui/cm/models/Nudge$Background;

    if-eqz v2, :cond_5

    .line 5020
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/cm/models/Nudge$Background;->onNavigationEvent:Ljava/lang/String;

    move-object v7, v2

    goto :goto_2

    :cond_5
    move-object v7, v14

    .line 47
    :goto_2
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->nudgeBackground:I

    invoke-virtual {v0, v2}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lo/setSpeed;

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    invoke-static/range {v6 .. v13}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 48
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->nudgeBackground:I

    invoke-virtual {v0, v2}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5116
    iget-object v2, v2, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 5216
    iget-object v2, v2, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v2, :cond_d

    check-cast v2, Lo/setMaxFrame;

    .line 48
    check-cast v2, Lo/getComposition;

    const-string v5, "nudgeBackground.hierarchy"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->asInterface()Lo/setFailureListener$extraCallback;

    move-result-object v5

    if-eqz v5, :cond_c

    const/4 v6, 0x2

    .line 7369
    invoke-virtual {v2, v6}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v2

    .line 7370
    instance-of v6, v2, Lo/fromAssets;

    if-eqz v6, :cond_6

    .line 7371
    check-cast v2, Lo/fromAssets;

    goto :goto_3

    .line 7373
    :cond_6
    sget-object v6, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v2, v6}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v2

    .line 8094
    :goto_3
    iget-object v6, v2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v6, v5, :cond_8

    if-eqz v6, :cond_7

    .line 9053
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-nez v6, :cond_9

    .line 8098
    iput-object v5, v2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 8099
    iput-object v14, v2, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 8100
    invoke-virtual {v2}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 8101
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10013
    :cond_9
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/cm/models/Nudge;->ICustomTabsCallback:Ljava/lang/String;

    const-string v5, "nudgeImage"

    if-eqz v2, :cond_a

    .line 51
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->nudgeImage:I

    invoke-virtual {v0, v6}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/setSpeed;

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-static {v6, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11009
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->nudgeImage:I

    invoke-virtual {v0, v3}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lo/setSpeed;

    invoke-static {v15, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3e

    move-object/from16 v16, v2

    invoke-static/range {v15 .. v22}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_6

    .line 54
    :cond_a
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->nudgeImage:I

    invoke-virtual {v0, v2}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const-string v3, "$this$gone"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 11017
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :goto_6
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->nudgeText:I

    invoke-virtual {v0, v2}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string v3, "nudgeText"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12014
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Nudge;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_b

    .line 13000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/CharSequence;

    .line 56
    :cond_b
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 7215
    :cond_c
    throw v14

    .line 6215
    :cond_d
    throw v14

    :cond_e
    return-void
.end method
