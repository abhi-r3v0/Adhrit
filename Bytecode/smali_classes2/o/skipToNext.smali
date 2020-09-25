.class public Lo/skipToNext;
.super Landroidx/fragment/app/Fragment;
.source ""


# instance fields
.field private ICustomTabsCallback:Landroid/widget/ListAdapter;

.field private ICustomTabsCallback$Stub:Landroid/view/View;

.field private asBinder:Landroid/view/View;

.field private asInterface:Z

.field private final extraCallback:Landroid/os/Handler;

.field onMessageChannelReady:Landroid/widget/ListView;

.field private final onNavigationEvent:Landroid/widget/AdapterView$OnItemClickListener;

.field private final onPostMessage:Ljava/lang/Runnable;

.field private onRelationshipValidationResult:Landroid/view/View;

.field private onTransact:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/skipToNext;->extraCallback:Landroid/os/Handler;

    .line 52
    new-instance v0, Lo/skipToNext$4;

    invoke-direct {v0, p0}, Lo/skipToNext$4;-><init>(Lo/skipToNext;)V

    iput-object v0, p0, Lo/skipToNext;->onPostMessage:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lo/skipToNext$2;

    invoke-direct {v0, p0}, Lo/skipToNext$2;-><init>(Lo/skipToNext;)V

    iput-object v0, p0, Lo/skipToNext;->onNavigationEvent:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private onMessageChannelReady(Landroid/widget/ListAdapter;)V
    .locals 4

    .line 185
    iget-object v0, p0, Lo/skipToNext;->ICustomTabsCallback:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    iput-object p1, p0, Lo/skipToNext;->ICustomTabsCallback:Landroid/widget/ListAdapter;

    .line 187
    iget-object v3, p0, Lo/skipToNext;->onMessageChannelReady:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 188
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-boolean p1, p0, Lo/skipToNext;->asInterface:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v2, v1}, Lo/skipToNext;->onMessageChannelReady(ZZ)V

    :cond_2
    return-void
.end method

.method private onMessageChannelReady(ZZ)V
    .locals 5

    .line 287
    invoke-direct {p0}, Lo/skipToNext;->onPostMessage()V

    .line 288
    iget-object v0, p0, Lo/skipToNext;->asBinder:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 291
    iget-boolean v1, p0, Lo/skipToNext;->asInterface:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 294
    :cond_0
    iput-boolean p1, p0, Lo/skipToNext;->asInterface:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x10a0001

    const/high16 v4, 0x10a0000

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 297
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object p1, p0, Lo/skipToNext;->onRelationshipValidationResult:Landroid/view/View;

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 299
    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 303
    iget-object p1, p0, Lo/skipToNext;->onRelationshipValidationResult:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 305
    :goto_0
    iget-object p1, p0, Lo/skipToNext;->asBinder:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object p1, p0, Lo/skipToNext;->onRelationshipValidationResult:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 309
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 311
    iget-object p1, p0, Lo/skipToNext;->onRelationshipValidationResult:Landroid/view/View;

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 311
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 314
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 315
    iget-object p1, p0, Lo/skipToNext;->onRelationshipValidationResult:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 317
    :goto_1
    iget-object p1, p0, Lo/skipToNext;->asBinder:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lo/skipToNext;->onRelationshipValidationResult:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 289
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be used with a custom content view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onPostMessage()V
    .locals 3

    .line 349
    iget-object v0, p0, Lo/skipToNext;->onMessageChannelReady:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 356
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 357
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lo/skipToNext;->onMessageChannelReady:Landroid/widget/ListView;

    goto :goto_1

    :cond_1
    const v1, 0xff0001

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lo/skipToNext;->onTransact:Landroid/widget/TextView;

    if-nez v1, :cond_2

    const v1, 0x1020004

    .line 361
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lo/skipToNext;->ICustomTabsCallback$Stub:Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 363
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v1, 0xff0002

    .line 365
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lo/skipToNext;->asBinder:Landroid/view/View;

    const v1, 0xff0003

    .line 366
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lo/skipToNext;->onRelationshipValidationResult:Landroid/view/View;

    const v1, 0x102000a

    .line 367
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 368
    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    .line 370
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_4
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lo/skipToNext;->onMessageChannelReady:Landroid/widget/ListView;

    .line 379
    iget-object v1, p0, Lo/skipToNext;->ICustomTabsCallback$Stub:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lo/skipToNext;->asInterface:Z

    .line 387
    iget-object v0, p0, Lo/skipToNext;->onMessageChannelReady:Landroid/widget/ListView;

    iget-object v1, p0, Lo/skipToNext;->onNavigationEvent:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 388
    iget-object v0, p0, Lo/skipToNext;->ICustomTabsCallback:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 390
    iput-object v1, p0, Lo/skipToNext;->ICustomTabsCallback:Landroid/widget/ListAdapter;

    .line 391
    invoke-direct {p0, v0}, Lo/skipToNext;->onMessageChannelReady(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 395
    :cond_6
    iget-object v0, p0, Lo/skipToNext;->asBinder:Landroid/view/View;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, v0, v0}, Lo/skipToNext;->onMessageChannelReady(ZZ)V

    .line 399
    :cond_7
    :goto_2
    iget-object v0, p0, Lo/skipToNext;->extraCallback:Landroid/os/Handler;

    iget-object v1, p0, Lo/skipToNext;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 354
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    .line 99
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0xff0002

    .line 104
    invoke-virtual {p3, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x8

    .line 106
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x11

    .line 107
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 109
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x101007a

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0xff0003

    .line 120
    invoke-virtual {p3, v1}, Landroid/view/View;->setId(I)V

    .line 122
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0xff0001

    .line 123
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 124
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 125
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const p1, 0x102000a

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    const/4 p1, 0x0

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    .line 131
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public onDestroyView()V
    .locals 2

    .line 159
    iget-object v0, p0, Lo/skipToNext;->extraCallback:Landroid/os/Handler;

    iget-object v1, p0, Lo/skipToNext;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lo/skipToNext;->onMessageChannelReady:Landroid/widget/ListView;

    const/4 v1, 0x0

    .line 161
    iput-boolean v1, p0, Lo/skipToNext;->asInterface:Z

    .line 162
    iput-object v0, p0, Lo/skipToNext;->onRelationshipValidationResult:Landroid/view/View;

    iput-object v0, p0, Lo/skipToNext;->asBinder:Landroid/view/View;

    iput-object v0, p0, Lo/skipToNext;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 163
    iput-object v0, p0, Lo/skipToNext;->onTransact:Landroid/widget/TextView;

    .line 164
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    invoke-direct {p0}, Lo/skipToNext;->onPostMessage()V

    return-void
.end method
