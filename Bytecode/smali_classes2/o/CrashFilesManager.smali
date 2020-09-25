.class public Lo/CrashFilesManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSingleFileWithExtension;
.implements Lo/getSessionFileDirectory;
.implements Lo/FirebaseCrashlyticsNdk$asBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashFilesManager$ICustomTabsCallback;,
        Lo/CrashFilesManager$onPostMessage;,
        Lo/CrashFilesManager$onMessageChannelReady;,
        Lo/CrashFilesManager$ICustomTabsCallback$Stub;,
        Lo/CrashFilesManager$onNavigationEvent;,
        Lo/CrashFilesManager$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/ResourceUnityVersionProvider;

.field private final ICustomTabsCallback$Stub:Lo/UpdateAppSpiCall;

.field private final asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/SettingsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/UnityVersionProvider;

.field private final onMessageChannelReady:Lo/SessionSettingsData;

.field private final onNavigationEvent:Lo/Settings;

.field private final onPostMessage:Landroid/content/Context;

.field private final onRelationshipValidationResult:F

.field private final onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/Settings;Lo/UpdateAppSpiCall;)V
    .locals 7

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lo/SessionSettingsData;->ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object v0

    iput-object v0, p0, Lo/CrashFilesManager;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 66
    iput-object p1, p0, Lo/CrashFilesManager;->onPostMessage:Landroid/content/Context;

    .line 67
    new-instance v0, Lo/ResourceUnityVersionProvider;

    invoke-direct {v0}, Lo/ResourceUnityVersionProvider;-><init>()V

    iput-object v0, p0, Lo/CrashFilesManager;->ICustomTabsCallback:Lo/ResourceUnityVersionProvider;

    .line 68
    iput-object p4, p0, Lo/CrashFilesManager;->ICustomTabsCallback$Stub:Lo/UpdateAppSpiCall;

    .line 2267
    iget-object p4, p3, Lo/Settings;->asBinder:Ljava/util/Map;

    .line 69
    iput-object p4, p0, Lo/CrashFilesManager;->asBinder:Ljava/util/Map;

    .line 70
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p4, p0, Lo/CrashFilesManager;->onRelationshipValidationResult:F

    .line 71
    new-instance p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p4}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p4

    iput-object p4, p0, Lo/CrashFilesManager;->asInterface:Ljava/util/Set;

    .line 73
    new-instance p4, Landroid/os/HandlerThread;

    const-class v0, Lo/CrashFilesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 74
    invoke-virtual {p4, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 75
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    .line 76
    new-instance v0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lo/CrashFilesManager$ICustomTabsCallback$Stub;-><init>(Lo/CrashFilesManager;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Lo/FirebaseCrashlyticsNdk$asBinder;)V

    iput-object v0, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    .line 78
    new-instance p2, Lo/UnityVersionProvider;

    iget-object p4, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    invoke-direct {p2, p3, p4}, Lo/UnityVersionProvider;-><init>(Lo/Settings;Landroid/os/Handler;)V

    iput-object p2, p0, Lo/CrashFilesManager;->extraCallback:Lo/UnityVersionProvider;

    .line 79
    iput-object p3, p0, Lo/CrashFilesManager;->onNavigationEvent:Lo/Settings;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 82
    new-instance p2, Lo/CrashFilesManager$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/CrashFilesManager$onNavigationEvent;-><init>(Lo/CrashFilesManager;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 84
    iget-object p1, p0, Lo/CrashFilesManager;->ICustomTabsCallback$Stub:Lo/UpdateAppSpiCall;

    new-instance p2, Lo/CrashFilesManager$3;

    invoke-direct {p2, p0}, Lo/CrashFilesManager$3;-><init>(Lo/CrashFilesManager;)V

    invoke-virtual {p1, p2}, Lo/UpdateAppSpiCall;->onPostMessage(Lo/UpdateAppSpiCall$onNavigationEvent;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/CrashFilesManager;)Lo/Settings;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/CrashFilesManager;->onNavigationEvent:Lo/Settings;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/CrashFilesManager;)Ljava/util/Set;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/CrashFilesManager;->asInterface:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic asBinder(Lo/CrashFilesManager;)Ljava/util/Map;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/CrashFilesManager;->asBinder:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic asInterface(Lo/CrashFilesManager;)F
    .locals 0

    .line 61
    iget p0, p0, Lo/CrashFilesManager;->onRelationshipValidationResult:F

    return p0
.end method

.method static synthetic extraCallback(Lo/CrashFilesManager;)Lo/SessionSettingsData;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/CrashFilesManager;->onMessageChannelReady:Lo/SessionSettingsData;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/CrashFilesManager;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/CrashFilesManager;->onPostMessage:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/CrashFilesManager;)Lo/ResourceUnityVersionProvider;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/CrashFilesManager;->ICustomTabsCallback:Lo/ResourceUnityVersionProvider;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    return-object p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/CrashFilesManager;)Lo/UnityVersionProvider;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/CrashFilesManager;->extraCallback:Lo/UnityVersionProvider;

    return-object p0
.end method

.method static synthetic onTransact(Lo/CrashFilesManager;)Lo/UpdateAppSpiCall;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/CrashFilesManager;->ICustomTabsCallback$Stub:Lo/UpdateAppSpiCall;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 101
    iget-object v0, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final extraCallback(Lorg/json/JSONArray;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 108
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object p1, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 153
    iput v1, v0, Landroid/os/Message;->what:I

    .line 154
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    iget-object p1, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onMessageChannelReady(Lo/SettingsRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lo/CrashFilesManager;->asInterface:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Lo/FirebaseCrashlyticsNdk$onNavigationEvent;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc

    .line 162
    iput v1, v0, Landroid/os/Message;->what:I

    .line 163
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    iget-object p1, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onNavigationEvent(Lorg/json/JSONArray;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 131
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    iget-object p1, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 95
    iget-object v0, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    .line 2319
    iget-object v0, v0, Lo/CrashFilesManager$ICustomTabsCallback$Stub;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3101
    iget-object v0, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onPostMessage(Lorg/json/JSONArray;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 122
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    iget-object p1, p0, Lo/CrashFilesManager;->onTransact:Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
