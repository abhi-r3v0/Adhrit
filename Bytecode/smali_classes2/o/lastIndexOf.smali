.class public final Lo/lastIndexOf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/lastIndexOf$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static logLevel:Lo/lastIndexOf$onMessageChannelReady;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Ljava/util/concurrent/ScheduledExecutorService;

.field private final arg$3:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final arg$4:Lo/parseEventSignal;

.field private final arg$5:Lo/parseDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lo/lastIndexOf$onMessageChannelReady;->WARN:Lo/lastIndexOf$onMessageChannelReady;

    sput-object v0, Lo/lastIndexOf;->logLevel:Lo/lastIndexOf$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lo/parseEventSignal;Lo/parseDevice;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lastIndexOf;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lo/lastIndexOf;->arg$2:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lo/lastIndexOf;->arg$3:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p4, p0, Lo/lastIndexOf;->arg$4:Lo/parseEventSignal;

    iput-object p5, p0, Lo/lastIndexOf;->arg$5:Lo/parseDevice;

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 63
    sget-object v0, Lo/lastIndexOf$onMessageChannelReady;->DEBUG:Lo/lastIndexOf$onMessageChannelReady;

    invoke-static {v0, p0, p1, p2}, Lo/lastIndexOf;->doLog(Lo/lastIndexOf$onMessageChannelReady;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs doLog(Lo/lastIndexOf$onMessageChannelReady;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 41
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lo/lastIndexOf;->logLevel:Lo/lastIndexOf$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "21.6.0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "(%s) [%s]: "

    .line 43
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    sget-object p2, Lo/getIconUri$extraCallback;->$SwitchMap$com$google$firebase$firestore$util$Logger$Level:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const-string p2, "Firestore"

    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to log something on level NONE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_1
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 47
    :cond_2
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 2

    .line 37
    sget-object v0, Lo/lastIndexOf;->logLevel:Lo/lastIndexOf$onMessageChannelReady;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lo/lastIndexOf$onMessageChannelReady;->DEBUG:Lo/lastIndexOf$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setLogLevel(Lo/lastIndexOf$onMessageChannelReady;)V
    .locals 0

    .line 32
    sput-object p0, Lo/lastIndexOf;->logLevel:Lo/lastIndexOf$onMessageChannelReady;

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 59
    sget-object v0, Lo/lastIndexOf$onMessageChannelReady;->WARN:Lo/lastIndexOf$onMessageChannelReady;

    invoke-static {v0, p0, p1, p2}, Lo/lastIndexOf;->doLog(Lo/lastIndexOf$onMessageChannelReady;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 2000
    iget-object v0, p0, Lo/lastIndexOf;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lo/lastIndexOf;->arg$2:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lo/lastIndexOf;->arg$3:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v3, p0, Lo/lastIndexOf;->arg$4:Lo/parseEventSignal;

    iget-object v4, p0, Lo/lastIndexOf;->arg$5:Lo/parseDevice;

    invoke-static {v0, v1, v2, v3, v4}, Lo/getOrCreateBodyBuilder;->lambda$createInstance$0$TopicsSubscriber(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lo/parseEventSignal;Lo/parseDevice;)Lo/getOrCreateBodyBuilder;

    move-result-object v0

    return-object v0
.end method
