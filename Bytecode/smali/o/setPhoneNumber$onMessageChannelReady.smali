.class final Lo/setPhoneNumber$onMessageChannelReady;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
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

.field private final extraCallback:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/getInstallReferrer;

.field private final onPostMessage:Lo/setPreinstallAttribution;

.field private final onRelationshipValidationResult:Lo/endConnection;

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
.method public constructor <init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;Lo/getReferrerClickTimestampSeconds;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/isReady;Lo/isReady;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/setPreinstallAttribution;",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
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

    .line 110
    invoke-direct {p0, p1}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    .line 111
    iput-object p2, p0, Lo/setPhoneNumber$onMessageChannelReady;->onPostMessage:Lo/setPreinstallAttribution;

    .line 112
    iput-object p3, p0, Lo/setPhoneNumber$onMessageChannelReady;->extraCallback:Lo/getReferrerClickTimestampSeconds;

    .line 113
    iput-object p4, p0, Lo/setPhoneNumber$onMessageChannelReady;->ICustomTabsCallback:Lo/getInstallReferrer;

    .line 114
    iput-object p5, p0, Lo/setPhoneNumber$onMessageChannelReady;->onMessageChannelReady:Lo/getInstallReferrer;

    .line 115
    iput-object p6, p0, Lo/setPhoneNumber$onMessageChannelReady;->onRelationshipValidationResult:Lo/endConnection;

    .line 116
    iput-object p7, p0, Lo/setPhoneNumber$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/isReady;

    .line 117
    iput-object p8, p0, Lo/setPhoneNumber$onMessageChannelReady;->onTransact:Lo/isReady;

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 3

    .line 89
    check-cast p1, Lo/getRootAlpha;

    .line 1123
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    .line 1133
    :cond_2
    iget-object v0, p0, Lo/setPhoneNumber$onMessageChannelReady;->onPostMessage:Lo/setPreinstallAttribution;

    invoke-interface {v0}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 1134
    iget-object v1, p0, Lo/setPhoneNumber$onMessageChannelReady;->onRelationshipValidationResult:Lo/endConnection;

    iget-object v2, p0, Lo/setPhoneNumber$onMessageChannelReady;->onPostMessage:Lo/setPreinstallAttribution;

    .line 1135
    invoke-interface {v2}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    invoke-interface {v1, v0}, Lo/endConnection;->onPostMessage(Lo/getHostPrefix;)Lo/invalidateSpanInfo;

    .line 1136
    iget-object v0, p0, Lo/setPhoneNumber$onMessageChannelReady;->onPostMessage:Lo/setPreinstallAttribution;

    const-string v1, "origin"

    invoke-interface {v0, v1}, Lo/setPreinstallAttribution;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "memory_bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1137
    iget-object v0, p0, Lo/setPhoneNumber$onMessageChannelReady;->onPostMessage:Lo/setPreinstallAttribution;

    .line 1138
    invoke-interface {v0}, Lo/setPreinstallAttribution;->ICustomTabsCallback$Stub()Lo/context;

    .line 1145
    iget-object v0, p0, Lo/setPhoneNumber$onMessageChannelReady;->onPostMessage:Lo/setPreinstallAttribution;

    invoke-interface {v0}, Lo/setPreinstallAttribution;->ICustomTabsCallback$Stub()Lo/context;

    .line 8020
    :cond_3
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1156
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 4020
    :cond_4
    :goto_1
    :try_start_1
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1129
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1159
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1160
    throw p1
.end method
