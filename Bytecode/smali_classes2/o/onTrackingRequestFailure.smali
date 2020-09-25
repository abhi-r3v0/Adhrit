.class public final Lo/onTrackingRequestFailure;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doWriteToLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onTrackingRequestFailure$ICustomTabsCallback$Stub;,
        Lo/onTrackingRequestFailure$extraCallback;,
        Lo/onTrackingRequestFailure$onNavigationEvent;,
        Lo/onTrackingRequestFailure$onMessageChannelReady;,
        Lo/onTrackingRequestFailure$onPostMessage;,
        Lo/onTrackingRequestFailure$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/doWriteToLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/onTrackingRequestFailure;

    invoke-direct {v0}, Lo/onTrackingRequestFailure;-><init>()V

    sput-object v0, Lo/onTrackingRequestFailure;->extraCallback:Lo/doWriteToLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lo/openLogFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/openLogFile<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lo/onTrackingRequestFailure$ICustomTabsCallback;->onMessageChannelReady:Lo/onTrackingRequestFailure$ICustomTabsCallback;

    const-class v1, Lo/CreateOneLinkHttpTask;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 2
    sget-object v0, Lo/onTrackingRequestFailure$ICustomTabsCallback;->onMessageChannelReady:Lo/onTrackingRequestFailure$ICustomTabsCallback;

    const-class v1, Lo/ConversionDataListener;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 3
    sget-object v0, Lo/onTrackingRequestFailure$onPostMessage;->extraCallback:Lo/onTrackingRequestFailure$onPostMessage;

    const-class v1, Lo/onErrorResponse;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 4
    sget-object v0, Lo/onTrackingRequestFailure$onPostMessage;->extraCallback:Lo/onTrackingRequestFailure$onPostMessage;

    const-class v1, Lo/getOneLinkUrl;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 5
    sget-object v0, Lo/onTrackingRequestFailure$onMessageChannelReady;->onMessageChannelReady:Lo/onTrackingRequestFailure$onMessageChannelReady;

    const-class v1, Lo/setBrandDomain;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 6
    sget-object v0, Lo/onTrackingRequestFailure$onMessageChannelReady;->onMessageChannelReady:Lo/onTrackingRequestFailure$onMessageChannelReady;

    const-class v1, Lo/onConversionFailure;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 7
    sget-object v0, Lo/onTrackingRequestFailure$onNavigationEvent;->onMessageChannelReady:Lo/onTrackingRequestFailure$onNavigationEvent;

    const-class v1, Lo/saveProperties;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 8
    sget-object v0, Lo/onTrackingRequestFailure$onNavigationEvent;->onMessageChannelReady:Lo/onTrackingRequestFailure$onNavigationEvent;

    const-class v1, Lo/onConversionDataLoaded;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 9
    sget-object v0, Lo/onTrackingRequestFailure$extraCallback;->extraCallback:Lo/onTrackingRequestFailure$extraCallback;

    const-class v1, Lo/handleResponse;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 10
    sget-object v0, Lo/onTrackingRequestFailure$extraCallback;->extraCallback:Lo/onTrackingRequestFailure$extraCallback;

    const-class v1, Lo/BuildConfig;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 11
    sget-object v0, Lo/onTrackingRequestFailure$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/onTrackingRequestFailure$ICustomTabsCallback$Stub;

    const-class v1, Lo/onResponse;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 12
    sget-object v0, Lo/onTrackingRequestFailure$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/onTrackingRequestFailure$ICustomTabsCallback$Stub;

    const-class v1, Lo/initRequest;

    invoke-interface {p1, v1, v0}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    return-void
.end method
