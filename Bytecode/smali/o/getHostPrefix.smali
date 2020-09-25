.class public Lo/getHostPrefix;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getHostPrefix$onMessageChannelReady;,
        Lo/getHostPrefix$extraCallback;
    }
.end annotation


# static fields
.field public static final mayLaunchUrl:Lo/setRotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setRotation<",
            "Lo/getHostPrefix;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Landroid/net/Uri;

.field public final ICustomTabsCallback$Stub:Lo/logWarn;

.field public final ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

.field public final ICustomTabsService:Z

.field public final asBinder:Lo/ǃ;

.field public final asInterface:Lo/getInstallVersion;

.field public final extraCallback:Lo/getHostPrefix$extraCallback;

.field private extraCommand:Ljava/io/File;

.field public final getInterfaceDescriptor:Lo/getHostPrefix$onMessageChannelReady;

.field public final newSession:Lo/performOnAppAttribution;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Z

.field public final onPostMessage:Z

.field public final onRelationshipValidationResult:Lo/ɩ;

.field public final onTransact:Lo/AFDeepLinkManager;

.field public final postMessage:Lo/registerConversionListener;

.field public final requestPostMessageChannel:Ljava/lang/Boolean;

.field public final warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 381
    new-instance v0, Lo/getHostPrefix$5;

    invoke-direct {v0}, Lo/getHostPrefix$5;-><init>()V

    sput-object v0, Lo/getHostPrefix;->mayLaunchUrl:Lo/setRotation;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2234
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->asBinder:Lo/getHostPrefix$extraCallback;

    .line 116
    iput-object v0, p0, Lo/getHostPrefix;->extraCallback:Lo/getHostPrefix$extraCallback;

    .line 3118
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    .line 117
    iput-object v0, p0, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3358
    invoke-static {v0}, Lo/setLayoutDirection;->onMessageChannelReady(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3360
    :cond_0
    invoke-static {v0}, Lo/setLayoutDirection;->ICustomTabsCallback(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3361
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/setScaleY;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/setScaleY;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 3366
    :cond_2
    invoke-static {v0}, Lo/setLayoutDirection;->onNavigationEvent(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 3368
    :cond_3
    invoke-static {v0}, Lo/setLayoutDirection;->asBinder(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 3370
    :cond_4
    invoke-static {v0}, Lo/setLayoutDirection;->asInterface(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 3372
    :cond_5
    invoke-static {v0}, Lo/setLayoutDirection;->ICustomTabsCallback$Stub(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 3374
    :cond_6
    invoke-static {v0}, Lo/setLayoutDirection;->onRelationshipValidationResult(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    .line 118
    :goto_0
    iput v0, p0, Lo/getHostPrefix;->onMessageChannelReady:I

    .line 4250
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->asInterface:Z

    .line 120
    iput-boolean v0, p0, Lo/getHostPrefix;->onPostMessage:Z

    .line 4266
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback$Stub:Z

    .line 121
    iput-boolean v0, p0, Lo/getHostPrefix;->onNavigationEvent:Z

    .line 5217
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onNavigationEvent:Lo/AFDeepLinkManager;

    .line 123
    iput-object v0, p0, Lo/getHostPrefix;->onTransact:Lo/AFDeepLinkManager;

    .line 6166
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->extraCallback:Lo/ǃ;

    .line 125
    iput-object v0, p0, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    .line 6185
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onPostMessage:Lo/ɩ;

    if-nez v0, :cond_8

    .line 128
    invoke-static {}, Lo/ɩ;->onPostMessage()Lo/ɩ;

    move-result-object v0

    goto :goto_1

    .line 7185
    :cond_8
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onPostMessage:Lo/ɩ;

    .line 129
    :goto_1
    iput-object v0, p0, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    .line 7208
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsService:Lo/logWarn;

    .line 130
    iput-object v0, p0, Lo/getHostPrefix;->ICustomTabsCallback$Stub:Lo/logWarn;

    .line 7304
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onRelationshipValidationResult:Lo/getInstallVersion;

    .line 132
    iput-object v0, p0, Lo/getHostPrefix;->asInterface:Lo/getInstallVersion;

    .line 8134
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onMessageChannelReady:Lo/getHostPrefix$onMessageChannelReady;

    .line 133
    iput-object v0, p0, Lo/getHostPrefix;->getInterfaceDescriptor:Lo/getHostPrefix$onMessageChannelReady;

    .line 8277
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    invoke-static {v0}, Lo/setLayoutDirection;->onMessageChannelReady(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 134
    :cond_9
    iput-boolean v1, p0, Lo/getHostPrefix;->warmup:Z

    .line 8288
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback$Stub$Proxy:Z

    .line 135
    iput-boolean v0, p0, Lo/getHostPrefix;->ICustomTabsService:Z

    .line 8351
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->warmup:Ljava/lang/Boolean;

    .line 136
    iput-object v0, p0, Lo/getHostPrefix;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

    .line 9320
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onTransact:Lo/performOnAppAttribution;

    .line 138
    iput-object v0, p0, Lo/getHostPrefix;->newSession:Lo/performOnAppAttribution;

    .line 9337
    iget-object p1, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newSession:Lo/registerConversionListener;

    .line 140
    iput-object p1, p0, Lo/getHostPrefix;->postMessage:Lo/registerConversionListener;

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lo/getHostPrefix;->requestPostMessageChannel:Ljava/lang/Boolean;

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;)Lo/getHostPrefix;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 2054
    :cond_1
    new-instance v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;-><init>()V

    if-eqz p0, :cond_2

    .line 2112
    iput-object p0, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    .line 1108
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onNavigationEvent()Lo/getHostPrefix;

    move-result-object p0

    return-object p0

    .line 2215
    :cond_2
    throw v0

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 237
    instance-of v0, p1, Lo/getHostPrefix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 240
    :cond_0
    check-cast p1, Lo/getHostPrefix;

    .line 241
    iget-boolean v0, p0, Lo/getHostPrefix;->onNavigationEvent:Z

    iget-boolean v2, p1, Lo/getHostPrefix;->onNavigationEvent:Z

    if-eq v0, v2, :cond_1

    return v1

    .line 242
    :cond_1
    iget-boolean v0, p0, Lo/getHostPrefix;->warmup:Z

    iget-boolean v2, p1, Lo/getHostPrefix;->warmup:Z

    if-eq v0, v2, :cond_2

    return v1

    .line 243
    :cond_2
    iget-boolean v0, p0, Lo/getHostPrefix;->ICustomTabsService:Z

    iget-boolean v2, p1, Lo/getHostPrefix;->ICustomTabsService:Z

    if-eq v0, v2, :cond_3

    return v1

    .line 244
    :cond_3
    iget-object v0, p0, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    iget-object v2, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    if-eqz v0, :cond_4

    .line 10053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1d

    .line 244
    iget-object v0, p0, Lo/getHostPrefix;->extraCallback:Lo/getHostPrefix$extraCallback;

    iget-object v2, p1, Lo/getHostPrefix;->extraCallback:Lo/getHostPrefix$extraCallback;

    if-eq v0, v2, :cond_7

    if-eqz v0, :cond_6

    .line 11053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_1d

    .line 245
    iget-object v0, p0, Lo/getHostPrefix;->extraCommand:Ljava/io/File;

    iget-object v2, p1, Lo/getHostPrefix;->extraCommand:Ljava/io/File;

    if-eq v0, v2, :cond_9

    if-eqz v0, :cond_8

    .line 12053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_1d

    .line 246
    iget-object v0, p0, Lo/getHostPrefix;->ICustomTabsCallback$Stub:Lo/logWarn;

    iget-object v2, p1, Lo/getHostPrefix;->ICustomTabsCallback$Stub:Lo/logWarn;

    if-eq v0, v2, :cond_b

    if-eqz v0, :cond_a

    .line 13053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_1d

    .line 247
    iget-object v0, p0, Lo/getHostPrefix;->onTransact:Lo/AFDeepLinkManager;

    iget-object v2, p1, Lo/getHostPrefix;->onTransact:Lo/AFDeepLinkManager;

    if-eq v0, v2, :cond_d

    if-eqz v0, :cond_c

    .line 14053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_1d

    .line 248
    iget-object v0, p0, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    iget-object v2, p1, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    if-eq v0, v2, :cond_f

    if-eqz v0, :cond_e

    .line 15053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_1d

    .line 249
    iget-object v0, p0, Lo/getHostPrefix;->asInterface:Lo/getInstallVersion;

    iget-object v2, p1, Lo/getHostPrefix;->asInterface:Lo/getInstallVersion;

    if-eq v0, v2, :cond_11

    if-eqz v0, :cond_10

    .line 16053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_1d

    .line 250
    iget-object v0, p0, Lo/getHostPrefix;->getInterfaceDescriptor:Lo/getHostPrefix$onMessageChannelReady;

    iget-object v2, p1, Lo/getHostPrefix;->getInterfaceDescriptor:Lo/getHostPrefix$onMessageChannelReady;

    if-eq v0, v2, :cond_13

    if-eqz v0, :cond_12

    .line 17053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_e

    :cond_12
    const/4 v0, 0x0

    goto :goto_f

    :cond_13
    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_1d

    .line 251
    iget-object v0, p0, Lo/getHostPrefix;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

    iget-object v2, p1, Lo/getHostPrefix;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_15

    if-eqz v0, :cond_14

    .line 18053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_10

    :cond_14
    const/4 v0, 0x0

    goto :goto_11

    :cond_15
    :goto_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_1d

    .line 253
    iget-object v0, p0, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    iget-object v2, p1, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    if-eq v0, v2, :cond_17

    if-eqz v0, :cond_16

    .line 20053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_12

    :cond_16
    const/4 v0, 0x0

    goto :goto_13

    :cond_17
    :goto_12
    const/4 v0, 0x1

    :goto_13
    if-nez v0, :cond_18

    goto :goto_16

    .line 257
    :cond_18
    iget-object v0, p0, Lo/getHostPrefix;->newSession:Lo/performOnAppAttribution;

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 258
    invoke-interface {v0}, Lo/performOnAppAttribution;->onMessageChannelReady()Lo/invalidateSpanInfo;

    move-result-object v0

    goto :goto_14

    :cond_19
    move-object v0, v2

    .line 259
    :goto_14
    iget-object p1, p1, Lo/getHostPrefix;->newSession:Lo/performOnAppAttribution;

    if-eqz p1, :cond_1a

    .line 260
    invoke-interface {p1}, Lo/performOnAppAttribution;->onMessageChannelReady()Lo/invalidateSpanInfo;

    move-result-object v2

    :cond_1a
    if-eq v0, v2, :cond_1c

    if-eqz v0, :cond_1b

    .line 21053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_15

    :cond_1b
    return v1

    :cond_1c
    :goto_15
    return v3

    :cond_1d
    :goto_16
    return v1
.end method

.method public final declared-synchronized extraCallback()Ljava/io/File;
    .locals 2

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lo/getHostPrefix;->extraCommand:Ljava/io/File;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/getHostPrefix;->extraCommand:Ljava/io/File;

    .line 224
    :cond_0
    iget-object v0, p0, Lo/getHostPrefix;->extraCommand:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 5

    .line 266
    iget-object v0, p0, Lo/getHostPrefix;->newSession:Lo/performOnAppAttribution;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Lo/performOnAppAttribution;->onMessageChannelReady()Lo/invalidateSpanInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 268
    iget-object v4, p0, Lo/getHostPrefix;->extraCallback:Lo/getHostPrefix$extraCallback;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lo/getHostPrefix;->onNavigationEvent:Z

    .line 271
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lo/getHostPrefix;->ICustomTabsCallback$Stub:Lo/logWarn;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lo/getHostPrefix;->asInterface:Lo/getInstallVersion;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lo/getHostPrefix;->getInterfaceDescriptor:Lo/getHostPrefix$onMessageChannelReady;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lo/getHostPrefix;->warmup:Z

    .line 275
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-boolean v4, p0, Lo/getHostPrefix;->ICustomTabsService:Z

    .line 276
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lo/getHostPrefix;->onTransact:Lo/AFDeepLinkManager;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lo/getHostPrefix;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget-object v4, p0, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-object v4, p0, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    aput-object v0, v2, v3

    const/16 v0, 0xd

    aput-object v1, v2, v0

    .line 21075
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 21119
    new-instance v0, Lo/setPivotY$onMessageChannelReady;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/setPivotY$onMessageChannelReady;-><init>(Ljava/lang/String;B)V

    .line 287
    iget-object v1, p0, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    const-string/jumbo v2, "uri"

    .line 288
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getHostPrefix;->extraCallback:Lo/getHostPrefix$extraCallback;

    const-string v2, "cacheChoice"

    .line 289
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getHostPrefix;->onTransact:Lo/AFDeepLinkManager;

    const-string v2, "decodeOptions"

    .line 290
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getHostPrefix;->newSession:Lo/performOnAppAttribution;

    const-string v2, "postprocessor"

    .line 291
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getHostPrefix;->asInterface:Lo/getInstallVersion;

    const-string v2, "priority"

    .line 292
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    const-string/jumbo v2, "resizeOptions"

    .line 293
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    const-string/jumbo v2, "rotationOptions"

    .line 294
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getHostPrefix;->ICustomTabsCallback$Stub:Lo/logWarn;

    const-string v2, "bytesRange"

    .line 295
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    const-string/jumbo v1, "resizingAllowedOverride"

    const/4 v2, 0x0

    .line 296
    invoke-virtual {v0, v1, v2}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-boolean v1, p0, Lo/getHostPrefix;->onPostMessage:Z

    const-string v2, "progressiveRenderingEnabled"

    .line 297
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-boolean v1, p0, Lo/getHostPrefix;->onNavigationEvent:Z

    const-string v2, "localThumbnailPreviewsEnabled"

    .line 298
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getHostPrefix;->getInterfaceDescriptor:Lo/getHostPrefix$onMessageChannelReady;

    const-string v2, "lowestPermittedRequestLevel"

    .line 299
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-boolean v1, p0, Lo/getHostPrefix;->warmup:Z

    const-string v2, "isDiskCacheEnabled"

    .line 300
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-boolean v1, p0, Lo/getHostPrefix;->ICustomTabsService:Z

    const-string v2, "isMemoryCacheEnabled"

    .line 301
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/getHostPrefix;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

    const-string v2, "decodePrefetches"

    .line 302
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
