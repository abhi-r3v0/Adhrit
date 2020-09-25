.class public final Lo/setCustomAmount$onPostMessage$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDueDateText;
.implements Lo/addLifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCustomAmount$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final arg$1:Lo/loadTrackedQueries$ICustomTabsCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/loadTrackedQueries$ICustomTabsCallback;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setCustomAmount$onPostMessage$onMessageChannelReady;->arg$1:Lo/loadTrackedQueries$ICustomTabsCallback;

    return-void
.end method

.method public static lambdaFactory$(Lo/loadTrackedQueries$ICustomTabsCallback;)Lo/addLifecycleEventListener;
    .locals 1

    .line 3000
    new-instance v0, Lo/setCustomAmount$onPostMessage$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setCustomAmount$onPostMessage$onMessageChannelReady;-><init>(Lo/loadTrackedQueries$ICustomTabsCallback;)V

    return-object v0
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/setCustomAmount$onPostMessage$onMessageChannelReady;->arg$1:Lo/loadTrackedQueries$ICustomTabsCallback;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception;->lambda$applyRequestMetadata$0(Lo/loadTrackedQueries$ICustomTabsCallback;Ljava/lang/String;)V

    return-void
.end method
