.class final Lo/setCollectAndroidID$ICustomTabsCallback;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCollectAndroidID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
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

.field private final ICustomTabsCallback$Stub:Lo/isReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isReady<",
            "Lo/invalidateSpanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/setPreinstallAttribution;

.field private final onMessageChannelReady:Lo/getInstallReferrer;

.field private final onPostMessage:Lo/endConnection;

.field private final onTransact:Lo/isReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isReady<",
            "Lo/invalidateSpanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/isReady;Lo/isReady;)V
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
            "Lo/isReady<",
            "Lo/invalidateSpanInfo;",
            ">;",
            "Lo/isReady<",
            "Lo/invalidateSpanInfo;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    .line 98
    iput-object p2, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->extraCallback:Lo/setPreinstallAttribution;

    .line 99
    iput-object p3, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->ICustomTabsCallback:Lo/getInstallReferrer;

    .line 100
    iput-object p4, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->onMessageChannelReady:Lo/getInstallReferrer;

    .line 101
    iput-object p5, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->onPostMessage:Lo/endConnection;

    .line 102
    iput-object p6, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->onTransact:Lo/isReady;

    .line 103
    iput-object p7, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/isReady;

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 7

    const-string v0, "origin"

    .line 80
    check-cast p1, Lo/getCardBackgroundColor;

    .line 1109
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v3

    if-nez v1, :cond_9

    if-eqz p1, :cond_9

    and-int/lit8 v1, p2, 0xa

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_9

    .line 3326
    iget v1, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v1, :cond_2

    iget v1, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v1, :cond_3

    .line 3327
    :cond_2
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 3209
    :cond_3
    iget-object v1, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 1117
    sget-object v4, Lo/setProgress;->onPostMessage:Lo/setProgress;

    if-ne v1, v4, :cond_4

    goto :goto_4

    .line 1122
    :cond_4
    iget-object v1, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->extraCallback:Lo/setPreinstallAttribution;

    invoke-interface {v1}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v1

    .line 1123
    iget-object v4, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->onPostMessage:Lo/endConnection;

    iget-object v5, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->extraCallback:Lo/setPreinstallAttribution;

    .line 1124
    invoke-interface {v5}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    invoke-interface {v4, v1}, Lo/endConnection;->onPostMessage(Lo/getHostPrefix;)Lo/invalidateSpanInfo;

    move-result-object v4

    .line 1126
    iget-object v5, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->onTransact:Lo/isReady;

    invoke-virtual {v5, v4}, Lo/isReady;->ICustomTabsCallback(Ljava/lang/Object;)Z

    .line 1127
    iget-object v5, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->extraCallback:Lo/setPreinstallAttribution;

    invoke-interface {v5, v0}, Lo/setPreinstallAttribution;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "memory_encoded"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1128
    iget-object v0, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/isReady;

    invoke-virtual {v0, v4}, Lo/isReady;->extraCallback(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4146
    iget-object v0, v1, Lo/getHostPrefix;->extraCallback:Lo/getHostPrefix$extraCallback;

    .line 1130
    sget-object v1, Lo/getHostPrefix$extraCallback;->onNavigationEvent:Lo/getHostPrefix$extraCallback;

    if-ne v0, v1, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    .line 1131
    iget-object v0, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->onMessageChannelReady:Lo/getInstallReferrer;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->ICustomTabsCallback:Lo/getInstallReferrer;

    .line 4189
    :goto_2
    iget-object v0, v0, Lo/getInstallReferrer;->extraCallback:Lo/setStrokeColor;

    invoke-interface {v0, v4}, Lo/setStrokeColor;->onMessageChannelReady(Lo/invalidateSpanInfo;)Z

    .line 1134
    iget-object v0, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/isReady;

    invoke-virtual {v0, v4}, Lo/isReady;->ICustomTabsCallback(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1136
    :cond_7
    iget-object v1, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->extraCallback:Lo/setPreinstallAttribution;

    invoke-interface {v1, v0}, Lo/setPreinstallAttribution;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "disk"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1138
    iget-object v0, p0, Lo/setCollectAndroidID$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/isReady;

    invoke-virtual {v0, v4}, Lo/isReady;->ICustomTabsCallback(Ljava/lang/Object;)Z

    .line 5020
    :cond_8
    :goto_3
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1141
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 4020
    :cond_9
    :goto_4
    :try_start_1
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1118
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1144
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1145
    throw p1
.end method
