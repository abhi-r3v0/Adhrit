.class public final Lo/setDomain;
.super Lo/setNotificationConfig;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setNotificationConfig<",
        "Lo/setDomain;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback$Stub:[B

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field private ICustomTabsService:I

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:[I

.field private IPostMessageService:Lo/getDomain;

.field private IPostMessageService$Stub:Ljava/lang/String;

.field private IPostMessageService$Stub$Proxy:J

.field public asBinder:Z

.field private asInterface:J

.field private cancel:Lo/setUserProperties$mayLaunchUrl;

.field private extraCommand:Lo/Freshchat$2;

.field private getInterfaceDescriptor:Z

.field private mayLaunchUrl:Ljava/lang/String;

.field private newSession:[Lo/getAppId;

.field public onMessageChannelReady:J

.field public onNavigationEvent:I

.field public onPostMessage:J

.field public onRelationshipValidationResult:J

.field public onTransact:[B

.field private postMessage:Ljava/lang/String;

.field private requestPostMessageChannel:[B

.field private updateVisuals:Lo/setUserProperties$ICustomTabsCallback;

.field private validateRelationship:Ljava/lang/String;

.field private warmup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lo/setNotificationConfig;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/setDomain;->onPostMessage:J

    iput-wide v0, p0, Lo/setDomain;->onMessageChannelReady:J

    iput-wide v0, p0, Lo/setDomain;->asInterface:J

    const-string v2, ""

    iput-object v2, p0, Lo/setDomain;->warmup:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lo/setDomain;->onNavigationEvent:I

    iput-object v2, p0, Lo/setDomain;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput v3, p0, Lo/setDomain;->ICustomTabsService:I

    iput-boolean v3, p0, Lo/setDomain;->getInterfaceDescriptor:Z

    invoke-static {}, Lo/getAppId;->onMessageChannelReady()[Lo/getAppId;

    move-result-object v4

    iput-object v4, p0, Lo/setDomain;->newSession:[Lo/getAppId;

    sget-object v4, Lo/isFreshchatNotification;->onMessageChannelReady:[B

    iput-object v4, p0, Lo/setDomain;->requestPostMessageChannel:[B

    const/4 v4, 0x0

    iput-object v4, p0, Lo/setDomain;->updateVisuals:Lo/setUserProperties$ICustomTabsCallback;

    sget-object v5, Lo/isFreshchatNotification;->onMessageChannelReady:[B

    iput-object v5, p0, Lo/setDomain;->ICustomTabsCallback$Stub:[B

    iput-object v2, p0, Lo/setDomain;->postMessage:Ljava/lang/String;

    iput-object v2, p0, Lo/setDomain;->mayLaunchUrl:Ljava/lang/String;

    iput-object v4, p0, Lo/setDomain;->extraCommand:Lo/Freshchat$2;

    iput-object v2, p0, Lo/setDomain;->IPostMessageService$Stub:Ljava/lang/String;

    const-wide/32 v5, 0x2bf20

    iput-wide v5, p0, Lo/setDomain;->onRelationshipValidationResult:J

    iput-object v4, p0, Lo/setDomain;->IPostMessageService:Lo/getDomain;

    sget-object v5, Lo/isFreshchatNotification;->onMessageChannelReady:[B

    iput-object v5, p0, Lo/setDomain;->onTransact:[B

    iput-object v2, p0, Lo/setDomain;->validateRelationship:Ljava/lang/String;

    iput v3, p0, Lo/setDomain;->ICustomTabsService$Stub:I

    sget-object v2, Lo/isFreshchatNotification;->extraCallback:[I

    iput-object v2, p0, Lo/setDomain;->ICustomTabsService$Stub$Proxy:[I

    iput-wide v0, p0, Lo/setDomain;->IPostMessageService$Stub$Proxy:J

    iput-object v4, p0, Lo/setDomain;->cancel:Lo/setUserProperties$mayLaunchUrl;

    iput-boolean v3, p0, Lo/setDomain;->asBinder:Z

    iput-object v4, p0, Lo/setDomain;->extraCallback:Lo/restoreUser;

    const/4 v0, -0x1

    iput v0, p0, Lo/setDomain;->ICustomTabsCallback:I

    return-void
.end method

.method private final onMessageChannelReady()Lo/setDomain;
    .locals 4

    :try_start_0
    invoke-super {p0}, Lo/setNotificationConfig;->onPostMessage()Lo/setNotificationConfig;

    move-result-object v0

    check-cast v0, Lo/setDomain;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lo/setDomain;->newSession:[Lo/getAppId;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v1, v1

    new-array v1, v1, [Lo/getAppId;

    iput-object v1, v0, Lo/setDomain;->newSession:[Lo/getAppId;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo/setDomain;->newSession:[Lo/getAppId;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lo/setDomain;->newSession:[Lo/getAppId;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lo/setUserProperty;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getAppId;

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/setDomain;->updateVisuals:Lo/setUserProperties$ICustomTabsCallback;

    if-eqz v1, :cond_2

    iput-object v1, v0, Lo/setDomain;->updateVisuals:Lo/setUserProperties$ICustomTabsCallback;

    :cond_2
    iget-object v1, p0, Lo/setDomain;->extraCommand:Lo/Freshchat$2;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lo/setUserProperty;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Freshchat$2;

    iput-object v1, v0, Lo/setDomain;->extraCommand:Lo/Freshchat$2;

    :cond_3
    iget-object v1, p0, Lo/setDomain;->IPostMessageService:Lo/getDomain;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lo/setUserProperty;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getDomain;

    iput-object v1, v0, Lo/setDomain;->IPostMessageService:Lo/getDomain;

    :cond_4
    iget-object v1, p0, Lo/setDomain;->ICustomTabsService$Stub$Proxy:[I

    if-eqz v1, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lo/setDomain;->ICustomTabsService$Stub$Proxy:[I

    :cond_5
    iget-object v1, p0, Lo/setDomain;->cancel:Lo/setUserProperties$mayLaunchUrl;

    if-eqz v1, :cond_6

    iput-object v1, v0, Lo/setDomain;->cancel:Lo/setUserProperties$mayLaunchUrl;

    :cond_6
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Lo/setUserProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/setUserProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setDomain;

    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/setPushRegistrationToken;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lo/setDomain;->onPostMessage:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lo/setPushRegistrationToken;->extraCallback(IJ)V

    :cond_0
    iget-object v0, p0, Lo/setDomain;->warmup:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v4, p0, Lo/setDomain;->warmup:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lo/setPushRegistrationToken;->ICustomTabsCallback(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lo/setDomain;->newSession:[Lo/getAppId;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lo/setDomain;->newSession:[Lo/getAppId;

    array-length v6, v5

    if-ge v0, v6, :cond_3

    aget-object v5, v5, v0

    if-eqz v5, :cond_2

    const/4 v6, 0x3

    invoke-virtual {p1, v6, v5}, Lo/setPushRegistrationToken;->onNavigationEvent(ILo/setUserProperty;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lo/setDomain;->requestPostMessageChannel:[B

    sget-object v5, Lo/isFreshchatNotification;->onMessageChannelReady:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v5, p0, Lo/setDomain;->requestPostMessageChannel:[B

    invoke-virtual {p1, v0, v5}, Lo/setPushRegistrationToken;->onNavigationEvent(I[B)V

    :cond_4
    iget-object v0, p0, Lo/setDomain;->ICustomTabsCallback$Stub:[B

    sget-object v5, Lo/isFreshchatNotification;->onMessageChannelReady:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v5, p0, Lo/setDomain;->ICustomTabsCallback$Stub:[B

    invoke-virtual {p1, v0, v5}, Lo/setPushRegistrationToken;->onNavigationEvent(I[B)V

    :cond_5
    iget-object v0, p0, Lo/setDomain;->extraCommand:Lo/Freshchat$2;

    if-eqz v0, :cond_6

    const/4 v5, 0x7

    invoke-virtual {p1, v5, v0}, Lo/setPushRegistrationToken;->onNavigationEvent(ILo/setUserProperty;)V

    :cond_6
    iget-object v0, p0, Lo/setDomain;->postMessage:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v5, p0, Lo/setDomain;->postMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Lo/setPushRegistrationToken;->ICustomTabsCallback(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lo/setDomain;->updateVisuals:Lo/setUserProperties$ICustomTabsCallback;

    if-eqz v0, :cond_8

    const/16 v5, 0x9

    invoke-virtual {p1, v5, v0}, Lo/setPushRegistrationToken;->onPostMessage(ILo/NativeBlurFilter;)V

    :cond_8
    iget v0, p0, Lo/setDomain;->onNavigationEvent:I

    if-eqz v0, :cond_9

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v0}, Lo/setPushRegistrationToken;->ICustomTabsCallback(II)V

    :cond_9
    iget-object v0, p0, Lo/setDomain;->mayLaunchUrl:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xd

    iget-object v5, p0, Lo/setDomain;->mayLaunchUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Lo/setPushRegistrationToken;->ICustomTabsCallback(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lo/setDomain;->IPostMessageService$Stub:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xe

    iget-object v5, p0, Lo/setDomain;->IPostMessageService$Stub:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Lo/setPushRegistrationToken;->ICustomTabsCallback(ILjava/lang/String;)V

    :cond_b
    iget-wide v5, p0, Lo/setDomain;->onRelationshipValidationResult:J

    const-wide/32 v7, 0x2bf20

    cmp-long v0, v5, v7

    if-eqz v0, :cond_c

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v4}, Lo/setPushRegistrationToken;->onPostMessage(II)V

    invoke-static {v5, v6}, Lo/setPushRegistrationToken;->extraCallback(J)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lo/setPushRegistrationToken;->onMessageChannelReady(J)V

    :cond_c
    iget-object v0, p0, Lo/setDomain;->IPostMessageService:Lo/getDomain;

    if-eqz v0, :cond_d

    const/16 v5, 0x10

    invoke-virtual {p1, v5, v0}, Lo/setPushRegistrationToken;->onNavigationEvent(ILo/setUserProperty;)V

    :cond_d
    iget-wide v5, p0, Lo/setDomain;->onMessageChannelReady:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_e

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v5, v6}, Lo/setPushRegistrationToken;->extraCallback(IJ)V

    :cond_e
    iget-object v0, p0, Lo/setDomain;->onTransact:[B

    sget-object v2, Lo/isFreshchatNotification;->onMessageChannelReady:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x12

    iget-object v2, p0, Lo/setDomain;->onTransact:[B

    invoke-virtual {p1, v0, v2}, Lo/setPushRegistrationToken;->onNavigationEvent(I[B)V

    :cond_f
    iget-object v0, p0, Lo/setDomain;->ICustomTabsService$Stub$Proxy:[I

    if-eqz v0, :cond_10

    array-length v0, v0

    if-lez v0, :cond_10

    :goto_1
    iget-object v0, p0, Lo/setDomain;->ICustomTabsService$Stub$Proxy:[I

    array-length v2, v0

    if-ge v4, v2, :cond_10

    const/16 v2, 0x14

    aget v0, v0, v4

    invoke-virtual {p1, v2, v0}, Lo/setPushRegistrationToken;->ICustomTabsCallback(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_10
    iget-object v0, p0, Lo/setDomain;->cancel:Lo/setUserProperties$mayLaunchUrl;

    if-eqz v0, :cond_11

    const/16 v2, 0x17

    invoke-virtual {p1, v2, v0}, Lo/setPushRegistrationToken;->onPostMessage(ILo/NativeBlurFilter;)V

    :cond_11
    iget-object v0, p0, Lo/setDomain;->validateRelationship:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x18

    iget-object v2, p0, Lo/setDomain;->validateRelationship:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lo/setPushRegistrationToken;->ICustomTabsCallback(ILjava/lang/String;)V

    :cond_12
    iget-boolean v0, p0, Lo/setDomain;->asBinder:Z

    if-eqz v0, :cond_13

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v0}, Lo/setPushRegistrationToken;->onPostMessage(IZ)V

    :cond_13
    iget-object v0, p0, Lo/setDomain;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x1a

    iget-object v1, p0, Lo/setDomain;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lo/setPushRegistrationToken;->ICustomTabsCallback(ILjava/lang/String;)V

    :cond_14
    invoke-super {p0, p1}, Lo/setNotificationConfig;->ICustomTabsCallback(Lo/setPushRegistrationToken;)V

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lo/setDomain;->onMessageChannelReady()Lo/setDomain;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo/setDomain;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo/setDomain;

    iget-wide v3, p0, Lo/setDomain;->onPostMessage:J

    iget-wide v5, p1, Lo/setDomain;->onPostMessage:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lo/setDomain;->onMessageChannelReady:J

    iget-wide v5, p1, Lo/setDomain;->onMessageChannelReady:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lo/setDomain;->warmup:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lo/setDomain;->warmup:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v3, p1, Lo/setDomain;->warmup:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lo/setDomain;->onNavigationEvent:I

    iget v3, p1, Lo/setDomain;->onNavigationEvent:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lo/setDomain;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lo/setDomain;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v1, :cond_8

    return v2

    :cond_7
    iget-object v3, p1, Lo/setDomain;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lo/setDomain;->newSession:[Lo/getAppId;

    iget-object v3, p1, Lo/setDomain;->newSession:[Lo/getAppId;

    invoke-static {v1, v3}, Lo/getUser;->onMessageChannelReady([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lo/setDomain;->requestPostMessageChannel:[B

    iget-object v3, p1, Lo/setDomain;->requestPostMessageChannel:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lo/setDomain;->updateVisuals:Lo/setUserProperties$ICustomTabsCallback;

    if-nez v1, :cond_b

    iget-object v1, p1, Lo/setDomain;->updateVisuals:Lo/setUserProperties$ICustomTabsCallback;

    if-eqz v1, :cond_c

    return v2

    :cond_b
    iget-object v3, p1, Lo/setDomain;->updateVisuals:Lo/setUserProperties$ICustomTabsCallback;

    invoke-virtual {v1, v3}, Lo/RealtimeSinceBootClock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lo/setDomain;->ICustomTabsCallback$Stub:[B

    iget-object v3, p1, Lo/setDomain;->ICustomTabsCallback$Stub:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lo/setDomain;->postMessage:Ljava/lang/String;

    if-nez v1, :cond_e

    iget-object v1, p1, Lo/setDomain;->postMessage:Ljava/lang/String;

    if-eqz v1, :cond_f

    return v2

    :cond_e
    iget-object v3, p1, Lo/setDomain;->postMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lo/setDomain;->mayLaunchUrl:Ljava/lang/String;

    if-nez v1, :cond_10

    iget-object v1, p1, Lo/setDomain;->mayLaunchUrl:Ljava/lang/String;

    if-eqz v1, :cond_11

    return v2

    :cond_10
    iget-object v3, p1, Lo/setDomain;->mayLaunchUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lo/setDomain;->extraCommand:Lo/Freshchat$2;

    if-nez v1, :cond_12

    iget-object v1, p1, Lo/setDomain;->extraCommand:Lo/Freshchat$2;

    if-eqz v1, :cond_13

    return v2

    :cond_12
    iget-object v3, p1, Lo/setDomain;->extraCommand:Lo/Freshchat$2;

    invoke-virtual {v1, v3}, Lo/Freshchat$2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lo/setDomain;->IPostMessageService$Stub:Ljava/lang/String;

    if-nez v1, :cond_14

    iget-object v1, p1, Lo/setDomain;->IPostMessageService$Stub:Ljava/lang/String;

    if-eqz v1, :cond_15

    return v2

    :cond_14
    iget-object v3, p1, Lo/setDomain;->IPostMessageService$Stub:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lo/setDomain;->onRelationshipValidationResult:J

    iget-wide v5, p1, Lo/setDomain;->onRelationshipValidationResult:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lo/setDomain;->IPostMessageService:Lo/getDomain;

    if-nez v1, :cond_17

    iget-object v1, p1, Lo/setDomain;->IPostMessageService:Lo/getDomain;

    if-eqz v1, :cond_18

    return v2

    :cond_17
    iget-object v3, p1, Lo/setDomain;->IPostMessageService:Lo/getDomain;

    invoke-virtual {v1, v3}, Lo/getDomain;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lo/setDomain;->onTransact:[B

    iget-object v3, p1, Lo/setDomain;->onTransact:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lo/setDomain;->validateRelationship:Ljava/lang/String;

    if-nez v1, :cond_1a

    iget-object v1, p1, Lo/setDomain;->validateRelationship:Ljava/lang/String;

    if-eqz v1, :cond_1b

    return v2

    :cond_1a
    iget-object v3, p1, Lo/setDomain;->validateRelationship:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lo/setDomain;->ICustomTabsService$Stub$Proxy:[I

    iget-object v3, p1, Lo/setDomain;->ICustomTabsService$Stub$Proxy:[I

    invoke-static {v1, v3}, Lo/getUser;->ICustomTabsCallback([I[I)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lo/setDomain;->cancel:Lo/setUserProperties$mayLaunchUrl;

    if-nez v1, :cond_1d

    iget-object v1, p1, Lo/setDomain;->cancel:Lo/setUserProperties$mayLaunchUrl;

    if-eqz v1, :cond_1e

    return v2

    :cond_1d
    iget-object v3, p1, Lo/setDomain;->cancel:Lo/setUserProperties$mayLaunchUrl;

    invoke-virtual {v1, v3}, Lo/RealtimeSinceBootClock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lo/setDomain;->asBinder:Z

    iget-boolean v3, p1, Lo/setDomain;->asBinder:Z

    if-eq v1, v3, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lo/setDomain;->extraCallback:Lo/restoreUser;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lo/setDomain;->extraCallback:Lo/restoreUser;

    invoke-virtual {v1}, Lo/restoreUser;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_0

    :cond_20
    iget-object v0, p0, Lo/setDomain;->extraCallback:Lo/restoreUser;

    iget-object p1, p1, Lo/setDomain;->extraCallback:Lo/restoreUser;

    invoke-virtual {v0, p1}, Lo/restoreUser;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    :goto_0
    iget-object v1, p1, Lo/setDomain;->extraCallback:Lo/restoreUser;

    if-eqz v1, :cond_23

    iget-object p1, p1, Lo/setDomain;->extraCallback:Lo/restoreUser;

    invoke-virtual {p1}, Lo/restoreUser;->onNavigationEvent()Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_1

    :cond_22
    return v2

    :cond_23
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lo/setDomain;->onPostMessage:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lo/setDomain;->onMessageChannelReady:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/setDomain;->warmup:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/setDomain;->onNavigationEvent:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/setDomain;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x4d5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lo/setDomain;->newSession:[Lo/getAppId;

    invoke-static {v4}, Lo/getUser;->ICustomTabsCallback([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lo/setDomain;->requestPostMessageChannel:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lo/setDomain;->updateVisuals:Lo/setUserProperties$ICustomTabsCallback;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lo/RealtimeSinceBootClock;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lo/setDomain;->ICustomTabsCallback$Stub:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lo/setDomain;->postMessage:Ljava/lang/String;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lo/setDomain;->mayLaunchUrl:Ljava/lang/String;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_4
    add-int/2addr v0, v4

    iget-object v4, p0, Lo/setDomain;->extraCommand:Lo/Freshchat$2;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Lo/Freshchat$2;->hashCode()I

    move-result v4

    :goto_5
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lo/setDomain;->IPostMessageService$Stub:Ljava/lang/String;

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_6
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lo/setDomain;->onRelationshipValidationResult:J

    ushr-long v6, v4, v3

    xor-long v3, v4, v6

    long-to-int v4, v3

    add-int/2addr v0, v4

    iget-object v3, p0, Lo/setDomain;->IPostMessageService:Lo/getDomain;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Lo/getDomain;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lo/setDomain;->onTransact:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lo/setDomain;->validateRelationship:Ljava/lang/String;

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lo/setDomain;->ICustomTabsService$Stub$Proxy:[I

    invoke-static {v3}, Lo/getUser;->ICustomTabsCallback([I)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lo/setDomain;->cancel:Lo/setUserProperties$mayLaunchUrl;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v3, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Lo/RealtimeSinceBootClock;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lo/setDomain;->asBinder:Z

    if-eqz v3, :cond_a

    const/16 v1, 0x4cf

    :cond_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/setDomain;->extraCallback:Lo/restoreUser;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lo/setDomain;->extraCallback:Lo/restoreUser;

    invoke-virtual {v1}, Lo/restoreUser;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    iget-object v1, p0, Lo/setDomain;->extraCallback:Lo/restoreUser;

    invoke-virtual {v1}, Lo/restoreUser;->hashCode()I

    move-result v2

    :cond_c
    :goto_a
    add-int/2addr v0, v2

    return v0
.end method

.method protected final onNavigationEvent()I
    .locals 12

    invoke-super {p0}, Lo/setNotificationConfig;->onNavigationEvent()I

    move-result v0

    iget-wide v1, p0, Lo/setDomain;->onPostMessage:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    invoke-static {v5, v1, v2}, Lo/setPushRegistrationToken;->ICustomTabsCallback(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lo/setDomain;->warmup:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v6, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/setDomain;->warmup:Ljava/lang/String;

    invoke-static {v2, v1}, Lo/setPushRegistrationToken;->onNavigationEvent(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lo/setDomain;->newSession:[Lo/getAppId;

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v8, p0, Lo/setDomain;->newSession:[Lo/getAppId;

    array-length v9, v8

    if-ge v1, v9, :cond_3

    aget-object v8, v8, v1

    if-eqz v8, :cond_2

    const/4 v9, 0x3

    invoke-static {v9, v8}, Lo/setPushRegistrationToken;->ICustomTabsCallback(ILo/setUserProperty;)I

    move-result v8

    add-int/2addr v0, v8

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lo/setDomain;->requestPostMessageChannel:[B

    sget-object v8, Lo/isFreshchatNotification;->onMessageChannelReady:[B

    invoke-static {v1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    iget-object v8, p0, Lo/setDomain;->requestPostMessageChannel:[B

    invoke-static {v1, v8}, Lo/setPushRegistrationToken;->ICustomTabsCallback(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lo/setDomain;->ICustomTabsCallback$Stub:[B

    sget-object v8, Lo/isFreshchatNotification;->onMessageChannelReady:[B

    invoke-static {v1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    iget-object v8, p0, Lo/setDomain;->ICustomTabsCallback$Stub:[B

    invoke-static {v1, v8}, Lo/setPushRegistrationToken;->ICustomTabsCallback(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lo/setDomain;->extraCommand:Lo/Freshchat$2;

    if-eqz v1, :cond_6

    const/4 v8, 0x7

    invoke-static {v8, v1}, Lo/setPushRegistrationToken;->ICustomTabsCallback(ILo/setUserProperty;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lo/setDomain;->postMessage:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    iget-object v8, p0, Lo/setDomain;->postMessage:Ljava/lang/String;

    invoke-static {v1, v8}, Lo/setPushRegistrationToken;->onNavigationEvent(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lo/setDomain;->updateVisuals:Lo/setUserProperties$ICustomTabsCallback;

    if-eqz v1, :cond_8

    const/16 v8, 0x9

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/clearcut/zzbn;->extraCallback(ILo/NativeBlurFilter;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lo/setDomain;->onNavigationEvent:I

    if-eqz v1, :cond_9

    const/16 v8, 0xb

    invoke-static {v8}, Lo/setPushRegistrationToken;->onPostMessage(I)I

    move-result v8

    invoke-static {v1}, Lo/setPushRegistrationToken;->onMessageChannelReady(I)I

    move-result v1

    add-int/2addr v8, v1

    add-int/2addr v0, v8

    :cond_9
    iget-object v1, p0, Lo/setDomain;->mayLaunchUrl:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xd

    iget-object v8, p0, Lo/setDomain;->mayLaunchUrl:Ljava/lang/String;

    invoke-static {v1, v8}, Lo/setPushRegistrationToken;->onNavigationEvent(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lo/setDomain;->IPostMessageService$Stub:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xe

    iget-object v8, p0, Lo/setDomain;->IPostMessageService$Stub:Ljava/lang/String;

    invoke-static {v1, v8}, Lo/setPushRegistrationToken;->onNavigationEvent(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-wide v8, p0, Lo/setDomain;->onRelationshipValidationResult:J

    const-wide/32 v10, 0x2bf20

    cmp-long v1, v8, v10

    if-eqz v1, :cond_c

    const/16 v1, 0xf

    invoke-static {v1}, Lo/setPushRegistrationToken;->onPostMessage(I)I

    move-result v1

    invoke-static {v8, v9}, Lo/setPushRegistrationToken;->extraCallback(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lo/setPushRegistrationToken;->ICustomTabsCallback(J)I

    move-result v8

    add-int/2addr v1, v8

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lo/setDomain;->IPostMessageService:Lo/getDomain;

    if-eqz v1, :cond_d

    const/16 v8, 0x10

    invoke-static {v8, v1}, Lo/setPushRegistrationToken;->ICustomTabsCallback(ILo/setUserProperty;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-wide v8, p0, Lo/setDomain;->onMessageChannelReady:J

    cmp-long v1, v8, v3

    if-eqz v1, :cond_e

    const/16 v1, 0x11

    invoke-static {v1, v8, v9}, Lo/setPushRegistrationToken;->ICustomTabsCallback(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lo/setDomain;->onTransact:[B

    sget-object v3, Lo/isFreshchatNotification;->onMessageChannelReady:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0x12

    iget-object v3, p0, Lo/setDomain;->onTransact:[B

    invoke-static {v1, v3}, Lo/setPushRegistrationToken;->ICustomTabsCallback(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lo/setDomain;->ICustomTabsService$Stub$Proxy:[I

    if-eqz v1, :cond_11

    array-length v1, v1

    if-lez v1, :cond_11

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lo/setDomain;->ICustomTabsService$Stub$Proxy:[I

    array-length v4, v3

    if-ge v7, v4, :cond_10

    aget v3, v3, v7

    invoke-static {v3}, Lo/setPushRegistrationToken;->onMessageChannelReady(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_10
    add-int/2addr v0, v1

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lo/setDomain;->cancel:Lo/setUserProperties$mayLaunchUrl;

    if-eqz v1, :cond_12

    const/16 v2, 0x17

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/zzbn;->extraCallback(ILo/NativeBlurFilter;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lo/setDomain;->validateRelationship:Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0x18

    iget-object v2, p0, Lo/setDomain;->validateRelationship:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/setPushRegistrationToken;->onNavigationEvent(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-boolean v1, p0, Lo/setDomain;->asBinder:Z

    if-eqz v1, :cond_14

    const/16 v1, 0x19

    invoke-static {v1}, Lo/setPushRegistrationToken;->onPostMessage(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lo/setDomain;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0x1a

    iget-object v2, p0, Lo/setDomain;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/setPushRegistrationToken;->onNavigationEvent(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    return v0
.end method

.method public final synthetic onPostMessage()Lo/setNotificationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/setUserProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setDomain;

    return-object v0
.end method
