.class public final Lo/CredPointCountModel;
.super Lo/Campaign;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Campaign<",
        "Lo/CredPointCountModel;",
        "Lo/getHostPrefix;",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;",
        "Lo/AFHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/weakContext;

.field extraCallback:Lo/onPostMessage$extraCallback;

.field private final onTransact:Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;Lo/weakContext;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;",
            "Lo/weakContext;",
            "Ljava/util/Set<",
            "Lo/CampaignResponseJsonAdapter;",
            ">;",
            "Ljava/util/Set<",
            "Lo/setScaleType;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p4, p5}, Lo/Campaign;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V

    .line 63
    iput-object p3, p0, Lo/CredPointCountModel;->ICustomTabsCallback$Stub:Lo/weakContext;

    .line 64
    iput-object p2, p0, Lo/CredPointCountModel;->onTransact:Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;

    return-void
.end method

.method private onTransact()Lo/CredPointCountModelJsonAdapter;
    .locals 11

    .line 118
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lo/Campaign;->ICustomTabsCallback()Lo/getMinFrame;

    move-result-object v0

    .line 124
    invoke-static {}, Lo/CredPointCountModel;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    .line 125
    instance-of v1, v0, Lo/CredPointCountModelJsonAdapter;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Lo/CredPointCountModelJsonAdapter;

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lo/CredPointCountModel;->onTransact:Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;

    .line 1050
    iget-object v5, v0, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->ICustomTabsCallback:Landroid/content/res/Resources;

    iget-object v6, v0, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->onPostMessage:Lo/BECampaign;

    iget-object v7, v0, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->extraCallback:Lo/AFFacebookDeferredDeeplink$5;

    iget-object v8, v0, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->onNavigationEvent:Ljava/util/concurrent/Executor;

    iget-object v9, v0, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    iget-object v10, v0, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->onRelationshipValidationResult:Lo/getRotation;

    .line 1071
    new-instance v1, Lo/CredPointCountModelJsonAdapter;

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lo/CredPointCountModelJsonAdapter;-><init>(Landroid/content/res/Resources;Lo/BECampaign;Lo/AFFacebookDeferredDeeplink$5;Ljava/util/concurrent/Executor;Lo/getReferrerClickTimestampSeconds;Lo/getRotation;)V

    .line 1058
    iget-object v2, v0, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->asBinder:Lo/setPivotX;

    if-eqz v2, :cond_1

    .line 1059
    iget-object v0, v0, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->asBinder:Lo/setPivotX;

    invoke-interface {v0}, Lo/setPivotX;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1175
    iput-boolean v0, v1, Lo/CredPointCountModelJsonAdapter;->extraCallback:Z

    :cond_1
    move-object v0, v1

    .line 131
    :goto_0
    invoke-virtual {p0, v0, v3}, Lo/CredPointCountModel;->onPostMessage(Lo/getMinFrame;Ljava/lang/String;)Lo/setPivotX;

    move-result-object v2

    .line 3131
    iget-object v1, p0, Lo/Campaign;->ICustomTabsCallback:Ljava/lang/Object;

    .line 2148
    check-cast v1, Lo/getHostPrefix;

    .line 2149
    iget-object v4, p0, Lo/CredPointCountModel;->ICustomTabsCallback$Stub:Lo/weakContext;

    .line 3946
    iget-object v4, v4, Lo/weakContext;->onNavigationEvent:Lo/endConnection;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 4228
    iget-object v5, v1, Lo/getHostPrefix;->newSession:Lo/performOnAppAttribution;

    if-eqz v5, :cond_2

    .line 2153
    invoke-virtual {p0}, Lo/Campaign;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lo/endConnection;->onNavigationEvent(Lo/getHostPrefix;Ljava/lang/Object;)Lo/invalidateSpanInfo;

    move-result-object v1

    goto :goto_1

    .line 2155
    :cond_2
    invoke-virtual {p0}, Lo/Campaign;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lo/endConnection;->extraCallback(Lo/getHostPrefix;Ljava/lang/Object;)Lo/invalidateSpanInfo;

    move-result-object v1

    :goto_1
    move-object v4, v1

    goto :goto_2

    :cond_3
    move-object v4, v5

    .line 134
    :goto_2
    invoke-virtual {p0}, Lo/Campaign;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    .line 130
    invoke-virtual/range {v1 .. v7}, Lo/CredPointCountModelJsonAdapter;->ICustomTabsCallback(Lo/setPivotX;Ljava/lang/String;Lo/invalidateSpanInfo;Ljava/lang/Object;Lo/getRotation;Lo/CampaignDatabase;)V

    .line 137
    iget-object v1, p0, Lo/CredPointCountModel;->extraCallback:Lo/onPostMessage$extraCallback;

    sget-object v2, Lo/getScaleY;->ICustomTabsCallback:Lo/setPivotX;

    invoke-virtual {v0, v1, p0, v2}, Lo/CredPointCountModelJsonAdapter;->onPostMessage(Lo/onPostMessage$extraCallback;Lo/Campaign;Lo/setPivotX;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 142
    throw v0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/getMinFrame;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lo/Campaign$onMessageChannelReady;)Lo/WorkDatabase;
    .locals 6

    .line 42
    move-object v1, p3

    check-cast v1, Lo/getHostPrefix;

    .line 5168
    iget-object v0, p0, Lo/CredPointCountModel;->ICustomTabsCallback$Stub:Lo/weakContext;

    .line 5186
    sget-object p3, Lo/CredPointCountModel$4;->extraCallback:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p3, p3, v2

    const/4 v2, 0x1

    if-eq p3, v2, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    .line 5192
    sget-object p3, Lo/getHostPrefix$onMessageChannelReady;->onMessageChannelReady:Lo/getHostPrefix$onMessageChannelReady;

    goto :goto_0

    .line 5194
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cache level"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "is not supported. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5190
    :cond_1
    sget-object p3, Lo/getHostPrefix$onMessageChannelReady;->onNavigationEvent:Lo/getHostPrefix$onMessageChannelReady;

    goto :goto_0

    .line 5188
    :cond_2
    sget-object p3, Lo/getHostPrefix$onMessageChannelReady;->extraCallback:Lo/getHostPrefix$onMessageChannelReady;

    :goto_0
    move-object v3, p3

    .line 6178
    instance-of p3, p1, Lo/CredPointCountModelJsonAdapter;

    if-eqz p3, :cond_3

    .line 6179
    check-cast p1, Lo/CredPointCountModelJsonAdapter;

    invoke-virtual {p1}, Lo/CredPointCountModelJsonAdapter;->onPostMessage()Lo/registerConversionListener;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move-object v4, p1

    move-object v2, p4

    move-object v5, p2

    .line 5168
    invoke-virtual/range {v0 .. v5}, Lo/weakContext;->onNavigationEvent(Lo/getHostPrefix;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;Lo/registerConversionListener;Ljava/lang/String;)Lo/WorkDatabase;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onNavigationEvent()Lo/DataCampaign;
    .locals 1

    .line 42
    invoke-direct {p0}, Lo/CredPointCountModel;->onTransact()Lo/CredPointCountModelJsonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onPostMessage(Landroid/net/Uri;)Lo/setMaxProgress;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 7124
    iput-object v0, p0, Lo/Campaign;->ICustomTabsCallback:Ljava/lang/Object;

    .line 7070
    move-object p1, p0

    check-cast p1, Lo/CredPointCountModel;

    return-object p1

    .line 8054
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;-><init>()V

    if-eqz p1, :cond_1

    .line 8112
    iput-object p1, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    .line 7074
    invoke-static {}, Lo/ɩ;->onMessageChannelReady()Lo/ɩ;

    move-result-object p1

    .line 9179
    iput-object p1, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onPostMessage:Lo/ɩ;

    .line 7075
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onNavigationEvent()Lo/getHostPrefix;

    move-result-object p1

    .line 10124
    iput-object p1, p0, Lo/Campaign;->ICustomTabsCallback:Ljava/lang/Object;

    .line 7076
    move-object p1, p0

    check-cast p1, Lo/CredPointCountModel;

    return-object p1

    .line 8215
    :cond_1
    throw v0
.end method
