.class public abstract Lo/onPlay;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/onPlayFromUri$extraCallback;
.implements Lo/onPlayFromUri$onPostMessage;
.implements Landroidx/preference/DialogPreference$extraCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onPlay$onNavigationEvent;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

.field private ICustomTabsCallback$Stub:Ljava/lang/Runnable;

.field private final asBinder:Lo/onPlay$onNavigationEvent;

.field private asInterface:I

.field private extraCallback:Z

.field private onMessageChannelReady:Lo/onPlayFromUri;

.field private onNavigationEvent:Z

.field private onPostMessage:Landroid/content/Context;

.field private onRelationshipValidationResult:Landroid/os/Handler;

.field private final onTransact:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 135
    sget v0, Lo/onFastForward$onNavigationEvent;->preference_list_fragment:I

    iput v0, p0, Lo/onPlay;->asInterface:I

    .line 137
    new-instance v0, Lo/onPlay$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/onPlay$onNavigationEvent;-><init>(Lo/onPlay;)V

    iput-object v0, p0, Lo/onPlay;->asBinder:Lo/onPlay$onNavigationEvent;

    .line 140
    new-instance v0, Lo/onPlay$3;

    invoke-direct {v0, p0}, Lo/onPlay$3;-><init>(Lo/onPlay;)V

    iput-object v0, p0, Lo/onPlay;->onRelationshipValidationResult:Landroid/os/Handler;

    .line 152
    new-instance v0, Lo/onPlay$1;

    invoke-direct {v0, p0}, Lo/onPlay$1;-><init>(Lo/onPlay;)V

    iput-object v0, p0, Lo/onPlay;->onTransact:Ljava/lang/Runnable;

    return-void
.end method

.method private asBinder()V
    .locals 1

    .line 542
    invoke-virtual {p0}, Lo/onPlay;->extraCallback()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Landroidx/preference/Preference;->IPostMessageService$Stub$Proxy()V

    .line 546
    :cond_0
    invoke-virtual {p0}, Lo/onPlay;->onNavigationEvent()V

    return-void
.end method


