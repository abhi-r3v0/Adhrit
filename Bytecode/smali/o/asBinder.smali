.class public Lo/asBinder;
.super Lo/onSessionEvent;
.source ""

# interfaces
.implements Lo/asInterface;
.implements Lo/setExtras$onPostMessage;


# instance fields
.field private mDelegate:Lo/ICustomTabsCallback$Stub;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lo/onSessionEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lo/onSessionEvent;-><init>(I)V

    return-void
.end method

.method private performMenuItemShortcut(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 589
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 593
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/ICustomTabsCallback$Stub;->onPostMessage(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->onMessageChannelReady(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lo/onSessionEvent;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    .line 620
    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object v0

    .line 621
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Lo/onPostMessage;->onTransact()Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    :cond_0
    invoke-super {p0}, Lo/onSessionEvent;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 563
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 564
    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {v1, p1}, Lo/onPostMessage;->onNavigationEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 569
    :cond_0
    invoke-super {p0, p1}, Lo/onSessionEvent;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getDelegate()Lo/ICustomTabsCallback$Stub;
    .locals 1

    .line 553
    iget-object v0, p0, Lo/asBinder;->mDelegate:Lo/ICustomTabsCallback$Stub;

    if-nez v0, :cond_0

    .line 554
    invoke-static {p0, p0}, Lo/ICustomTabsCallback$Stub;->onPostMessage(Landroid/app/Activity;Lo/asInterface;)Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    iput-object v0, p0, Lo/asBinder;->mDelegate:Lo/ICustomTabsCallback$Stub;

    .line 556
    :cond_0
    iget-object v0, p0, Lo/asBinder;->mDelegate:Lo/ICustomTabsCallback$Stub;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Lo/ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 517
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lo/ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub()Lo/ICustomTabsCallback$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lo/ICustomTabsCallback$Stub;->onPostMessage()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 574
    iget-object v0, p0, Lo/asBinder;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    new-instance v0, Landroidx/appcompat/widget/VectorEnabledTintResources;

    invoke-super {p0}, Lo/onSessionEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lo/asBinder;->mResources:Landroid/content/res/Resources;

    .line 577
    :cond_0
    iget-object v0, p0, Lo/asBinder;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Lo/onSessionEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSupportActionBar()Lo/onPostMessage;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lo/ICustomTabsCallback$Stub;->extraCallback()Lo/onPostMessage;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 464
    invoke-static {p0}, Lo/setIconBitmap;->onPostMessage(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 278
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lo/ICustomTabsCallback$Stub;->onTransact()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 190
    invoke-super {p0, p1}, Lo/onSessionEvent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    iget-object v0, p0, Lo/asBinder;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 195
    invoke-super {p0}, Lo/onSessionEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lo/asBinder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->onMessageChannelReady(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 504
    invoke-virtual {p0}, Lo/asBinder;->onSupportContentChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lo/ICustomTabsCallback$Stub;->asInterface()V

    .line 114
    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->onPostMessage(Landroid/os/Bundle;)V

    .line 115
    invoke-super {p0, p1}, Lo/onSessionEvent;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Lo/setExtras;)V
    .locals 2

    .line 1161
    move-object v0, p0

    check-cast v0, Lo/setExtras$onPostMessage;

    invoke-interface {v0}, Lo/setExtras$onPostMessage;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1164
    invoke-static {p0}, Lo/setIconBitmap;->onPostMessage(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 1170
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1172
    iget-object v1, p1, Lo/setExtras;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1174
    :cond_1
    invoke-virtual {p1, v1}, Lo/setExtras;->onPostMessage(Landroid/content/ComponentName;)Lo/setExtras;

    .line 2121
    iget-object p1, p1, Lo/setExtras;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 242
    invoke-super {p0}, Lo/onSessionEvent;->onDestroy()V

    .line 243
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lo/ICustomTabsCallback$Stub;->onRelationshipValidationResult()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 603
    invoke-direct {p0, p2}, Lo/asBinder;->performMenuItemShortcut(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 606
    :cond_0
    invoke-super {p0, p1, p2}, Lo/onSessionEvent;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 228
    invoke-super {p0, p1, p2}, Lo/onSessionEvent;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 232
    :cond_0
    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object p1

    .line 233
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p1}, Lo/onPostMessage;->extraCallback()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 235
    invoke-virtual {p0}, Lo/asBinder;->onSupportNavigateUp()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 528
    invoke-super {p0, p1, p2}, Lo/onSessionEvent;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onNightModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 539
    invoke-super {p0, p1, p2}, Lo/onSessionEvent;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lo/onSessionEvent;->onPostCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->extraCallback(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 204
    invoke-super {p0}, Lo/onSessionEvent;->onPostResume()V

    .line 205
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lo/ICustomTabsCallback$Stub;->onNavigationEvent()V

    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Lo/setExtras;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 544
    invoke-super {p0, p1}, Lo/onSessionEvent;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 545
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 210
    invoke-super {p0}, Lo/onSessionEvent;->onStart()V

    .line 211
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lo/ICustomTabsCallback$Stub;->ICustomTabsCallback()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 216
    invoke-super {p0}, Lo/onSessionEvent;->onStop()V

    .line 217
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lo/ICustomTabsCallback$Stub;->onMessageChannelReady()V

    return-void
.end method

.method public onSupportActionModeFinished(Lo/INotificationSideChannel;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Lo/INotificationSideChannel;)V
    .locals 0

    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 6

    .line 426
    invoke-virtual {p0}, Lo/asBinder;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {p0, v0}, Lo/asBinder;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 430
    invoke-static {p0}, Lo/setExtras;->onMessageChannelReady(Landroid/content/Context;)Lo/setExtras;

    move-result-object v0

    .line 431
    invoke-virtual {p0, v0}, Lo/asBinder;->onCreateSupportNavigateUpTaskStack(Lo/setExtras;)V

    .line 432
    invoke-virtual {p0, v0}, Lo/asBinder;->onPrepareSupportNavigateUpTaskStack(Lo/setExtras;)V

    .line 2283
    iget-object v2, v0, Lo/setExtras;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2288
    iget-object v2, v0, Lo/setExtras;->onMessageChannelReady:Ljava/util/ArrayList;

    iget-object v4, v0, Lo/setExtras;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/Intent;

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    .line 2289
    new-instance v4, Landroid/content/Intent;

    aget-object v5, v2, v1

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v5, 0x1000c000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v1

    .line 2291
    iget-object v1, v0, Lo/setExtras;->onPostMessage:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2292
    new-instance v1, Landroid/content/Intent;

    array-length v4, v2

    sub-int/2addr v4, v3

    aget-object v2, v2, v4

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x10000000

    .line 2293
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2294
    iget-object v0, v0, Lo/setExtras;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 436
    :cond_0
    :try_start_0
    invoke-static {p0}, Lo/getTitle;->onPostMessage(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2284
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_2
    invoke-virtual {p0, v0}, Lo/asBinder;->supportNavigateUpTo(Landroid/content/Intent;)V

    :goto_0
    return v3

    :cond_3
    return v1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 248
    invoke-super {p0, p1, p2}, Lo/onSessionEvent;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 249
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/ICustomTabsCallback$Stub;->onNavigationEvent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Lo/INotificationSideChannel$ICustomTabsCallback;)Lo/INotificationSideChannel;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public openOptionsMenu()V
    .locals 3

    .line 611
    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object v0

    .line 612
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Lo/onPostMessage;->asInterface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    :cond_0
    invoke-super {p0}, Lo/onSessionEvent;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->onNavigationEvent(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 175
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->onMessageChannelReady(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/ICustomTabsCallback$Stub;->ICustomTabsCallback(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->ICustomTabsCallback(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lo/onSessionEvent;->setTheme(I)V

    .line 121
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->onPostMessage(I)V

    return-void
.end method

.method public startSupportActionMode(Lo/INotificationSideChannel$ICustomTabsCallback;)Lo/INotificationSideChannel;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->onMessageChannelReady(Lo/INotificationSideChannel$ICustomTabsCallback;)Lo/INotificationSideChannel;

    move-result-object p1

    return-object p1
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lo/ICustomTabsCallback$Stub;->onTransact()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 2

    .line 3108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3109
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    return-void

    :cond_0
    const/high16 v0, 0x4000000

    .line 3111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3112
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    .line 267
    invoke-virtual {p0}, Lo/asBinder;->getDelegate()Lo/ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ICustomTabsCallback$Stub;->ICustomTabsCallback(I)Z

    move-result p1

    return p1
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2

    .line 3060
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3061
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1

    .line 3063
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "android.intent.action.MAIN"

    .line 3064
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
