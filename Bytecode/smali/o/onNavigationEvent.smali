.class public Lo/onNavigationEvent;
.super Lo/getMediaDescription;
.source ""

# interfaces
.implements Lo/removeOnActiveChangeListener;
.implements Lo/MediaControllerCompatApi21$PlaybackInfo;
.implements Lo/MediaSessionCompat$MediaSessionImplApi19$1;
.implements Lo/onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onNavigationEvent$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private mContentLayoutId:I

.field private mDefaultFactory:Lo/setMetadata$onNavigationEvent;

.field private final mLifecycleRegistry:Lo/setCallback;

.field private final mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field private final mSavedStateRegistryController:Lo/onMetadataUpdate;

.field private mViewModelStore:Lo/setRatingType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Lo/getMediaDescription;-><init>()V

    .line 65
    new-instance v0, Lo/setCallback;

    invoke-direct {v0, p0}, Lo/setCallback;-><init>(Lo/toLegacyStreamType;)V

    iput-object v0, p0, Lo/onNavigationEvent;->mLifecycleRegistry:Lo/setCallback;

    .line 67
    invoke-static {p0}, Lo/onMetadataUpdate;->onNavigationEvent(Lo/MediaSessionCompat$MediaSessionImplApi19$1;)Lo/onMetadataUpdate;

    move-result-object v0

    iput-object v0, p0, Lo/onNavigationEvent;->mSavedStateRegistryController:Lo/onMetadataUpdate;

    .line 73
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Lo/onNavigationEvent$2;

    invoke-direct {v1, p0}, Lo/onNavigationEvent$2;-><init>(Lo/onNavigationEvent;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/onNavigationEvent;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 90
    invoke-virtual {p0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Lo/onNavigationEvent;)V

    invoke-virtual {v0, v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Lo/onNavigationEvent;)V

    invoke-virtual {v0, v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 126
    invoke-virtual {p0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    :cond_1
    return-void

    .line 93
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lo/onNavigationEvent;-><init>()V

    .line 143
    iput p1, p0, Lo/onNavigationEvent;->mContentLayoutId:I

    return-void
.end method

.method static synthetic access$001(Lo/onNavigationEvent;)V
    .locals 0

    .line 53
    invoke-super {p0}, Lo/getMediaDescription;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public getDefaultViewModelProviderFactory()Lo/setMetadata$onNavigationEvent;
    .locals 3

    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lo/onNavigationEvent;->mDefaultFactory:Lo/setMetadata$onNavigationEvent;

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Lo/release;

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, p0, v2}, Lo/release;-><init>(Landroid/app/Application;Lo/MediaSessionCompat$MediaSessionImplApi19$1;Landroid/os/Bundle;)V

    iput-object v0, p0, Lo/onNavigationEvent;->mDefaultFactory:Lo/setMetadata$onNavigationEvent;

    .line 300
    :cond_1
    iget-object v0, p0, Lo/onNavigationEvent;->mDefaultFactory:Lo/setMetadata$onNavigationEvent;

    return-object v0

    .line 291
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onNavigationEvent$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, v0, Lo/onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;
    .locals 1

    .line 246
    iget-object v0, p0, Lo/onNavigationEvent;->mLifecycleRegistry:Lo/setCallback;

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 325
    iget-object v0, p0, Lo/onNavigationEvent;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final getSavedStateRegistry()Lo/MediaSessionCompat$MediaSessionImplApi21;
    .locals 1

    .line 331
    iget-object v0, p0, Lo/onNavigationEvent;->mSavedStateRegistryController:Lo/onMetadataUpdate;

    .line 3046
    iget-object v0, v0, Lo/onMetadataUpdate;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi21;

    return-object v0
.end method

.method public getViewModelStore()Lo/setRatingType;
    .locals 2

    .line 262
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lo/onNavigationEvent;->mViewModelStore:Lo/setRatingType;

    if-nez v0, :cond_1

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onNavigationEvent$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, v0, Lo/onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/setRatingType;

    iput-object v0, p0, Lo/onNavigationEvent;->mViewModelStore:Lo/setRatingType;

    .line 273
    :cond_0
    iget-object v0, p0, Lo/onNavigationEvent;->mViewModelStore:Lo/setRatingType;

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Lo/setRatingType;

    invoke-direct {v0}, Lo/setRatingType;-><init>()V

    iput-object v0, p0, Lo/onNavigationEvent;->mViewModelStore:Lo/setRatingType;

    .line 277
    :cond_1
    iget-object v0, p0, Lo/onNavigationEvent;->mViewModelStore:Lo/setRatingType;

    return-object v0

    .line 263
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 314
    iget-object v0, p0, Lo/onNavigationEvent;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->extraCallback()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Lo/getMediaDescription;->onCreate(Landroid/os/Bundle;)V

    .line 155
    iget-object v0, p0, Lo/onNavigationEvent;->mSavedStateRegistryController:Lo/onMetadataUpdate;

    invoke-virtual {v0, p1}, Lo/onMetadataUpdate;->onPostMessage(Landroid/os/Bundle;)V

    .line 156
    invoke-static {p0}, Lo/sendSessionEvent;->onNavigationEvent(Landroid/app/Activity;)V

    .line 157
    iget p1, p0, Lo/onNavigationEvent;->mContentLayoutId:I

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 181
    invoke-virtual {p0}, Lo/onNavigationEvent;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lo/onNavigationEvent;->mViewModelStore:Lo/setRatingType;

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onNavigationEvent$ICustomTabsCallback;

    if-eqz v2, :cond_0

    .line 190
    iget-object v1, v2, Lo/onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/setRatingType;

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_1
    new-instance v2, Lo/onNavigationEvent$ICustomTabsCallback;

    invoke-direct {v2}, Lo/onNavigationEvent$ICustomTabsCallback;-><init>()V

    .line 199
    iput-object v0, v2, Lo/onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Object;

    .line 200
    iput-object v1, v2, Lo/onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/setRatingType;

    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    .line 166
    instance-of v1, v0, Lo/setCallback;

    if-eqz v1, :cond_0

    .line 167
    check-cast v0, Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1118
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    .line 169
    :cond_0
    invoke-super {p0, p1}, Lo/getMediaDescription;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Lo/onNavigationEvent;->mSavedStateRegistryController:Lo/onMetadataUpdate;

    .line 2074
    iget-object v0, v0, Lo/onMetadataUpdate;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi21;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi21;->ICustomTabsCallback(Landroid/os/Bundle;)V

    return-void
.end method
