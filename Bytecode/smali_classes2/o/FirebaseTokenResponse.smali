.class final Lo/FirebaseTokenResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lo/BackGround;


# instance fields
.field private final synthetic onNavigationEvent:Lo/BackGroundJsonAdapter;


# direct methods
.method private constructor <init>(Lo/BackGroundJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/BackGroundJsonAdapter;Lo/MosaicResultJsonAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/FirebaseTokenResponse;-><init>(Lo/BackGroundJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback([B[B)V
    .locals 4

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->isCurrent:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->onConnectionSuspended:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->onConnectionSuspended:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->setExtras:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$Flags:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->setExtras:I

    or-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->ICustomTabsService:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->ICustomTabsService:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->ICustomTabsService:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->onConnectionSuspended:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->setMediaId:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->setMediaId:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->setMediaId:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->ICustomTabsService:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->ICustomTabsService:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->ICustomTabsService:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->getString:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->getString:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->setMediaId:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat$1:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat$1:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->unregisterCallbackMessenger:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat$1:I

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat$1:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$5:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat$1:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat$1:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->onConnectionSuspended:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$Flags:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$5:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$5:I

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$5:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$5:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$5:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->unregisterCallbackMessenger:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$5:I

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$5:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->setInternalConnectionCallback:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    or-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat$1:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->IPostMessageService$Stub:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->IPostMessageService$Stub:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$Flags:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->onConnectionSuspended:I

    or-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->onReceiveResult:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->onReceiveResult:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->unregisterCallbackMessenger:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->onReceiveResult:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->onReceiveResult:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->dump:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->onReceiveResult:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->onReceiveResult:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->onReceiveResult:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->setInternalConnectionCallback:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->onReceiveResult:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->onConnectionSuspended:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$Flags:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->dump:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->isCurrent:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->dump:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->dump:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->dump:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->dump:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$Flags:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->onConnectionSuspended:I

    or-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->INotificationSideChannel$Default:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->notify:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->notify:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$CustomActionCallback:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->notify:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->notify:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->notify:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->AudioAttributesCompatParcelizer:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->AudioAttributesCompatParcelizer:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->AudioAttributesCompatParcelizer:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->onSearchResult:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    or-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->AudioAttributesCompatParcelizer:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->getMediaDescription:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->AudioAttributesCompatParcelizer:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->AudioAttributesCompatParcelizer:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->AudioAttributesCompatParcelizer:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->onConnectionFailed:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->onConnectionFailed:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->onSearchResult:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->getMediaDescription:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->search:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->search:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->isCurrent:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$Flags:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->onConnectionSuspended:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->dump:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->dump:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->unregisterCallbackMessenger:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->dump:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->dump:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$Flags:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    or-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SubscriptionCallback:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->unregisterCallbackMessenger:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->setIconUri:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->setIconUri:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->setIconUri:I

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->setIconUri:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->unregisterCallbackMessenger:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->setIconUri:I

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->setIconUri:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->setExtras:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->setIconUri:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->setIconUri:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->setInternalConnectionCallback:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->setIconUri:I

    or-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->setIconUri:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->getString:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->setIconUri:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->setIconUri:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->setIconUri:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->asBinder:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->asBinder:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$Flags:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$Flags:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$Flags:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->mayLaunchUrl:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->mayLaunchUrl:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->mayLaunchUrl:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->dump:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->dump:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->dump:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat$Builder:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat$Builder:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat$Builder:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->createFromParcel:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->createFromParcel:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->createFromParcel:I

    not-int v0, v0

    iput v0, p1, Lo/BackGroundJsonAdapter;->createFromParcel:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompat:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->onResult:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->onResult:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->onResult:I

    and-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->onResult:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$Flags:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->onResult:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->onResult:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->onResult:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->onReceiveResult:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->onReceiveResult:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v0, p1, Lo/BackGroundJsonAdapter;->onReceiveResult:I

    iget-object v1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget v1, v1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$1:I

    xor-int/2addr v0, v1

    iput v0, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$1:I

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$7:I

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, p2, v0

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$7:I

    const/16 v0, 0x8

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, p2, v1

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$7:I

    const/16 v1, 0x10

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/4 v2, 0x2

    aput-byte p1, p2, v2

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$7:I

    const/16 v2, 0x18

    shr-int/2addr p1, v2

    const/4 v3, 0x3

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompatApi21:I

    int-to-byte p1, p1

    const/4 v3, 0x4

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompatApi21:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/4 v3, 0x5

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompatApi21:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/4 v3, 0x6

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaDescriptionCompatApi21:I

    shr-int/2addr p1, v2

    const/4 v3, 0x7

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->createFromParcel:I

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->createFromParcel:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x9

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->createFromParcel:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xa

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->createFromParcel:I

    shr-int/2addr p1, v2

    const/16 v3, 0xb

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem:I

    int-to-byte p1, p1

    const/16 v3, 0xc

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xd

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xe

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem:I

    shr-int/2addr p1, v2

    const/16 v3, 0xf

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->asBinder:I

    int-to-byte p1, p1

    aput-byte p1, p2, v1

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->asBinder:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x11

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->asBinder:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x12

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->asBinder:I

    shr-int/2addr p1, v2

    const/16 v3, 0x13

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onNavigationEvent:I

    int-to-byte p1, p1

    const/16 v3, 0x14

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onNavigationEvent:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x15

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onNavigationEvent:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x16

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onNavigationEvent:I

    shr-int/2addr p1, v2

    const/16 v3, 0x17

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->ICustomTabsCallback$Stub:I

    int-to-byte p1, p1

    aput-byte p1, p2, v2

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->ICustomTabsCallback$Stub:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x19

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->ICustomTabsCallback$Stub:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x1a

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->ICustomTabsCallback$Stub:I

    shr-int/2addr p1, v2

    const/16 v3, 0x1b

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->unregisterCallbackMessenger:I

    int-to-byte p1, p1

    const/16 v3, 0x1c

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->unregisterCallbackMessenger:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x1d

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->unregisterCallbackMessenger:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x1e

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->unregisterCallbackMessenger:I

    shr-int/2addr p1, v2

    const/16 v3, 0x1f

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onTransact:I

    int-to-byte p1, p1

    const/16 v3, 0x20

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onTransact:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x21

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onTransact:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x22

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onTransact:I

    shr-int/2addr p1, v2

    const/16 v3, 0x23

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromMediaMetadata:I

    int-to-byte p1, p1

    const/16 v3, 0x24

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromMediaMetadata:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x25

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromMediaMetadata:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x26

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromMediaMetadata:I

    shr-int/2addr p1, v2

    const/16 v3, 0x27

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->registerCallbackMessenger:I

    int-to-byte p1, p1

    const/16 v3, 0x28

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->registerCallbackMessenger:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x29

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->registerCallbackMessenger:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x2a

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->registerCallbackMessenger:I

    shr-int/2addr p1, v2

    const/16 v3, 0x2b

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->newSession:I

    int-to-byte p1, p1

    const/16 v3, 0x2c

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->newSession:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x2d

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->newSession:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x2e

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->newSession:I

    shr-int/2addr p1, v2

    const/16 v3, 0x2f

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->run:I

    int-to-byte p1, p1

    const/16 v3, 0x30

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->run:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x31

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->run:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x32

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->run:I

    shr-int/2addr p1, v2

    const/16 v3, 0x33

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getOptionsList:I

    int-to-byte p1, p1

    const/16 v3, 0x34

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getOptionsList:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x35

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getOptionsList:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x36

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getOptionsList:I

    shr-int/2addr p1, v2

    const/16 v3, 0x37

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$6:I

    int-to-byte p1, p1

    const/16 v3, 0x38

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$6:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x39

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$6:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x3a

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$6:I

    shr-int/2addr p1, v2

    const/16 v3, 0x3b

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getInterfaceDescriptor:I

    int-to-byte p1, p1

    const/16 v3, 0x3c

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getInterfaceDescriptor:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x3d

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getInterfaceDescriptor:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x3e

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getInterfaceDescriptor:I

    shr-int/2addr p1, v2

    const/16 v3, 0x3f

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$1:I

    int-to-byte p1, p1

    const/16 v3, 0x40

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$1:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x41

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$1:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x42

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaItem$1:I

    shr-int/2addr p1, v2

    const/16 v3, 0x43

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromMediaItem:I

    int-to-byte p1, p1

    const/16 v3, 0x44

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromMediaItem:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x45

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromMediaItem:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x46

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromMediaItem:I

    shr-int/2addr p1, v2

    const/16 v3, 0x47

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    int-to-byte p1, p1

    const/16 v3, 0x48

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x49

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x4a

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    shr-int/2addr p1, v2

    const/16 v3, 0x4b

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2:I

    int-to-byte p1, p1

    const/16 v3, 0x4c

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x4d

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x4e

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2:I

    shr-int/2addr p1, v2

    const/16 v3, 0x4f

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->ICustomTabsService$Stub$Proxy:I

    int-to-byte p1, p1

    const/16 v3, 0x50

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->ICustomTabsService$Stub$Proxy:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x51

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->ICustomTabsService$Stub$Proxy:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x52

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->ICustomTabsService$Stub$Proxy:I

    shr-int/2addr p1, v2

    const/16 v3, 0x53

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IPostMessageService:I

    int-to-byte p1, p1

    const/16 v3, 0x54

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IPostMessageService:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x55

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IPostMessageService:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x56

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IPostMessageService:I

    shr-int/2addr p1, v2

    const/16 v3, 0x57

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IPostMessageService$Stub:I

    int-to-byte p1, p1

    const/16 v3, 0x58

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IPostMessageService$Stub:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x59

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IPostMessageService$Stub:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x5a

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IPostMessageService$Stub:I

    shr-int/2addr p1, v2

    const/16 v3, 0x5b

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->validateRelationship:I

    int-to-byte p1, p1

    const/16 v3, 0x5c

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->validateRelationship:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x5d

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->validateRelationship:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x5e

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->validateRelationship:I

    shr-int/2addr p1, v2

    const/16 v3, 0x5f

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isEmpty:I

    int-to-byte p1, p1

    const/16 v3, 0x60

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isEmpty:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x61

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isEmpty:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x62

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isEmpty:I

    shr-int/2addr p1, v2

    const/16 v3, 0x63

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setSubscription:I

    int-to-byte p1, p1

    const/16 v3, 0x64

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setSubscription:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x65

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setSubscription:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x66

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setSubscription:I

    shr-int/2addr p1, v2

    const/16 v3, 0x67

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$4:I

    int-to-byte p1, p1

    const/16 v3, 0x68

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$4:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x69

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$4:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x6a

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$4:I

    shr-int/2addr p1, v2

    const/16 v3, 0x6b

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->cancel:I

    int-to-byte p1, p1

    const/16 v3, 0x6c

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->cancel:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x6d

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->cancel:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x6e

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->cancel:I

    shr-int/2addr p1, v2

    const/16 v3, 0x6f

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->cancelAll:I

    int-to-byte p1, p1

    const/16 v3, 0x70

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->cancelAll:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x71

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->cancelAll:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x72

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->cancelAll:I

    shr-int/2addr p1, v2

    const/16 v3, 0x73

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getServiceComponent:I

    int-to-byte p1, p1

    const/16 v3, 0x74

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getServiceComponent:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x75

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getServiceComponent:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x76

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getServiceComponent:I

    shr-int/2addr p1, v2

    const/16 v3, 0x77

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getCallback:I

    int-to-byte p1, p1

    const/16 v3, 0x78

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getCallback:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x79

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getCallback:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x7a

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getCallback:I

    shr-int/2addr p1, v2

    const/16 v3, 0x7b

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isBrowsable:I

    int-to-byte p1, p1

    const/16 v3, 0x7c

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isBrowsable:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x7d

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isBrowsable:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x7e

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isBrowsable:I

    shr-int/2addr p1, v2

    const/16 v3, 0x7f

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->describeContents:I

    int-to-byte p1, p1

    const/16 v3, 0x80

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->describeContents:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x81

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->describeContents:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x82

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->describeContents:I

    shr-int/2addr p1, v2

    const/16 v3, 0x83

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getDefaultImpl:I

    int-to-byte p1, p1

    const/16 v3, 0x84

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getDefaultImpl:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x85

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getDefaultImpl:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x86

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getDefaultImpl:I

    shr-int/2addr p1, v2

    const/16 v3, 0x87

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$2:I

    int-to-byte p1, p1

    const/16 v3, 0x88

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$2:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x89

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$2:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x8a

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplBase$2:I

    shr-int/2addr p1, v2

    const/16 v3, 0x8b

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat:I

    int-to-byte p1, p1

    const/16 v3, 0x8c

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x8d

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x8e

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaMetadataCompat:I

    shr-int/2addr p1, v2

    const/16 v3, 0x8f

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IconCompatParcelizer:I

    int-to-byte p1, p1

    const/16 v3, 0x90

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IconCompatParcelizer:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x91

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IconCompatParcelizer:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x92

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->IconCompatParcelizer:I

    shr-int/2addr p1, v2

    const/16 v3, 0x93

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->newInstance:I

    int-to-byte p1, p1

    const/16 v3, 0x94

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->newInstance:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x95

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->newInstance:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x96

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->newInstance:I

    shr-int/2addr p1, v2

    const/16 v3, 0x97

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getSubtitle:I

    int-to-byte p1, p1

    const/16 v3, 0x98

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getSubtitle:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x99

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getSubtitle:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x9a

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getSubtitle:I

    shr-int/2addr p1, v2

    const/16 v3, 0x9b

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getExtras:I

    int-to-byte p1, p1

    const/16 v3, 0x9c

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getExtras:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0x9d

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getExtras:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0x9e

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getExtras:I

    shr-int/2addr p1, v2

    const/16 v3, 0x9f

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->disconnect:I

    int-to-byte p1, p1

    const/16 v3, 0xa0

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->disconnect:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xa1

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->disconnect:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xa2

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->disconnect:I

    shr-int/2addr p1, v2

    const/16 v3, 0xa3

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->asInterface:I

    int-to-byte p1, p1

    const/16 v3, 0xa4

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->asInterface:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xa5

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->asInterface:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xa6

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->asInterface:I

    shr-int/2addr p1, v2

    const/16 v3, 0xa7

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getNotifyChildrenChangedOptions:I

    int-to-byte p1, p1

    const/16 v3, 0xa8

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getNotifyChildrenChangedOptions:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xa9

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getNotifyChildrenChangedOptions:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xaa

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getNotifyChildrenChangedOptions:I

    shr-int/2addr p1, v2

    const/16 v3, 0xab

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getItem:I

    int-to-byte p1, p1

    const/16 v3, 0xac

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getItem:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xad

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getItem:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xae

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getItem:I

    shr-int/2addr p1, v2

    const/16 v3, 0xaf

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getSessionToken:I

    int-to-byte p1, p1

    const/16 v3, 0xb0

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getSessionToken:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xb1

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getSessionToken:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xb2

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getSessionToken:I

    shr-int/2addr p1, v2

    const/16 v3, 0xb3

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isCurrent:I

    int-to-byte p1, p1

    const/16 v3, 0xb4

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isCurrent:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xb5

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isCurrent:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xb6

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isCurrent:I

    shr-int/2addr p1, v2

    const/16 v3, 0xb7

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isConnected:I

    int-to-byte p1, p1

    const/16 v3, 0xb8

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isConnected:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xb9

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isConnected:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xba

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->isConnected:I

    shr-int/2addr p1, v2

    const/16 v3, 0xbb

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$CustomActionResultReceiver:I

    int-to-byte p1, p1

    const/16 v3, 0xbc

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$CustomActionResultReceiver:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xbd

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$CustomActionResultReceiver:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xbe

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$CustomActionResultReceiver:I

    shr-int/2addr p1, v2

    const/16 v3, 0xbf

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->warmup:I

    int-to-byte p1, p1

    const/16 v3, 0xc0

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->warmup:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xc1

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->warmup:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xc2

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->warmup:I

    shr-int/2addr p1, v2

    const/16 v3, 0xc3

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$6:I

    int-to-byte p1, p1

    const/16 v3, 0xc4

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$6:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xc5

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$6:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xc6

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$6:I

    shr-int/2addr p1, v2

    const/16 v3, 0xc7

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->subscribe:I

    int-to-byte p1, p1

    const/16 v3, 0xc8

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->subscribe:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xc9

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->subscribe:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xca

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->subscribe:I

    shr-int/2addr p1, v2

    const/16 v3, 0xcb

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$3:I

    int-to-byte p1, p1

    const/16 v3, 0xcc

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$3:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xcd

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$3:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xce

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$3:I

    shr-int/2addr p1, v2

    const/16 v3, 0xcf

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->search:I

    int-to-byte p1, p1

    const/16 v3, 0xd0

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->search:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xd1

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->search:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xd2

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->search:I

    shr-int/2addr p1, v2

    const/16 v3, 0xd3

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    int-to-byte p1, p1

    const/16 v3, 0xd4

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xd5

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xd6

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    shr-int/2addr p1, v2

    const/16 v3, 0xd7

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setCallbacksMessenger:I

    int-to-byte p1, p1

    const/16 v3, 0xd8

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setCallbacksMessenger:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xd9

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setCallbacksMessenger:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xda

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setCallbacksMessenger:I

    shr-int/2addr p1, v2

    const/16 v3, 0xdb

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->AudioAttributesImplBaseParcelizer:I

    int-to-byte p1, p1

    const/16 v3, 0xdc

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->AudioAttributesImplBaseParcelizer:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xdd

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->AudioAttributesImplBaseParcelizer:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xde

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->AudioAttributesImplBaseParcelizer:I

    shr-int/2addr p1, v2

    const/16 v3, 0xdf

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromParcel:I

    int-to-byte p1, p1

    const/16 v3, 0xe0

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromParcel:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xe1

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromParcel:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xe2

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->fromParcel:I

    shr-int/2addr p1, v2

    const/16 v3, 0xe3

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getCallbacks:I

    int-to-byte p1, p1

    const/16 v3, 0xe4

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getCallbacks:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xe5

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getCallbacks:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xe6

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getCallbacks:I

    shr-int/2addr p1, v2

    const/16 v3, 0xe7

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SearchResultReceiver:I

    int-to-byte p1, p1

    const/16 v3, 0xe8

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SearchResultReceiver:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xe9

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SearchResultReceiver:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xea

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$SearchResultReceiver:I

    shr-int/2addr p1, v2

    const/16 v3, 0xeb

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getLong:I

    int-to-byte p1, p1

    const/16 v3, 0xec

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getLong:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xed

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getLong:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xee

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->getLong:I

    shr-int/2addr p1, v2

    const/16 v3, 0xef

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setSubtitle:I

    int-to-byte p1, p1

    const/16 v3, 0xf0

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setSubtitle:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xf1

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setSubtitle:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xf2

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->setSubtitle:I

    shr-int/2addr p1, v2

    const/16 v3, 0xf3

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$1:I

    int-to-byte p1, p1

    const/16 v3, 0xf4

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$1:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xf5

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$1:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xf6

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$1:I

    shr-int/2addr p1, v2

    const/16 v3, 0xf7

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onConnectionFailed:I

    int-to-byte p1, p1

    const/16 v3, 0xf8

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onConnectionFailed:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v3, 0xf9

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onConnectionFailed:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v3, 0xfa

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->onConnectionFailed:I

    shr-int/2addr p1, v2

    const/16 v3, 0xfb

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$5:I

    int-to-byte p1, p1

    const/16 v3, 0xfc

    aput-byte p1, p2, v3

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$5:I

    ushr-int/2addr p1, v0

    int-to-byte p1, p1

    const/16 v0, 0xfd

    aput-byte p1, p2, v0

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$5:I

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/16 v0, 0xfe

    aput-byte p1, p2, v0

    iget-object p1, p0, Lo/FirebaseTokenResponse;->onNavigationEvent:Lo/BackGroundJsonAdapter;

    iget p1, p1, Lo/BackGroundJsonAdapter;->MediaBrowserCompat$MediaBrowserImplApi21$5:I

    shr-int/2addr p1, v2

    const/16 v0, 0xff

    aput-byte p1, p2, v0

    return-void
.end method