# virtual methods
.method protected ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final asInterface()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 560
    iget-object v0, p0, Lo/onPlay;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public extraCallback()Landroidx/preference/PreferenceScreen;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected extraCallback(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 614
    new-instance v0, Lo/onSkipToQueueItem;

    invoke-direct {v0, p1}, Lo/onSkipToQueueItem;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 209
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lo/onFastForward$ICustomTabsCallback;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 212
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    .line 215
    sget v0, Lo/onFastForward$onRelationshipValidationResult;->PreferenceThemeOverlay:I

    .line 217
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lo/onPlay;->onPostMessage:Landroid/content/Context;

    .line 219
    new-instance v0, Lo/onPlayFromUri;

    invoke-direct {v0, v1}, Lo/onPlayFromUri;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/onPlay;->onMessageChannelReady:Lo/onPlayFromUri;

    .line 1577
    iput-object p0, v0, Lo/onPlayFromUri;->ICustomTabsCallback:Lo/onPlayFromUri$onPostMessage;

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 228
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo/onPlay;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 247
    iget-object v0, p0, Lo/onPlay;->onPostMessage:Landroid/content/Context;

    sget-object v1, Lo/onFastForward$asBinder;->PreferenceFragmentCompat:[I

    sget v2, Lo/onFastForward$ICustomTabsCallback;->preferenceFragmentCompatStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 252
    sget v1, Lo/onFastForward$asBinder;->PreferenceFragmentCompat_android_layout:I

    iget v2, p0, Lo/onPlay;->asInterface:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lo/onPlay;->asInterface:I

    .line 255
    sget v1, Lo/onFastForward$asBinder;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 257
    sget v2, Lo/onFastForward$asBinder;->PreferenceFragmentCompat_android_dividerHeight:I

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 259
    sget v5, Lo/onFastForward$asBinder;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 262
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    iget-object v0, p0, Lo/onPlay;->onPostMessage:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 266
    iget v0, p0, Lo/onPlay;->asInterface:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x102003f

    .line 268
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 269
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 274
    check-cast v0, Landroid/view/ViewGroup;

    .line 276
    invoke-virtual {p0, p1, v0, p3}, Lo/onPlay;->onNavigationEvent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 282
    iput-object p1, p0, Lo/onPlay;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 284
    iget-object p3, p0, Lo/onPlay;->asBinder:Lo/onPlay$onNavigationEvent;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 285
    invoke-virtual {p0, v1}, Lo/onPlay;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V

    if-eq v2, v4, :cond_0

    .line 287
    invoke-virtual {p0, v2}, Lo/onPlay;->onMessageChannelReady(I)V

    .line 289
    :cond_0
    iget-object p1, p0, Lo/onPlay;->asBinder:Lo/onPlay$onNavigationEvent;

    invoke-virtual {p1, v5}, Lo/onPlay$onNavigationEvent;->extraCallback(Z)V

    .line 293
    iget-object p1, p0, Lo/onPlay;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 294
    iget-object p1, p0, Lo/onPlay;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 296
    :cond_1
    iget-object p1, p0, Lo/onPlay;->onRelationshipValidationResult:Landroid/os/Handler;

    iget-object p3, p0, Lo/onPlay;->onTransact:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    .line 279
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not create RecyclerView"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 366
    iget-object v0, p0, Lo/onPlay;->onRelationshipValidationResult:Landroid/os/Handler;

    iget-object v1, p0, Lo/onPlay;->onTransact:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object v0, p0, Lo/onPlay;->onRelationshipValidationResult:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-boolean v0, p0, Lo/onPlay;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0}, Lo/onPlay;->asBinder()V

    :cond_0
    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lo/onPlay;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 372
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onMessageChannelReady(I)V
    .locals 1

    .line 322
    iget-object v0, p0, Lo/onPlay;->asBinder:Lo/onPlay$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/onPlay$onNavigationEvent;->onMessageChannelReady(I)V

    return-void
.end method

.method public onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lo/onPlay;->asBinder:Lo/onPlay$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/onPlay$onNavigationEvent;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public abstract onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onNavigationEvent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 580
    iget-object p3, p0, Lo/onPlay;->onPostMessage:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 582
    sget p3, Lo/onFastForward$onPostMessage;->recycler_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    return-object p3

    .line 587
    :cond_0
    sget p3, Lo/onFastForward$onNavigationEvent;->preference_recyclerview:I

    const/4 v0, 0x0

    .line 588
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 590
    invoke-virtual {p0}, Lo/onPlay;->onRelationshipValidationResult()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 591
    new-instance p2, Lo/onPlayFromSearch;

    invoke-direct {p2, p1}, Lo/onPlayFromSearch;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    return-object p1
.end method

.method protected onNavigationEvent()V
    .locals 0

    return-void
.end method

.method onPostMessage()V
    .locals 3

    .line 533
    invoke-virtual {p0}, Lo/onPlay;->extraCallback()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lo/onPlay;->asInterface()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Lo/onPlay;->extraCallback(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 536
    invoke-virtual {v0}, Landroidx/preference/Preference;->cancelAll()V

    .line 538
    :cond_0
    invoke-virtual {p0}, Lo/onPlay;->ICustomTabsCallback()V

    return-void
.end method

.method public onRelationshipValidationResult()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 604
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 377
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 379
    invoke-virtual {p0}, Lo/onPlay;->extraCallback()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 382
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->extraCallback(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    .line 383
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 352
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 353
    iget-object v0, p0, Lo/onPlay;->onMessageChannelReady:Lo/onPlayFromUri;

    .line 2563
    iput-object p0, v0, Lo/onPlayFromUri;->onMessageChannelReady:Lo/onPlayFromUri$extraCallback;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 359
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 360
    iget-object v0, p0, Lo/onPlay;->onMessageChannelReady:Lo/onPlayFromUri;

    const/4 v1, 0x0

    .line 3563
    iput-object v1, v0, Lo/onPlayFromUri;->onMessageChannelReady:Lo/onPlayFromUri$extraCallback;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 327
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    .line 330
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p0}, Lo/onPlay;->extraCallback()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 334
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->onNavigationEvent(Landroid/os/Bundle;)V

    .line 339
    :cond_0
    iget-boolean p1, p0, Lo/onPlay;->extraCallback:Z

    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p0}, Lo/onPlay;->onPostMessage()V

    .line 341
    iget-object p1, p0, Lo/onPlay;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 342
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 343
    iput-object p1, p0, Lo/onPlay;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Lo/onPlay;->onNavigationEvent:Z

    return-void
.end method
