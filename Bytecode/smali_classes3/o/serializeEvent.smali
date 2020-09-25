.class public final Lo/serializeEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field ICustomTabsCallback:Lo/performCreateApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/performCreateApp<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

.field extraCallback:I

.field onMessageChannelReady:Z

.field onNavigationEvent:I

.field onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lo/serializeEvent;->onNavigationEvent:I

    .line 99
    iput v0, p0, Lo/serializeEvent;->extraCallback:I

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 2

    .line 219
    iget-object v0, p0, Lo/serializeEvent;->asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    sget-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    move-object v0, v1

    :goto_0
    check-cast v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object v0

    .line 2061
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Both parameters are null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
    .locals 2

    .line 265
    iget-object v0, p0, Lo/serializeEvent;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    sget-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    move-object v0, v1

    :goto_0
    check-cast v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    return-object v0

    .line 3061
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Both parameters are null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent(Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;)Lo/serializeEvent;
    .locals 4

    .line 209
    iget-object v0, p0, Lo/serializeEvent;->asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lo/serializeEvent;->asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 210
    move-object v0, p1

    check-cast v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    iput-object v0, p0, Lo/serializeEvent;->asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    .line 211
    sget-object v0, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-eq p1, v0, :cond_1

    .line 213
    iput-boolean v2, p0, Lo/serializeEvent;->onMessageChannelReady:Z

    :cond_1
    return-object p0

    :cond_2
    const/4 p1, 0x0

    .line 1890
    throw p1

    .line 1592
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v1, "Key strength was already set to %s"

    invoke-static {v1, v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage()Ljava/util/concurrent/ConcurrentMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Lo/serializeEvent;->onMessageChannelReady:Z

    if-nez v0, :cond_2

    .line 281
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3154
    iget v1, p0, Lo/serializeEvent;->onNavigationEvent:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x10

    :cond_0
    const/high16 v3, 0x3f400000    # 0.75f

    .line 3188
    iget v4, p0, Lo/serializeEvent;->extraCallback:I

    if-ne v4, v2, :cond_1

    const/4 v4, 0x4

    .line 281
    :cond_1
    invoke-direct {v0, v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    .line 283
    :cond_2
    invoke-static {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback(Lo/serializeEvent;)Lo/CrashlyticsOriginAnalyticsEventLogger;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 4105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 293
    iget v1, p0, Lo/serializeEvent;->onNavigationEvent:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const-string v4, "initialCapacity"

    .line 294
    invoke-virtual {v0, v4, v1}, Lo/buildAppRequest$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;I)Lo/buildAppRequest$onPostMessage;

    .line 296
    :cond_0
    iget v1, p0, Lo/serializeEvent;->extraCallback:I

    if-eq v1, v3, :cond_1

    const-string v3, "concurrencyLevel"

    .line 297
    invoke-virtual {v0, v3, v1}, Lo/buildAppRequest$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;I)Lo/buildAppRequest$onPostMessage;

    .line 299
    :cond_1
    iget-object v1, p0, Lo/serializeEvent;->asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "keyStrength"

    invoke-virtual {v0, v3, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    .line 302
    :cond_2
    iget-object v1, p0, Lo/serializeEvent;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "valueStrength"

    invoke-virtual {v0, v3, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    .line 305
    :cond_3
    iget-object v1, p0, Lo/serializeEvent;->ICustomTabsCallback:Lo/performCreateApp;

    if-eqz v1, :cond_4

    .line 5361
    new-instance v1, Lo/buildAppRequest$onPostMessage$extraCallback;

    invoke-direct {v1, v2}, Lo/buildAppRequest$onPostMessage$extraCallback;-><init>(B)V

    .line 5362
    iget-object v2, v0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object v1, v2, Lo/buildAppRequest$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object v1, v0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    const-string v2, "keyEquivalence"

    .line 4368
    iput-object v2, v1, Lo/buildAppRequest$onPostMessage$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 308
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
