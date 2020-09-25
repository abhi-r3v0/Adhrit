.class public Lo/onTransact;
.super Lo/warmup;
.source ""

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onTransact$onNavigationEvent;
    }
.end annotation


# instance fields
.field public final extraCallback:Lo/onRelationshipValidationResult;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 98
    invoke-static {p1, p2}, Lo/onTransact;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lo/warmup;-><init>(Landroid/content/Context;I)V

    .line 99
    new-instance p1, Lo/onRelationshipValidationResult;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lo/onRelationshipValidationResult;-><init>(Landroid/content/Context;Lo/warmup;Landroid/view/Window;)V

    iput-object p1, p0, Lo/onTransact;->extraCallback:Lo/onRelationshipValidationResult;

    return-void
.end method

.method static onMessageChannelReady(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    if-lez v0, :cond_0

    return p1

    .line 114
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lo/extraCallback$ICustomTabsCallback;->alertDialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 278
    invoke-super {p0, p1}, Lo/warmup;->onCreate(Landroid/os/Bundle;)V

    .line 279
    iget-object p1, p0, Lo/onTransact;->extraCallback:Lo/onRelationshipValidationResult;

    .line 2243
    iget v0, p1, Lo/onRelationshipValidationResult;->notify:I

    .line 2232
    iget-object v1, p1, Lo/onRelationshipValidationResult;->ICustomTabsCallback:Lo/warmup;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2467
    iget-object v0, p1, Lo/onRelationshipValidationResult;->extraCallback:Landroid/view/Window;

    sget v1, Lo/extraCallback$asBinder;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2468
    sget v1, Lo/extraCallback$asBinder;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2469
    sget v2, Lo/extraCallback$asBinder;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2470
    sget v3, Lo/extraCallback$asBinder;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2474
    sget v4, Lo/extraCallback$asBinder;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2640
    iget-object v4, p1, Lo/onRelationshipValidationResult;->ICustomTabsCallback$Stub:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 2641
    iget-object v4, p1, Lo/onRelationshipValidationResult;->ICustomTabsCallback$Stub:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    .line 2650
    invoke-static {v4}, Lo/onRelationshipValidationResult;->onMessageChannelReady(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2651
    :cond_2
    iget-object v9, p1, Lo/onRelationshipValidationResult;->extraCallback:Landroid/view/Window;

    const/high16 v10, 0x20000

    invoke-virtual {v9, v10, v10}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    const/4 v9, -0x1

    const/16 v10, 0x8

    if-eqz v8, :cond_4

    .line 2656
    iget-object v8, p1, Lo/onRelationshipValidationResult;->extraCallback:Landroid/view/Window;

    sget v11, Lo/extraCallback$asBinder;->custom:I

    invoke-virtual {v8, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 2657
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2664
    iget-object v4, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    if-eqz v4, :cond_5

    .line 2665
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v8, 0x0

    iput v8, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    goto :goto_2

    .line 2668
    :cond_4
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2477
    :cond_5
    :goto_2
    sget v4, Lo/extraCallback$asBinder;->topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2478
    sget v8, Lo/extraCallback$asBinder;->contentPanel:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2479
    sget v11, Lo/extraCallback$asBinder;->buttonPanel:I

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2482
    invoke-static {v4, v1}, Lo/onRelationshipValidationResult;->ICustomTabsCallback(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 2483
    invoke-static {v8, v2}, Lo/onRelationshipValidationResult;->ICustomTabsCallback(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 2484
    invoke-static {v11, v3}, Lo/onRelationshipValidationResult;->ICustomTabsCallback(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 2719
    iget-object v4, p1, Lo/onRelationshipValidationResult;->extraCallback:Landroid/view/Window;

    sget v8, Lo/extraCallback$asBinder;->scrollView:I

    invoke-virtual {v4, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/prepareFromUri;

    iput-object v4, p1, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    .line 2720
    iget-object v4, p1, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 2721
    iget-object v4, p1, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    invoke-virtual {v4, v7}, Lo/prepareFromUri;->setNestedScrollingEnabled(Z)V

    const v4, 0x102000b

    .line 2724
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p1, Lo/onRelationshipValidationResult;->IPostMessageService$Stub:Landroid/widget/TextView;

    .line 2725
    iget-object v4, p1, Lo/onRelationshipValidationResult;->IPostMessageService$Stub:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 2729
    iget-object v4, p1, Lo/onRelationshipValidationResult;->onTransact:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    .line 2730
    iget-object v4, p1, Lo/onRelationshipValidationResult;->IPostMessageService$Stub:Landroid/widget/TextView;

    iget-object v8, p1, Lo/onRelationshipValidationResult;->onTransact:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2732
    :cond_6
    iget-object v4, p1, Lo/onRelationshipValidationResult;->IPostMessageService$Stub:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2733
    iget-object v4, p1, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    iget-object v8, p1, Lo/onRelationshipValidationResult;->IPostMessageService$Stub:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2735
    iget-object v4, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    if-eqz v4, :cond_7

    .line 2736
    iget-object v4, p1, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2737
    iget-object v8, p1, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 2738
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2739
    iget-object v11, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v11, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 2742
    :cond_7
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_3
    const v4, 0x1020019

    .line 2763
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p1, Lo/onRelationshipValidationResult;->warmup:Landroid/widget/Button;

    .line 2764
    iget-object v4, p1, Lo/onRelationshipValidationResult;->warmup:Landroid/widget/Button;

    iget-object v8, p1, Lo/onRelationshipValidationResult;->read:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2766
    iget-object v4, p1, Lo/onRelationshipValidationResult;->ICustomTabsService:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, Lo/onRelationshipValidationResult;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_9

    .line 2767
    iget-object v4, p1, Lo/onRelationshipValidationResult;->warmup:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    goto :goto_4

    .line 2769
    :cond_9
    iget-object v4, p1, Lo/onRelationshipValidationResult;->warmup:Landroid/widget/Button;

    iget-object v8, p1, Lo/onRelationshipValidationResult;->ICustomTabsService:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2770
    iget-object v4, p1, Lo/onRelationshipValidationResult;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a

    .line 2771
    iget-object v4, p1, Lo/onRelationshipValidationResult;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    iget v8, p1, Lo/onRelationshipValidationResult;->onMessageChannelReady:I

    iget v11, p1, Lo/onRelationshipValidationResult;->onMessageChannelReady:I

    invoke-virtual {v4, v7, v7, v8, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2772
    iget-object v4, p1, Lo/onRelationshipValidationResult;->warmup:Landroid/widget/Button;

    iget-object v8, p1, Lo/onRelationshipValidationResult;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2774
    :cond_a
    iget-object v4, p1, Lo/onRelationshipValidationResult;->warmup:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x1

    :goto_4
    const v8, 0x102001a

    .line 2778
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p1, Lo/onRelationshipValidationResult;->newSession:Landroid/widget/Button;

    .line 2779
    iget-object v8, p1, Lo/onRelationshipValidationResult;->newSession:Landroid/widget/Button;

    iget-object v11, p1, Lo/onRelationshipValidationResult;->read:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2781
    iget-object v8, p1, Lo/onRelationshipValidationResult;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p1, Lo/onRelationshipValidationResult;->postMessage:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_b

    .line 2782
    iget-object v8, p1, Lo/onRelationshipValidationResult;->newSession:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 2784
    :cond_b
    iget-object v8, p1, Lo/onRelationshipValidationResult;->newSession:Landroid/widget/Button;

    iget-object v11, p1, Lo/onRelationshipValidationResult;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2785
    iget-object v8, p1, Lo/onRelationshipValidationResult;->postMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_c

    .line 2786
    iget-object v8, p1, Lo/onRelationshipValidationResult;->postMessage:Landroid/graphics/drawable/Drawable;

    iget v11, p1, Lo/onRelationshipValidationResult;->onMessageChannelReady:I

    iget v12, p1, Lo/onRelationshipValidationResult;->onMessageChannelReady:I

    invoke-virtual {v8, v7, v7, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2787
    iget-object v8, p1, Lo/onRelationshipValidationResult;->newSession:Landroid/widget/Button;

    iget-object v11, p1, Lo/onRelationshipValidationResult;->postMessage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2789
    :cond_c
    iget-object v8, p1, Lo/onRelationshipValidationResult;->newSession:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v4, v4, 0x2

    :goto_5
    const v8, 0x102001b

    .line 2793
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p1, Lo/onRelationshipValidationResult;->updateVisuals:Landroid/widget/Button;

    .line 2794
    iget-object v8, p1, Lo/onRelationshipValidationResult;->updateVisuals:Landroid/widget/Button;

    iget-object v11, p1, Lo/onRelationshipValidationResult;->read:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2796
    iget-object v8, p1, Lo/onRelationshipValidationResult;->mayLaunchUrl:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p1, Lo/onRelationshipValidationResult;->requestPostMessageChannel:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_d

    .line 2797
    iget-object v8, p1, Lo/onRelationshipValidationResult;->updateVisuals:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 2799
    :cond_d
    iget-object v8, p1, Lo/onRelationshipValidationResult;->updateVisuals:Landroid/widget/Button;

    iget-object v11, p1, Lo/onRelationshipValidationResult;->mayLaunchUrl:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2800
    iget-object v8, p1, Lo/onRelationshipValidationResult;->requestPostMessageChannel:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_e

    .line 2801
    iget-object v8, p1, Lo/onRelationshipValidationResult;->requestPostMessageChannel:Landroid/graphics/drawable/Drawable;

    iget v11, p1, Lo/onRelationshipValidationResult;->onMessageChannelReady:I

    iget v12, p1, Lo/onRelationshipValidationResult;->onMessageChannelReady:I

    invoke-virtual {v8, v7, v7, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2802
    iget-object v8, p1, Lo/onRelationshipValidationResult;->updateVisuals:Landroid/widget/Button;

    iget-object v11, p1, Lo/onRelationshipValidationResult;->requestPostMessageChannel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2804
    :cond_e
    iget-object v8, p1, Lo/onRelationshipValidationResult;->updateVisuals:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v4, v4, 0x4

    .line 2808
    :goto_6
    iget-object v8, p1, Lo/onRelationshipValidationResult;->onPostMessage:Landroid/content/Context;

    .line 3177
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 3178
    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v12, Lo/extraCallback$ICustomTabsCallback;->alertDialogCenterButtons:I

    invoke-virtual {v8, v12, v11, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3179
    iget v8, v11, Landroid/util/TypedValue;->data:I

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    goto :goto_7

    :cond_f
    const/4 v8, 0x0

    :goto_7
    const/4 v11, 0x2

    if-eqz v8, :cond_12

    const/high16 v8, 0x3f000000    # 0.5f

    if-ne v4, v6, :cond_10

    .line 2814
    iget-object v12, p1, Lo/onRelationshipValidationResult;->warmup:Landroid/widget/Button;

    .line 3829
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 3830
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3831
    iput v8, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3832
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_10
    if-ne v4, v11, :cond_11

    .line 2816
    iget-object v12, p1, Lo/onRelationshipValidationResult;->newSession:Landroid/widget/Button;

    .line 4829
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 4830
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4831
    iput v8, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 4832
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_11
    const/4 v12, 0x4

    if-ne v4, v12, :cond_12

    .line 2818
    iget-object v12, p1, Lo/onRelationshipValidationResult;->updateVisuals:Landroid/widget/Button;

    .line 5829
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 5830
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 5831
    iput v8, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 5832
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    :goto_8
    if-eqz v4, :cond_13

    const/4 v4, 0x1

    goto :goto_9

    :cond_13
    const/4 v4, 0x0

    :goto_9
    if-nez v4, :cond_14

    .line 2824
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 6673
    :cond_14
    iget-object v4, p1, Lo/onRelationshipValidationResult;->INotificationSideChannel:Landroid/view/View;

    if-eqz v4, :cond_15

    .line 6675
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v4, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 6678
    iget-object v8, p1, Lo/onRelationshipValidationResult;->INotificationSideChannel:Landroid/view/View;

    invoke-virtual {v1, v8, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6681
    iget-object v4, p1, Lo/onRelationshipValidationResult;->extraCallback:Landroid/view/Window;

    sget v8, Lo/extraCallback$asBinder;->title_template:I

    invoke-virtual {v4, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 6682
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 6684
    :cond_15
    iget-object v4, p1, Lo/onRelationshipValidationResult;->extraCallback:Landroid/view/Window;

    const v8, 0x1020006

    invoke-virtual {v4, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p1, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    .line 6686
    iget-object v4, p1, Lo/onRelationshipValidationResult;->onNavigationEvent:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_17

    .line 6687
    iget-boolean v4, p1, Lo/onRelationshipValidationResult;->setDefaultImpl:Z

    if-eqz v4, :cond_17

    .line 6689
    iget-object v4, p1, Lo/onRelationshipValidationResult;->extraCallback:Landroid/view/Window;

    sget v8, Lo/extraCallback$asBinder;->alertTitle:I

    invoke-virtual {v4, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p1, Lo/onRelationshipValidationResult;->IPostMessageService:Landroid/widget/TextView;

    .line 6690
    iget-object v4, p1, Lo/onRelationshipValidationResult;->IPostMessageService:Landroid/widget/TextView;

    iget-object v8, p1, Lo/onRelationshipValidationResult;->onNavigationEvent:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6697
    iget-object v4, p1, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_16

    .line 6698
    iget-object v4, p1, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    iget-object v8, p1, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 6702
    :cond_16
    iget-object v4, p1, Lo/onRelationshipValidationResult;->IPostMessageService:Landroid/widget/TextView;

    iget-object v8, p1, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    iget-object v9, p1, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    .line 6703
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    iget-object v12, p1, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    .line 6704
    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    iget-object v13, p1, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    .line 6705
    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    .line 6702
    invoke-virtual {v4, v8, v9, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 6706
    iget-object v4, p1, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 6710
    :cond_17
    iget-object v4, p1, Lo/onRelationshipValidationResult;->extraCallback:Landroid/view/Window;

    sget v8, Lo/extraCallback$asBinder;->title_template:I

    invoke-virtual {v4, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 6711
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 6712
    iget-object v4, p1, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6713
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    if-eqz v0, :cond_18

    .line 2491
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_18

    const/4 v0, 0x1

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    :goto_b
    if-eqz v1, :cond_19

    .line 2493
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_19

    const/4 v4, 0x1

    goto :goto_c

    :cond_19
    const/4 v4, 0x0

    :goto_c
    if-eqz v3, :cond_1a

    .line 2495
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v10, :cond_1a

    const/4 v3, 0x1

    goto :goto_d

    :cond_1a
    const/4 v3, 0x0

    :goto_d
    if-nez v3, :cond_1b

    if-eqz v2, :cond_1b

    .line 2500
    sget v8, Lo/extraCallback$asBinder;->textSpacerNoButtons:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1b

    .line 2502
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    if-eqz v4, :cond_1f

    .line 2509
    iget-object v8, p1, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    if-eqz v8, :cond_1c

    .line 2510
    iget-object v8, p1, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 2515
    :cond_1c
    iget-object v8, p1, Lo/onRelationshipValidationResult;->onTransact:Ljava/lang/CharSequence;

    if-nez v8, :cond_1e

    iget-object v8, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    if-eqz v8, :cond_1d

    goto :goto_e

    :cond_1d
    move-object v1, v5

    goto :goto_f

    .line 2516
    :cond_1e
    :goto_e
    sget v8, Lo/extraCallback$asBinder;->titleDividerNoCustom:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_f
    if-eqz v1, :cond_20

    .line 2520
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_1f
    if-eqz v2, :cond_20

    .line 2524
    sget v1, Lo/extraCallback$asBinder;->textSpacerNoTitle:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2526
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2531
    :cond_20
    :goto_10
    iget-object v1, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    instance-of v1, v1, Lo/onRelationshipValidationResult$extraCallback;

    if-eqz v1, :cond_21

    .line 2532
    iget-object v1, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    check-cast v1, Lo/onRelationshipValidationResult$extraCallback;

    invoke-virtual {v1, v4, v3}, Lo/onRelationshipValidationResult$extraCallback;->setHasDecor(ZZ)V

    :cond_21
    if-nez v0, :cond_2c

    .line 2537
    iget-object v0, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    goto :goto_11

    :cond_22
    iget-object v0, p1, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    :goto_11
    if-eqz v0, :cond_2c

    if-eqz v3, :cond_23

    const/4 v7, 0x2

    :cond_23
    or-int v1, v4, v7

    .line 7560
    iget-object v3, p1, Lo/onRelationshipValidationResult;->extraCallback:Landroid/view/Window;

    sget v4, Lo/extraCallback$asBinder;->scrollIndicatorUp:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 7561
    iget-object v4, p1, Lo/onRelationshipValidationResult;->extraCallback:Landroid/view/Window;

    sget v7, Lo/extraCallback$asBinder;->scrollIndicatorDown:I

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 7563
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_25

    const/4 v5, 0x3

    .line 7565
    invoke-static {v0, v1, v5}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;II)V

    if-eqz v3, :cond_24

    .line 7568
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_24
    if-eqz v4, :cond_2c

    .line 7571
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_13

    :cond_25
    if-eqz v3, :cond_26

    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_26

    .line 7576
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v3, v5

    :cond_26
    if-eqz v4, :cond_27

    and-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_27

    .line 7580
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_12

    :cond_27
    move-object v5, v4

    :goto_12
    if-nez v3, :cond_28

    if-eqz v5, :cond_2c

    .line 7588
    :cond_28
    iget-object v0, p1, Lo/onRelationshipValidationResult;->onTransact:Ljava/lang/CharSequence;

    if-eqz v0, :cond_29

    .line 7590
    iget-object v0, p1, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    new-instance v1, Lo/onRelationshipValidationResult$5;

    invoke-direct {v1, p1, v3, v5}, Lo/onRelationshipValidationResult$5;-><init>(Lo/onRelationshipValidationResult;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lo/prepareFromUri;->setOnScrollChangeListener(Lo/prepareFromUri$extraCallback;)V

    .line 7600
    iget-object v0, p1, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    new-instance v1, Lo/onRelationshipValidationResult$3;

    invoke-direct {v1, p1, v3, v5}, Lo/onRelationshipValidationResult$3;-><init>(Lo/onRelationshipValidationResult;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 7606
    :cond_29
    iget-object v0, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    if-eqz v0, :cond_2a

    .line 7608
    iget-object v0, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    new-instance v1, Lo/onRelationshipValidationResult$1;

    invoke-direct {v1, p1, v3, v5}, Lo/onRelationshipValidationResult$1;-><init>(Lo/onRelationshipValidationResult;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 7619
    iget-object v0, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    new-instance v1, Lo/onRelationshipValidationResult$2;

    invoke-direct {v1, p1, v3, v5}, Lo/onRelationshipValidationResult$2;-><init>(Lo/onRelationshipValidationResult;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    :cond_2a
    if-eqz v3, :cond_2b

    .line 7628
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2b
    if-eqz v5, :cond_2c

    .line 7631
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2546
    :cond_2c
    :goto_13
    iget-object v0, p1, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    if-eqz v0, :cond_2d

    .line 2547
    iget-object v1, p1, Lo/onRelationshipValidationResult;->cancelAll:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2d

    .line 2548
    iget-object v1, p1, Lo/onRelationshipValidationResult;->cancelAll:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2549
    iget p1, p1, Lo/onRelationshipValidationResult;->cancel:I

    if-ltz p1, :cond_2d

    .line 2551
    invoke-virtual {v0, p1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2552
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_2d
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 284
    iget-object v0, p0, Lo/onTransact;->extraCallback:Lo/onRelationshipValidationResult;

    .line 8422
    iget-object v1, v0, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    invoke-virtual {v0, p2}, Lo/prepareFromUri;->ICustomTabsCallback(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 287
    :cond_1
    invoke-super {p0, p1, p2}, Lo/warmup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 292
    iget-object v0, p0, Lo/onTransact;->extraCallback:Lo/onRelationshipValidationResult;

    .line 8427
    iget-object v1, v0, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/onRelationshipValidationResult;->extraCommand:Lo/prepareFromUri;

    invoke-virtual {v0, p2}, Lo/prepareFromUri;->ICustomTabsCallback(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 295
    :cond_1
    invoke-super {p0, p1, p2}, Lo/warmup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lo/warmup;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lo/onTransact;->extraCallback:Lo/onRelationshipValidationResult;

    .line 1247
    iput-object p1, v0, Lo/onRelationshipValidationResult;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 1248
    iget-object v1, v0, Lo/onRelationshipValidationResult;->IPostMessageService:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1249
    iget-object v0, v0, Lo/onRelationshipValidationResult;->IPostMessageService:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
