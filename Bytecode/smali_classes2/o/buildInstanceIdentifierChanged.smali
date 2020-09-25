.class public final Lo/buildInstanceIdentifierChanged;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/buildInstanceIdentifierChanged$onTransact;,
        Lo/buildInstanceIdentifierChanged$onMessageChannelReady;,
        Lo/buildInstanceIdentifierChanged$ICustomTabsCallback$Stub;,
        Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;,
        Lo/buildInstanceIdentifierChanged$extraCallback;,
        Lo/buildInstanceIdentifierChanged$asInterface;,
        Lo/buildInstanceIdentifierChanged$onNavigationEvent;,
        Lo/buildInstanceIdentifierChanged$onRelationshipValidationResult;,
        Lo/buildInstanceIdentifierChanged$onPostMessage;
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lo/buildInstanceIdentifierChanged;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extraCallback:Lo/buildInstanceIdentifierChanged$onTransact;

.field protected final onMessageChannelReady:Landroid/content/Context;

.field protected final onPostMessage:Lo/SessionSettingsData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 800
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/buildInstanceIdentifierChanged;->onNavigationEvent:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lo/buildInstanceIdentifierChanged;->onMessageChannelReady:Landroid/content/Context;

    .line 1171
    invoke-static {p1}, Lo/SessionSettingsData;->ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lo/buildInstanceIdentifierChanged;->onPostMessage:Lo/SessionSettingsData;

    .line 2052
    new-instance p1, Lo/buildInstanceIdentifierChanged$onTransact;

    invoke-direct {p1, p0}, Lo/buildInstanceIdentifierChanged$onTransact;-><init>(Lo/buildInstanceIdentifierChanged;)V

    .line 47
    iput-object p1, p0, Lo/buildInstanceIdentifierChanged;->extraCallback:Lo/buildInstanceIdentifierChanged$onTransact;

    .line 2175
    new-instance p1, Lo/isRepeatingSequence;

    invoke-direct {p1}, Lo/isRepeatingSequence;-><init>()V

    .line 48
    invoke-interface {p1}, Lcom/mixpanel/android/util/RemoteService;->onMessageChannelReady()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Ljava/lang/String;)V
    .locals 3

    .line 3335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Thread "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MixpanelAPI.Messages"

    invoke-static {v0, p0}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 3339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Thread "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MixpanelAPI.Messages"

    invoke-static {v0, p0, p1}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected static onMessageChannelReady(Landroid/content/Context;)Lo/getSessionData;
    .locals 0

    .line 167
    invoke-static {p0}, Lo/getSessionData;->ICustomTabsCallback(Landroid/content/Context;)Lo/getSessionData;

    move-result-object p0

    return-object p0
.end method

.method protected static onNavigationEvent()Lcom/mixpanel/android/util/RemoteService;
    .locals 1

    .line 175
    new-instance v0, Lo/isRepeatingSequence;

    invoke-direct {v0}, Lo/isRepeatingSequence;-><init>()V

    return-object v0
.end method

.method public static onPostMessage(Landroid/content/Context;)Lo/buildInstanceIdentifierChanged;
    .locals 3

    .line 63
    sget-object v0, Lo/buildInstanceIdentifierChanged;->onNavigationEvent:Ljava/util/Map;

    monitor-enter v0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 66
    sget-object v1, Lo/buildInstanceIdentifierChanged;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lo/buildInstanceIdentifierChanged;

    invoke-direct {v1, p0}, Lo/buildInstanceIdentifierChanged;-><init>(Landroid/content/Context;)V

    .line 68
    sget-object v2, Lo/buildInstanceIdentifierChanged;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_0
    sget-object v1, Lo/buildInstanceIdentifierChanged;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lo/buildInstanceIdentifierChanged;

    .line 72
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/buildInstanceIdentifierChanged$onPostMessage;)V
    .locals 2

    .line 77
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 78
    iput v1, v0, Landroid/os/Message;->what:I

    .line 79
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged;->extraCallback:Lo/buildInstanceIdentifierChanged$onTransact;

    invoke-virtual {p1, v0}, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback(Landroid/os/Message;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/buildInstanceIdentifierChanged$extraCallback;)V
    .locals 2

    .line 120
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 121
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2326
    iget-object v1, p1, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 122
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3274
    iget-boolean p1, p1, Lo/buildInstanceIdentifierChanged$extraCallback;->onMessageChannelReady:Z

    .line 123
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 125
    iget-object p1, p0, Lo/buildInstanceIdentifierChanged;->extraCallback:Lo/buildInstanceIdentifierChanged$onTransact;

    invoke-virtual {p1, v0}, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback(Landroid/os/Message;)V

    return-void
.end method
