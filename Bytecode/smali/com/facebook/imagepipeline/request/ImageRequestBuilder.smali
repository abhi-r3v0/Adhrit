.class public final Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Landroid/net/Uri;

.field public ICustomTabsCallback$Stub:Z

.field public ICustomTabsCallback$Stub$Proxy:Z

.field public ICustomTabsService:Lo/logWarn;

.field public asBinder:Lo/getHostPrefix$extraCallback;

.field public asInterface:Z

.field public extraCallback:Lo/ǃ;

.field public getInterfaceDescriptor:Z

.field public newSession:Lo/registerConversionListener;

.field public onMessageChannelReady:Lo/getHostPrefix$onMessageChannelReady;

.field public onNavigationEvent:Lo/AFDeepLinkManager;

.field public onPostMessage:Lo/ɩ;

.field public onRelationshipValidationResult:Lo/getInstallVersion;

.field public onTransact:Lo/performOnAppAttribution;

.field public warmup:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    .line 30
    sget-object v1, Lo/getHostPrefix$onMessageChannelReady;->extraCallback:Lo/getHostPrefix$onMessageChannelReady;

    iput-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onMessageChannelReady:Lo/getHostPrefix$onMessageChannelReady;

    .line 31
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->extraCallback:Lo/ǃ;

    .line 32
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onPostMessage:Lo/ɩ;

    .line 33
    invoke-static {}, Lo/AFDeepLinkManager;->onMessageChannelReady()Lo/AFDeepLinkManager;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onNavigationEvent:Lo/AFDeepLinkManager;

    .line 34
    sget-object v1, Lo/getHostPrefix$extraCallback;->extraCallback:Lo/getHostPrefix$extraCallback;

    iput-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->asBinder:Lo/getHostPrefix$extraCallback;

    .line 36
    invoke-static {}, Lo/context;->onNavigationEvent()Lo/context$ICustomTabsCallback;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->asInterface:Z

    .line 37
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback$Stub:Z

    .line 38
    sget-object v1, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    iput-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onRelationshipValidationResult:Lo/getInstallVersion;

    .line 39
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onTransact:Lo/performOnAppAttribution;

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getInterfaceDescriptor:Z

    .line 41
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback$Stub$Proxy:Z

    .line 42
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->warmup:Ljava/lang/Boolean;

    .line 44
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsService:Lo/logWarn;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/getHostPrefix;
    .locals 2

    .line 2378
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 2383
    invoke-static {v0}, Lo/setLayoutDirection;->asInterface(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2384
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2387
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2391
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2393
    :catch_0
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Resource URI path must be a resource id."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2388
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Resource URI must not be empty"

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2385
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Resource URI path must be absolute."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2399
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    invoke-static {v0}, Lo/setLayoutDirection;->asBinder(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 2400
    :cond_3
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Asset URI path must be absolute."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_4
    :goto_1
    new-instance v0, Lo/getHostPrefix;

    invoke-direct {v0, p0}, Lo/getHostPrefix;-><init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V

    return-object v0

    .line 2379
    :cond_5
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Source must be set!"

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
