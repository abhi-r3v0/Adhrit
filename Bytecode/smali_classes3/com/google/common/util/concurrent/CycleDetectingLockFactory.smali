.class public Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$onNavigationEvent;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$extraCallback;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 272
    new-instance v0, Lo/serializeEvent;

    invoke-direct {v0}, Lo/serializeEvent;-><init>()V

    .line 1205
    sget-object v1, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    invoke-virtual {v0, v1}, Lo/serializeEvent;->onNavigationEvent(Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;)Lo/serializeEvent;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lo/serializeEvent;->onPostMessage()Ljava/util/concurrent/ConcurrentMap;

    .line 445
    const-class v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method
