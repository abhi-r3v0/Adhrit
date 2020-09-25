.class final Lo/sendDeepLinkData$onPostMessage;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendDeepLinkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getCardBackgroundColor;",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getInstallReferrer;

.field private final extraCallback:Lo/endConnection;

.field private final onMessageChannelReady:Lo/getInstallReferrer;

.field private final onPostMessage:Lo/setPreinstallAttribution;


# direct methods
.method private constructor <init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setPreinstallAttribution;",
            "Lo/getInstallReferrer;",
            "Lo/getInstallReferrer;",
            "Lo/endConnection;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    .line 100
    iput-object p2, p0, Lo/sendDeepLinkData$onPostMessage;->onPostMessage:Lo/setPreinstallAttribution;

    .line 101
    iput-object p3, p0, Lo/sendDeepLinkData$onPostMessage;->ICustomTabsCallback:Lo/getInstallReferrer;

    .line 102
    iput-object p4, p0, Lo/sendDeepLinkData$onPostMessage;->onMessageChannelReady:Lo/getInstallReferrer;

    .line 103
    iput-object p5, p0, Lo/sendDeepLinkData$onPostMessage;->extraCallback:Lo/endConnection;

    return-void
.end method

.method synthetic constructor <init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;B)V
    .locals 0

    .line 85
    invoke-direct/range {p0 .. p5}, Lo/sendDeepLinkData$onPostMessage;-><init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 5

    .line 85
    check-cast p1, Lo/getCardBackgroundColor;

    .line 1108
    iget-object v0, p0, Lo/sendDeepLinkData$onPostMessage;->onPostMessage:Lo/setPreinstallAttribution;

    invoke-interface {v0}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v0

    iget-object v1, p0, Lo/sendDeepLinkData$onPostMessage;->onPostMessage:Lo/setPreinstallAttribution;

    const-string v2, "DiskCacheWriteProducer"

    invoke-interface {v0, v1, v2}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v3

    const/4 v4, 0x0

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    and-int/lit8 v0, p2, 0xa

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_6

    .line 3326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_2

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_3

    .line 3327
    :cond_2
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 3209
    :cond_3
    iget-object v0, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 1114
    sget-object v1, Lo/setProgress;->onPostMessage:Lo/setProgress;

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 1122
    :cond_4
    iget-object v0, p0, Lo/sendDeepLinkData$onPostMessage;->onPostMessage:Lo/setPreinstallAttribution;

    invoke-interface {v0}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 1123
    iget-object v1, p0, Lo/sendDeepLinkData$onPostMessage;->extraCallback:Lo/endConnection;

    iget-object v3, p0, Lo/sendDeepLinkData$onPostMessage;->onPostMessage:Lo/setPreinstallAttribution;

    .line 1124
    invoke-interface {v3}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    invoke-interface {v1, v0}, Lo/endConnection;->onPostMessage(Lo/getHostPrefix;)Lo/invalidateSpanInfo;

    move-result-object v1

    .line 4146
    iget-object v0, v0, Lo/getHostPrefix;->extraCallback:Lo/getHostPrefix$extraCallback;

    .line 1126
    sget-object v3, Lo/getHostPrefix$extraCallback;->onNavigationEvent:Lo/getHostPrefix$extraCallback;

    if-ne v0, v3, :cond_5

    .line 1127
    iget-object v0, p0, Lo/sendDeepLinkData$onPostMessage;->onMessageChannelReady:Lo/getInstallReferrer;

    invoke-virtual {v0, v1, p1}, Lo/getInstallReferrer;->extraCallback(Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V

    goto :goto_1

    .line 1129
    :cond_5
    iget-object v0, p0, Lo/sendDeepLinkData$onPostMessage;->ICustomTabsCallback:Lo/getInstallReferrer;

    invoke-virtual {v0, v1, p1}, Lo/getInstallReferrer;->extraCallback(Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V

    .line 1131
    :goto_1
    iget-object v0, p0, Lo/sendDeepLinkData$onPostMessage;->onPostMessage:Lo/setPreinstallAttribution;

    .line 1132
    invoke-interface {v0}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v0

    iget-object v1, p0, Lo/sendDeepLinkData$onPostMessage;->onPostMessage:Lo/setPreinstallAttribution;

    .line 1133
    invoke-interface {v0, v1, v2, v4}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 5020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1135
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    return-void

    .line 1115
    :cond_6
    :goto_2
    iget-object v0, p0, Lo/sendDeepLinkData$onPostMessage;->onPostMessage:Lo/setPreinstallAttribution;

    .line 1116
    invoke-interface {v0}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v0

    iget-object v1, p0, Lo/sendDeepLinkData$onPostMessage;->onPostMessage:Lo/setPreinstallAttribution;

    .line 1117
    invoke-interface {v0, v1, v2, v4}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 4020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1118
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    return-void
.end method
