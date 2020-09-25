.class public final Lo/onItemsMoved$onMessageChannelReady;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onItemsMoved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u001e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/LendingAutoDebitConfirmationAdapter$ItemViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "view",
        "Landroid/view/View;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/View;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "accountNumber",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "bankDetails",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "bankLogo",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "bankName",
        "change",
        "description",
        "note",
        "parentLayout",
        "title",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "payload",
        "payloads",
        "",
        "",
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
.field private final ICustomTabsCallback:Landroid/widget/TextView;

.field private final ICustomTabsCallback$Stub:Lo/setSpeed;

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

.field private final asInterface:Lo/onChildrenLoaded;

.field private final extraCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Lo/onChildrenLoaded;

.field private final onPostMessage:Landroid/widget/TextView;

.field private final onTransact:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 31
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onItemsMoved$onMessageChannelReady;->extraCallback:Landroid/widget/TextView;

    .line 32
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->parentLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    iput-object p2, p0, Lo/onItemsMoved$onMessageChannelReady;->onNavigationEvent:Lo/onChildrenLoaded;

    .line 33
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onItemsMoved$onMessageChannelReady;->onPostMessage:Landroid/widget/TextView;

    .line 34
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->change:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onItemsMoved$onMessageChannelReady;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 35
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->note:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onItemsMoved$onMessageChannelReady;->onMessageChannelReady:Landroid/widget/TextView;

    .line 36
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->bank_details:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    iput-object p2, p0, Lo/onItemsMoved$onMessageChannelReady;->asInterface:Lo/onChildrenLoaded;

    .line 37
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->bankLogo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/setSpeed;

    iput-object p2, p0, Lo/onItemsMoved$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setSpeed;

    .line 38
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->bankName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onItemsMoved$onMessageChannelReady;->onTransact:Landroid/widget/TextView;

    .line 39
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->accountNumber:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onItemsMoved$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;

    if-eqz v2, :cond_b

    .line 43
    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;

    .line 1073
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

    .line 43
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "change"

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, v0, Lo/onItemsMoved$onMessageChannelReady;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v2, v0, Lo/onItemsMoved$onMessageChannelReady;->onNavigationEvent:Lo/onChildrenLoaded;

    const-string v3, "parentLayout"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Lo/onItemsMoved$onMessageChannelReady$onPostMessage;

    invoke-direct {v3, v0}, Lo/onItemsMoved$onMessageChannelReady$onPostMessage;-><init>(Lo/onItemsMoved$onMessageChannelReady;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v2, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v2, v0, Lo/onItemsMoved$onMessageChannelReady;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2058
    :goto_0
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->extraCallback:Ljava/lang/String;

    const-string v3, "bank"

    .line 52
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "$this$visible"

    const-string v6, "$this$gone"

    const-string v7, "bankDetails"

    const-string v8, "description"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_7

    .line 2064
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 52
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ne v2, v10, :cond_7

    .line 53
    iget-object v2, v0, Lo/onItemsMoved$onMessageChannelReady;->asInterface:Lo/onChildrenLoaded;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v2, v0, Lo/onItemsMoved$onMessageChannelReady;->onPostMessage:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v11, v0, Lo/onItemsMoved$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setSpeed;

    const-string v2, "bankLogo"

    invoke-static {v11, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3054
    iget-object v12, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    .line 55
    invoke-static/range {v11 .. v18}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 56
    iget-object v3, v0, Lo/onItemsMoved$onMessageChannelReady;->onTransact:Landroid/widget/TextView;

    const-string v4, "bankName"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3066
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->onRelationshipValidationResult:Ljava/lang/String;

    .line 56
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v3, v0, Lo/onItemsMoved$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    const-string v4, "accountNumber"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4064
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 57
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v3, v0, Lo/onItemsMoved$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setSpeed;

    invoke-static {v3, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4116
    iget-object v2, v3, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 4216
    iget-object v2, v2, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v2, :cond_6

    check-cast v2, Lo/setMaxFrame;

    .line 58
    check-cast v2, Lo/getComposition;

    const-string v3, "bankLogo.hierarchy"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onPostMessage()Lo/setFailureListener$extraCallback;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    .line 6369
    invoke-virtual {v2, v4}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v2

    .line 6370
    instance-of v4, v2, Lo/fromAssets;

    if-eqz v4, :cond_2

    .line 6371
    check-cast v2, Lo/fromAssets;

    goto :goto_2

    .line 6373
    :cond_2
    sget-object v4, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v2, v4}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v2

    .line 7094
    :goto_2
    iget-object v4, v2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v4, v3, :cond_4

    if-eqz v4, :cond_3

    .line 8053
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_8

    .line 7098
    iput-object v3, v2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 7099
    iput-object v9, v2, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 7100
    invoke-virtual {v2}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 7101
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_5

    .line 6215
    :cond_5
    throw v9

    .line 5215
    :cond_6
    throw v9

    .line 60
    :cond_7
    iget-object v2, v0, Lo/onItemsMoved$onMessageChannelReady;->asInterface:Lo/onChildrenLoaded;

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9017
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v2, v0, Lo/onItemsMoved$onMessageChannelReady;->onPostMessage:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10009
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_8
    :goto_5
    iget-object v2, v0, Lo/onItemsMoved$onMessageChannelReady;->onMessageChannelReady:Landroid/widget/TextView;

    const-string v3, "note"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10071
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 63
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-ne v3, v10, :cond_a

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f13043d

    new-array v4, v10, [Ljava/lang/Object;

    .line 11071
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->getInterfaceDescriptor:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 63
    invoke-static {v3, v4}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_a
    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v2, v9}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, v0, Lo/onItemsMoved$onMessageChannelReady;->extraCallback:Landroid/widget/TextView;

    const-string/jumbo v3, "title"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12056
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->onPostMessage:Ljava/lang/String;

    .line 64
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, v0, Lo/onItemsMoved$onMessageChannelReady;->onPostMessage:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12068
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->asBinder:Ljava/lang/String;

    .line 65
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public final onPostMessage(Lo/StaggeredGridLayoutManager;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/StaggeredGridLayoutManager;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;

    if-eqz v0, :cond_3

    .line 71
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "date"

    .line 72
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lo/onItemsMoved$onMessageChannelReady;->onPostMessage:Landroid/widget/TextView;

    const-string v1, "description"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;

    .line 13068
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->asBinder:Ljava/lang/String;

    .line 73
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lo/onItemsMoved$onMessageChannelReady;->onMessageChannelReady:Landroid/widget/TextView;

    const-string v2, "note"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13071
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 74
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ne v2, v4, :cond_2

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f13043d

    new-array v4, v4, [Ljava/lang/Object;

    .line 14071
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/FeaturePitch;->getInterfaceDescriptor:Ljava/lang/String;

    aput-object v1, v4, v3

    .line 74
    invoke-static {v2, v4}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    return-void
.end method
