.class final Lo/reportTrackSession$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reportTrackSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getDelegate<",
        "Lo/getCardBackgroundColor;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setPreinstallAttribution;

.field private synthetic extraCallback:Lo/invalidateSpanInfo;

.field private synthetic onMessageChannelReady:Lo/reportTrackSession;

.field private synthetic onNavigationEvent:Lo/unregisterConversionListener;

.field private synthetic onPostMessage:Lo/waitForCustomerUserId;


# direct methods
.method constructor <init>(Lo/reportTrackSession;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Lo/waitForCustomerUserId;Lo/invalidateSpanInfo;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/reportTrackSession$4;->onMessageChannelReady:Lo/reportTrackSession;

    iput-object p2, p0, Lo/reportTrackSession$4;->onNavigationEvent:Lo/unregisterConversionListener;

    iput-object p3, p0, Lo/reportTrackSession$4;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    iput-object p4, p0, Lo/reportTrackSession$4;->onPostMessage:Lo/waitForCustomerUserId;

    iput-object p5, p0, Lo/reportTrackSession$4;->extraCallback:Lo/invalidateSpanInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2174
    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->onMessageChannelReady()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2175
    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x0

    const-string v4, "PartialDiskCacheProducer"

    if-eqz v0, :cond_2

    .line 1107
    iget-object p1, p0, Lo/reportTrackSession$4;->onNavigationEvent:Lo/unregisterConversionListener;

    iget-object v0, p0, Lo/reportTrackSession$4;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {p1, v0, v4, v3}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 1108
    iget-object p1, p0, Lo/reportTrackSession$4;->onPostMessage:Lo/waitForCustomerUserId;

    invoke-interface {p1}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    goto/16 :goto_4

    .line 1109
    :cond_2
    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1110
    iget-object v0, p0, Lo/reportTrackSession$4;->onNavigationEvent:Lo/unregisterConversionListener;

    iget-object v1, p0, Lo/reportTrackSession$4;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 1111
    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p1

    .line 1110
    invoke-interface {v0, v1, v4, p1, v3}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 1112
    iget-object p1, p0, Lo/reportTrackSession$4;->onMessageChannelReady:Lo/reportTrackSession;

    iget-object v0, p0, Lo/reportTrackSession$4;->onPostMessage:Lo/waitForCustomerUserId;

    iget-object v1, p0, Lo/reportTrackSession$4;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    iget-object v2, p0, Lo/reportTrackSession$4;->extraCallback:Lo/invalidateSpanInfo;

    invoke-static {p1, v0, v1, v2, v3}, Lo/reportTrackSession;->ICustomTabsCallback(Lo/reportTrackSession;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V

    goto/16 :goto_4

    .line 1114
    :cond_3
    invoke-virtual {p1}, Lo/getDrawerToggleDelegate;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCardBackgroundColor;

    if-eqz p1, :cond_b

    .line 1116
    iget-object v0, p0, Lo/reportTrackSession$4;->onNavigationEvent:Lo/unregisterConversionListener;

    iget-object v5, p0, Lo/reportTrackSession$4;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 1119
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v6

    invoke-static {v0, v5, v2, v6}, Lo/reportTrackSession;->ICustomTabsCallback(Lo/unregisterConversionListener;Lo/setPreinstallAttribution;ZI)Ljava/util/Map;

    move-result-object v6

    .line 1116
    invoke-interface {v0, v5, v4, v6}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 1120
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v0

    sub-int/2addr v0, v2

    if-lez v0, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_a

    .line 3121
    new-instance v5, Lo/logWarn;

    invoke-direct {v5, v1, v0}, Lo/logWarn;-><init>(II)V

    .line 4203
    iput-object v5, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback$Stub:Lo/logWarn;

    .line 1124
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v0

    .line 1125
    iget-object v6, p0, Lo/reportTrackSession$4;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v6}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v6

    .line 5181
    iget-object v7, v6, Lo/getHostPrefix;->ICustomTabsCallback$Stub:Lo/logWarn;

    if-eqz v7, :cond_5

    .line 6070
    iget v8, v5, Lo/logWarn;->onPostMessage:I

    iget v9, v7, Lo/logWarn;->onPostMessage:I

    if-gt v8, v9, :cond_5

    iget v5, v5, Lo/logWarn;->onMessageChannelReady:I

    iget v7, v7, Lo/logWarn;->onMessageChannelReady:I

    if-lt v5, v7, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    .line 1128
    iget-object v0, p0, Lo/reportTrackSession$4;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    const-string v1, "disk"

    const-string v5, "partial"

    invoke-interface {v0, v1, v5}, Lo/setPreinstallAttribution;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lo/reportTrackSession$4;->onNavigationEvent:Lo/unregisterConversionListener;

    iget-object v1, p0, Lo/reportTrackSession$4;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v0, v1, v4, v2}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    .line 1130
    iget-object v0, p0, Lo/reportTrackSession$4;->onPostMessage:Lo/waitForCustomerUserId;

    const/16 v1, 0x9

    invoke-interface {v0, p1, v1}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    goto/16 :goto_4

    .line 1132
    :cond_6
    iget-object v4, p0, Lo/reportTrackSession$4;->onPostMessage:Lo/waitForCustomerUserId;

    const/16 v5, 0x8

    invoke-interface {v4, p1, v5}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    .line 6150
    iget-object v4, v6, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 7054
    new-instance v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    invoke-direct {v5}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;-><init>()V

    if-eqz v4, :cond_9

    .line 7112
    iput-object v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    .line 8185
    iget-object v4, v6, Lo/getHostPrefix;->onTransact:Lo/AFDeepLinkManager;

    .line 8212
    iput-object v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onNavigationEvent:Lo/AFDeepLinkManager;

    .line 9181
    iget-object v4, v6, Lo/getHostPrefix;->ICustomTabsCallback$Stub:Lo/logWarn;

    .line 9201
    iput-object v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsService:Lo/logWarn;

    .line 10146
    iget-object v4, v6, Lo/getHostPrefix;->extraCallback:Lo/getHostPrefix$extraCallback;

    .line 10228
    iput-object v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->asBinder:Lo/getHostPrefix$extraCallback;

    .line 11193
    iget-boolean v4, v6, Lo/getHostPrefix;->onNavigationEvent:Z

    .line 11260
    iput-boolean v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback$Stub:Z

    .line 12201
    iget-object v4, v6, Lo/getHostPrefix;->getInterfaceDescriptor:Lo/getHostPrefix$onMessageChannelReady;

    .line 13128
    iput-object v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onMessageChannelReady:Lo/getHostPrefix$onMessageChannelReady;

    .line 13228
    iget-object v4, v6, Lo/getHostPrefix;->newSession:Lo/performOnAppAttribution;

    .line 13314
    iput-object v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onTransact:Lo/performOnAppAttribution;

    .line 14189
    iget-boolean v4, v6, Lo/getHostPrefix;->onPostMessage:Z

    .line 14244
    iput-boolean v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->asInterface:Z

    .line 15197
    iget-object v4, v6, Lo/getHostPrefix;->asInterface:Lo/getInstallVersion;

    .line 15298
    iput-object v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onRelationshipValidationResult:Lo/getInstallVersion;

    .line 16166
    iget-object v4, v6, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    .line 17160
    iput-object v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->extraCallback:Lo/ǃ;

    .line 17232
    iget-object v4, v6, Lo/getHostPrefix;->postMessage:Lo/registerConversionListener;

    .line 17331
    iput-object v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newSession:Lo/registerConversionListener;

    .line 18170
    iget-object v4, v6, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    .line 18179
    iput-object v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onPostMessage:Lo/ɩ;

    .line 18213
    iget-object v4, v6, Lo/getHostPrefix;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

    .line 18355
    iput-object v4, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->warmup:Ljava/lang/Boolean;

    sub-int/2addr v0, v2

    if-ltz v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_8

    .line 19110
    new-instance v1, Lo/logWarn;

    const v2, 0x7fffffff

    invoke-direct {v1, v0, v2}, Lo/logWarn;-><init>(II)V

    .line 20201
    iput-object v1, v5, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsService:Lo/logWarn;

    .line 1138
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onNavigationEvent()Lo/getHostPrefix;

    move-result-object v0

    .line 1139
    new-instance v1, Lo/isPreInstalledApp;

    iget-object v2, p0, Lo/reportTrackSession$4;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-direct {v1, v0, v2}, Lo/isPreInstalledApp;-><init>(Lo/getHostPrefix;Lo/setPreinstallAttribution;)V

    .line 1142
    iget-object v0, p0, Lo/reportTrackSession$4;->onMessageChannelReady:Lo/reportTrackSession;

    iget-object v2, p0, Lo/reportTrackSession$4;->onPostMessage:Lo/waitForCustomerUserId;

    iget-object v4, p0, Lo/reportTrackSession$4;->extraCallback:Lo/invalidateSpanInfo;

    invoke-static {v0, v2, v1, v4, p1}, Lo/reportTrackSession;->ICustomTabsCallback(Lo/reportTrackSession;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V

    goto :goto_4

    .line 20111
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 7215
    :cond_9
    throw v3

    .line 4111
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1146
    :cond_b
    iget-object v0, p0, Lo/reportTrackSession$4;->onNavigationEvent:Lo/unregisterConversionListener;

    iget-object v2, p0, Lo/reportTrackSession$4;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 1147
    invoke-static {v0, v2, v1, v1}, Lo/reportTrackSession;->ICustomTabsCallback(Lo/unregisterConversionListener;Lo/setPreinstallAttribution;ZI)Ljava/util/Map;

    move-result-object v1

    .line 1146
    invoke-interface {v0, v2, v4, v1}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 1148
    iget-object v0, p0, Lo/reportTrackSession$4;->onMessageChannelReady:Lo/reportTrackSession;

    iget-object v1, p0, Lo/reportTrackSession$4;->onPostMessage:Lo/waitForCustomerUserId;

    iget-object v2, p0, Lo/reportTrackSession$4;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    iget-object v4, p0, Lo/reportTrackSession$4;->extraCallback:Lo/invalidateSpanInfo;

    invoke-static {v0, v1, v2, v4, p1}, Lo/reportTrackSession;->ICustomTabsCallback(Lo/reportTrackSession;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V

    :goto_4
    return-object v3
.end method
