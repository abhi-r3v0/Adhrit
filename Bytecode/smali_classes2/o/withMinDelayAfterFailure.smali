.class public final Lo/withMinDelayAfterFailure;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/closeIfNeverConnected;


# static fields
.field private static final extraCallback:Lo/withMinDelayAfterFailure;

.field private static volatile onMessageChannelReady:Lo/closeIfNeverConnected;

.field private static volatile onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lo/withMinDelayAfterFailure;

    invoke-direct {v0}, Lo/withMinDelayAfterFailure;-><init>()V

    sput-object v0, Lo/withMinDelayAfterFailure;->extraCallback:Lo/withMinDelayAfterFailure;

    .line 1019
    sget-object v0, Lo/withRetryExponent;->onNavigationEvent:Lo/withMaxDelay;

    .line 67
    sput-object v0, Lo/withMinDelayAfterFailure;->onMessageChannelReady:Lo/closeIfNeverConnected;

    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lo/withMinDelayAfterFailure;->onPostMessage:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()Lo/closeIfNeverConnected;
    .locals 1

    .line 85
    sget-object v0, Lo/withMinDelayAfterFailure;->extraCallback:Lo/withMinDelayAfterFailure;

    return-object v0
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    .line 98
    sget-boolean v0, Lo/withMinDelayAfterFailure;->onPostMessage:Z

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/retry;
    .locals 1

    .line 209
    sget-object v0, Lo/withMinDelayAfterFailure;->onMessageChannelReady:Lo/closeIfNeverConnected;

    invoke-interface {v0}, Lo/closeIfNeverConnected;->ICustomTabsCallback()Lo/retry;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 219
    sget-object v0, Lo/withMinDelayAfterFailure;->onMessageChannelReady:Lo/closeIfNeverConnected;

    invoke-interface {v0}, Lo/closeIfNeverConnected;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lo/withMinDelayAfterFailure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lo/withMinDelayAfterFailure;->onMessageChannelReady:Lo/closeIfNeverConnected;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
