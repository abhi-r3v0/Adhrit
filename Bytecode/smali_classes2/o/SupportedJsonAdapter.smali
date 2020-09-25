.class public final Lo/SupportedJsonAdapter;
.super Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field private asBinder:I

.field private asInterface:I

.field private extraCommand:Lo/BankOfferDetailsResponse;

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:Z

.field private newSession:Lo/getCardLinkingEnabled;

.field private final onMessageChannelReady:Lo/CardLinkingDataResponse$$Parcelable;

.field private onRelationshipValidationResult:Landroid/net/Uri;

.field private onTransact:I

.field private requestPostMessageChannel:I

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, -0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLo/getLinkingData;Lo/CardLinkingDataResponse$$Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lo/SupportedJsonAdapter;->asBinder:I

    iput p1, p0, Lo/SupportedJsonAdapter;->onTransact:I

    invoke-virtual {p0, p0}, Lo/SupportedJsonAdapter;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p5, p0, Lo/SupportedJsonAdapter;->onMessageChannelReady:Lo/CardLinkingDataResponse$$Parcelable;

    iput-boolean p2, p0, Lo/SupportedJsonAdapter;->mayLaunchUrl:Z

    iput-boolean p3, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback:Z

    invoke-virtual {p5, p0}, Lo/CardLinkingDataResponse$$Parcelable;->extraCallback(Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    return-void
.end method

.method private final ICustomTabsCallback(Z)V
    .locals 2

    const-string v0, "AdMediaPlayerView release"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getCardLinkingEnabled;->onNavigationEvent()V

    iput-object v1, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    :cond_0
    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/SupportedJsonAdapter;->extraCallback(I)V

    if-eqz p1, :cond_1

    iput v0, p0, Lo/SupportedJsonAdapter;->onTransact:I

    iput v0, p0, Lo/SupportedJsonAdapter;->onTransact:I

    :cond_1
    return-void
.end method

.method private final ICustomTabsService()Z
    .locals 2

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lo/SupportedJsonAdapter;->asBinder:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final extraCallback(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lo/SupportedJsonAdapter;->onMessageChannelReady:Lo/CardLinkingDataResponse$$Parcelable;

    invoke-virtual {v0}, Lo/CardLinkingDataResponse$$Parcelable;->onPostMessage()V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->onPostMessage:Lo/CardLinkingReason$$Parcelable;

    invoke-virtual {v0}, Lo/CardLinkingReason$$Parcelable;->ICustomTabsCallback()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lo/SupportedJsonAdapter;->asBinder:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lo/SupportedJsonAdapter;->onMessageChannelReady:Lo/CardLinkingDataResponse$$Parcelable;

    invoke-virtual {v0}, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->onPostMessage:Lo/CardLinkingReason$$Parcelable;

    invoke-virtual {v0}, Lo/CardLinkingReason$$Parcelable;->onPostMessage()V

    :cond_1
    :goto_0
    iput p1, p0, Lo/SupportedJsonAdapter;->asBinder:I

    return-void
.end method

.method private final getInterfaceDescriptor()V
    .locals 8

    iget-boolean v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lo/SupportedJsonAdapter;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lo/SupportedJsonAdapter;->onTransact:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const-string v0, "AdMediaPlayerView nudging MediaPlayer"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/SupportedJsonAdapter;->onNavigationEvent(F)V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    :cond_1
    invoke-direct {p0}, Lo/SupportedJsonAdapter;->ICustomTabsService()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    if-ne v3, v0, :cond_2

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v3

    invoke-interface {v3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0xfa

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    :cond_2
    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->asBinder()V

    :cond_3
    return-void
.end method

.method private final onNavigationEvent(F)V
    .locals 1

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    const-string p1, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/SupportedJsonAdapter;)Lo/BankOfferDetailsResponse;
    .locals 0

    iget-object p0, p0, Lo/SupportedJsonAdapter;->extraCommand:Lo/BankOfferDetailsResponse;

    return-object p0
.end method

.method private final onRelationshipValidationResult()V
    .locals 6

    const-string v0, "AdMediaPlayerView init MediaPlayer"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SupportedJsonAdapter;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lo/SupportedJsonAdapter;->onRelationshipValidationResult:Landroid/net/Uri;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lo/SupportedJsonAdapter;->ICustomTabsCallback(Z)V

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Lo/getParcel;->ICustomTabsService$Stub$Proxy()Lo/getTotal;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v3, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v3, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iput v1, p0, Lo/SupportedJsonAdapter;->ICustomTabsService:I

    iget-boolean v3, p0, Lo/SupportedJsonAdapter;->mayLaunchUrl:Z

    if-eqz v3, :cond_2

    new-instance v3, Lo/getCardLinkingEnabled;

    invoke-virtual {p0}, Lo/SupportedJsonAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lo/getCardLinkingEnabled;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    invoke-virtual {p0}, Lo/SupportedJsonAdapter;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lo/SupportedJsonAdapter;->getHeight()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lo/getCardLinkingEnabled;->ICustomTabsCallback(Landroid/graphics/SurfaceTexture;II)V

    iget-object v3, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    invoke-virtual {v3}, Lo/getCardLinkingEnabled;->start()V

    iget-object v3, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    invoke-virtual {v3}, Lo/getCardLinkingEnabled;->extraCallback()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    invoke-virtual {v3}, Lo/getCardLinkingEnabled;->onNavigationEvent()V

    const/4 v3, 0x0

    iput-object v3, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    :cond_2
    :goto_0
    iget-object v3, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lo/SupportedJsonAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lo/SupportedJsonAdapter;->onRelationshipValidationResult:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lo/getParcel;->ICustomTabsService$Stub()Lo/getCities;

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-direct {p0, v2}, Lo/SupportedJsonAdapter;->extraCallback(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    iget-object v3, p0, Lo/SupportedJsonAdapter;->onRelationshipValidationResult:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to initialize MediaPlayer at "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v2, v1}, Lo/SupportedJsonAdapter;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const-string v0, "AdMediaPlayerView stop"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/SupportedJsonAdapter;->extraCallback(I)V

    iput v0, p0, Lo/SupportedJsonAdapter;->onTransact:I

    :cond_0
    iget-object v0, p0, Lo/SupportedJsonAdapter;->onMessageChannelReady:Lo/CardLinkingDataResponse$$Parcelable;

    invoke-virtual {v0}, Lo/CardLinkingDataResponse$$Parcelable;->onMessageChannelReady()V

    return-void
.end method

.method final synthetic ICustomTabsCallback(I)V
    .locals 1

    iget-object v0, p0, Lo/SupportedJsonAdapter;->extraCommand:Lo/BankOfferDetailsResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/BankOfferDetailsResponse;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 1

    invoke-direct {p0}, Lo/SupportedJsonAdapter;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()V
    .locals 1

    iget-object v0, p0, Lo/SupportedJsonAdapter;->onPostMessage:Lo/CardLinkingReason$$Parcelable;

    invoke-virtual {v0}, Lo/CardLinkingReason$$Parcelable;->onNavigationEvent()F

    move-result v0

    invoke-direct {p0, v0}, Lo/SupportedJsonAdapter;->onNavigationEvent(F)V

    return-void
.end method

.method public final asInterface()I
    .locals 1

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    invoke-direct {p0}, Lo/SupportedJsonAdapter;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final extraCallback(FF)V
    .locals 1

    iget-object v0, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lo/getCardLinkingEnabled;->onNavigationEvent(FF)V

    :cond_0
    return-void
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    iput p2, p0, Lo/SupportedJsonAdapter;->ICustomTabsService:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "AdMediaPlayerView completion"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lo/SupportedJsonAdapter;->extraCallback(I)V

    iput p1, p0, Lo/SupportedJsonAdapter;->onTransact:I

    sget-object p1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/SwipeActionsJsonAdapter;

    invoke-direct {v0, p0}, Lo/SwipeActionsJsonAdapter;-><init>(Lo/SupportedJsonAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    sget-object p1, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    const/4 p3, -0x1

    invoke-direct {p0, p3}, Lo/SupportedJsonAdapter;->extraCallback(I)V

    iput p3, p0, Lo/SupportedJsonAdapter;->onTransact:I

    sget-object p3, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/SwipeActions;

    invoke-direct {v0, p0, p1, p2}, Lo/SwipeActions;-><init>(Lo/SupportedJsonAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    sget-object p1, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lo/SupportedJsonAdapter;->extraCallback:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x25

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final onMeasure(II)V
    .locals 5

    iget v0, p0, Lo/SupportedJsonAdapter;->asInterface:I

    invoke-static {v0, p1}, Lo/SupportedJsonAdapter;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lo/SupportedJsonAdapter;->getInterfaceDescriptor:I

    invoke-static {v1, p2}, Lo/SupportedJsonAdapter;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lo/SupportedJsonAdapter;->asInterface:I

    if-lez v2, :cond_9

    iget v2, p0, Lo/SupportedJsonAdapter;->getInterfaceDescriptor:I

    if-lez v2, :cond_9

    iget-object v2, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    if-nez v2, :cond_9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lo/SupportedJsonAdapter;->asInterface:I

    mul-int v1, v0, p2

    iget v2, p0, Lo/SupportedJsonAdapter;->getInterfaceDescriptor:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    mul-int v0, v0, p2

    div-int/2addr v0, v2

    goto :goto_2

    :cond_0
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_4

    mul-int v2, v2, p1

    div-int v1, v2, v0

    goto :goto_0

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    iget v0, p0, Lo/SupportedJsonAdapter;->getInterfaceDescriptor:I

    mul-int v0, v0, p1

    iget v2, p0, Lo/SupportedJsonAdapter;->asInterface:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_0
    move v0, p1

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_6

    iget v1, p0, Lo/SupportedJsonAdapter;->asInterface:I

    mul-int v1, v1, p2

    iget v2, p0, Lo/SupportedJsonAdapter;->getInterfaceDescriptor:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_1
    move v0, p1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move v1, p2

    goto :goto_4

    :cond_6
    iget v2, p0, Lo/SupportedJsonAdapter;->asInterface:I

    iget v4, p0, Lo/SupportedJsonAdapter;->getInterfaceDescriptor:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int v2, v2, p2

    div-int/2addr v2, v4

    move v1, p2

    goto :goto_3

    :cond_7
    move v1, v4

    :goto_3
    if-ne v0, v3, :cond_8

    if-le v2, p1, :cond_8

    iget p2, p0, Lo/SupportedJsonAdapter;->getInterfaceDescriptor:I

    mul-int p2, p2, p1

    iget v0, p0, Lo/SupportedJsonAdapter;->asInterface:I

    div-int v1, p2, v0

    goto :goto_0

    :cond_8
    move v0, v2

    :cond_9
    :goto_4
    invoke-virtual {p0, v0, v1}, Lo/SupportedJsonAdapter;->setMeasuredDimension(II)V

    iget-object p1, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0, v1}, Lo/getCardLinkingEnabled;->onMessageChannelReady(II)V

    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_e

    iget p1, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    if-lez p1, :cond_b

    if-ne p1, v0, :cond_c

    :cond_b
    iget p1, p0, Lo/SupportedJsonAdapter;->warmup:I

    if-lez p1, :cond_d

    if-eq p1, v1, :cond_d

    :cond_c
    invoke-direct {p0}, Lo/SupportedJsonAdapter;->getInterfaceDescriptor()V

    :cond_d
    iput v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    iput v1, p0, Lo/SupportedJsonAdapter;->warmup:I

    :cond_e
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 3

    const-string v0, "AdMediaPlayerView pause"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-direct {p0}, Lo/SupportedJsonAdapter;->ICustomTabsService()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0, v1}, Lo/SupportedJsonAdapter;->extraCallback(I)V

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/BankOfferCategoryBottomSheet$realDismiss$$inlined$executeOnResume$1;

    invoke-direct {v2, p0}, Lo/BankOfferCategoryBottomSheet$realDismiss$$inlined$executeOnResume$1;-><init>(Lo/SupportedJsonAdapter;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput v1, p0, Lo/SupportedJsonAdapter;->onTransact:I

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-direct {p0}, Lo/SupportedJsonAdapter;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lo/SupportedJsonAdapter;->requestPostMessageChannel:I

    return-void

    :cond_0
    iput p1, p0, Lo/SupportedJsonAdapter;->requestPostMessageChannel:I

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    const-string v0, "AdMediaPlayerView play"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-direct {p0}, Lo/SupportedJsonAdapter;->ICustomTabsService()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0, v1}, Lo/SupportedJsonAdapter;->extraCallback(I)V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->onNavigationEvent:Lo/RewardData;

    invoke-virtual {v0}, Lo/RewardData;->onPostMessage()V

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/NewAddCardDialogFragment$onActivityResult$$inlined$let$lambda$1;

    invoke-direct {v2, p0}, Lo/NewAddCardDialogFragment$onActivityResult$$inlined$let$lambda$1;-><init>(Lo/SupportedJsonAdapter;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput v1, p0, Lo/SupportedJsonAdapter;->onTransact:I

    return-void
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lo/SupportedJsonAdapter;->mayLaunchUrl:Z

    if-eqz v0, :cond_0

    const-string v0, " spherical"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "MediaPlayer"

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final onPostMessage(Lo/BankOfferDetailsResponse;)V
    .locals 0

    iput-object p1, p0, Lo/SupportedJsonAdapter;->extraCommand:Lo/BankOfferDetailsResponse;

    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const-string v0, "AdMediaPlayerView prepared"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/SupportedJsonAdapter;->extraCallback(I)V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->onMessageChannelReady:Lo/CardLinkingDataResponse$$Parcelable;

    invoke-virtual {v0}, Lo/CardLinkingDataResponse$$Parcelable;->onNavigationEvent()V

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/UserSegmentResponse;

    invoke-direct {v1, p0}, Lo/UserSegmentResponse;-><init>(Lo/SupportedJsonAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lo/SupportedJsonAdapter;->asInterface:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lo/SupportedJsonAdapter;->getInterfaceDescriptor:I

    iget p1, p0, Lo/SupportedJsonAdapter;->requestPostMessageChannel:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady(I)V

    :cond_0
    invoke-direct {p0}, Lo/SupportedJsonAdapter;->getInterfaceDescriptor()V

    iget p1, p0, Lo/SupportedJsonAdapter;->asInterface:I

    iget v0, p0, Lo/SupportedJsonAdapter;->getInterfaceDescriptor:I

    const/16 v1, 0x3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " x "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget p1, p0, Lo/SupportedJsonAdapter;->onTransact:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent()V

    :cond_1
    invoke-virtual {p0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->asBinder()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p1, "AdMediaPlayerView surface created"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-direct {p0}, Lo/SupportedJsonAdapter;->onRelationshipValidationResult()V

    sget-object p1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance p2, Lo/NewAddCardDialogFragment$bottomSheetListener$1$onComplete$$inlined$executeOnResume$1;

    invoke-direct {p2, p0}, Lo/NewAddCardDialogFragment$bottomSheetListener$1$onComplete$$inlined$executeOnResume$1;-><init>(Lo/SupportedJsonAdapter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "AdMediaPlayerView surface destroyed"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object p1, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget v0, p0, Lo/SupportedJsonAdapter;->requestPostMessageChannel:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lo/SupportedJsonAdapter;->requestPostMessageChannel:I

    :cond_0
    iget-object p1, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/getCardLinkingEnabled;->onNavigationEvent()V

    :cond_1
    sget-object p1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/AddVerifyCardSuccessDialog$setupUI$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, p0}, Lo/AddVerifyCardSuccessDialog$setupUI$1$$special$$inlined$executeOnResume$1;-><init>(Lo/SupportedJsonAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/SupportedJsonAdapter;->ICustomTabsCallback(Z)V

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string p1, "AdMediaPlayerView surface changed"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget p1, p0, Lo/SupportedJsonAdapter;->onTransact:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v2, p0, Lo/SupportedJsonAdapter;->asInterface:I

    if-ne v2, p2, :cond_1

    iget v2, p0, Lo/SupportedJsonAdapter;->getInterfaceDescriptor:I

    if-ne v2, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget p1, p0, Lo/SupportedJsonAdapter;->requestPostMessageChannel:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady(I)V

    :cond_2
    invoke-virtual {p0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent()V

    :cond_3
    iget-object p1, p0, Lo/SupportedJsonAdapter;->newSession:Lo/getCardLinkingEnabled;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2, p3}, Lo/getCardLinkingEnabled;->onMessageChannelReady(II)V

    :cond_4
    sget-object p1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/UserSegmentResponseJsonAdapter;

    invoke-direct {v0, p0, p2, p3}, Lo/UserSegmentResponseJsonAdapter;-><init>(Lo/SupportedJsonAdapter;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lo/SupportedJsonAdapter;->onMessageChannelReady:Lo/CardLinkingDataResponse$$Parcelable;

    invoke-virtual {v0, p0}, Lo/CardLinkingDataResponse$$Parcelable;->ICustomTabsCallback(Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    iget-object v0, p0, Lo/SupportedJsonAdapter;->onNavigationEvent:Lo/RewardData;

    iget-object v1, p0, Lo/SupportedJsonAdapter;->extraCommand:Lo/BankOfferDetailsResponse;

    invoke-virtual {v0, p1, v1}, Lo/RewardData;->onPostMessage(Landroid/graphics/SurfaceTexture;Lo/BankOfferDetailsResponse;)V

    return-void
.end method

.method public final onTransact()I
    .locals 1

    iget-object v0, p0, Lo/SupportedJsonAdapter;->ICustomTabsCallback$Stub:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView size changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lo/SupportedJsonAdapter;->asInterface:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lo/SupportedJsonAdapter;->getInterfaceDescriptor:I

    iget p2, p0, Lo/SupportedJsonAdapter;->asInterface:I

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/SupportedJsonAdapter;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/SwipeActions$$Parcelable;

    invoke-direct {v1, p0, p1}, Lo/SwipeActions$$Parcelable;-><init>(Lo/SupportedJsonAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lo/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Landroid/net/Uri;)Lo/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lo/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/SupportedJsonAdapter;->onRelationshipValidationResult:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lo/SupportedJsonAdapter;->requestPostMessageChannel:I

    invoke-direct {p0}, Lo/SupportedJsonAdapter;->onRelationshipValidationResult()V

    invoke-virtual {p0}, Lo/SupportedJsonAdapter;->requestLayout()V

    invoke-virtual {p0}, Lo/SupportedJsonAdapter;->invalidate()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
