.class public Landroidx/appcompat/widget/ShareActionProvider;
.super Lo/IMediaControllerCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ShareActionProvider$extraCallback;,
        Landroidx/appcompat/widget/ShareActionProvider$ICustomTabsCallback;,
        Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMaxShownActivityCount:I

.field private mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

.field private final mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ICustomTabsCallback;

.field mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 197
    invoke-direct {p0, p1}, Lo/IMediaControllerCallback;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 164
    iput v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mMaxShownActivityCount:I

    .line 169
    new-instance v0, Landroidx/appcompat/widget/ShareActionProvider$ICustomTabsCallback;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ShareActionProvider$ICustomTabsCallback;-><init>(Landroidx/appcompat/widget/ShareActionProvider;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ICustomTabsCallback;

    const-string v0, "share_history.xml"

    .line 185
    iput-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setActivityChooserPolicyIfNeeded()V
    .locals 3

    .line 383
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v0, :cond_1

    .line 387
    new-instance v0, Landroidx/appcompat/widget/ShareActionProvider$extraCallback;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ShareActionProvider$extraCallback;-><init>(Landroidx/appcompat/widget/ShareActionProvider;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 389
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 390
    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnChooseActivityListener:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 2497
    iget-object v2, v0, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v2

    .line 2498
    :try_start_0
    iput-object v1, v0, Landroidx/appcompat/widget/ActivityChooserModel;->asBinder:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 2499
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 5

    .line 222
    new-instance v0, Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->setActivityChooserModel(Landroidx/appcompat/widget/ActivityChooserModel;)V

    .line 229
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 230
    iget-object v2, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lo/extraCallback$ICustomTabsCallback;->actionModeShareDrawable:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 231
    iget-object v2, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2, v1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActivityChooserView;->setProvider(Lo/IMediaControllerCallback;)V

    .line 236
    sget v1, Lo/extraCallback$onRelationshipValidationResult;->abc_shareactionprovider_share_with_application:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 238
    sget v1, Lo/extraCallback$onRelationshipValidationResult;->abc_shareactionprovider_share_with:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 8

    .line 258
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 260
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 261
    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 263
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->onPostMessage()I

    move-result v2

    .line 264
    iget v3, p0, Landroidx/appcompat/widget/ShareActionProvider;->mMaxShownActivityCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 268
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActivityChooserModel;->onPostMessage(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 269
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v4, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 270
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ICustomTabsCallback;

    .line 271
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ge v3, v2, :cond_1

    .line 276
    iget-object v5, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    sget v6, Lo/extraCallback$onRelationshipValidationResult;->abc_activity_chooser_view_see_all:I

    .line 278
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-interface {p1, v4, v3, v3, v5}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 280
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActivityChooserModel;->onPostMessage(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 281
    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p1, v4, v3, v3, v6}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 282
    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ShareActionProvider$ICustomTabsCallback;

    .line 283
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 0

    .line 212
    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 213
    invoke-direct {p0}, Landroidx/appcompat/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Landroidx/appcompat/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    .line 344
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ShareActionProvider;->updateIntent(Landroid/content/Intent;)V

    .line 348
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 1366
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v1

    .line 1367
    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface:Landroid/content/Intent;

    if-ne v2, p1, :cond_2

    .line 1368
    monitor-exit v1

    return-void

    .line 1370
    :cond_2
    iput-object p1, v0, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface:Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1371
    iput-boolean p1, v0, Landroidx/appcompat/widget/ActivityChooserModel;->onRelationshipValidationResult:Z

    .line 1654
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->onMessageChannelReady()Z

    move-result p1

    .line 1655
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->asBinder()Z

    move-result v2

    or-int/2addr p1, v2

    .line 1656
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->asInterface()V

    if-eqz p1, :cond_3

    .line 1658
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserModel;->ICustomTabsCallback()Z

    .line 1659
    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 1373
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method updateIntent(Landroid/content/Intent;)V
    .locals 2

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x8080000

    .line 413
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void

    :cond_0
    const/high16 v0, 0x80000

    .line 417
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method
