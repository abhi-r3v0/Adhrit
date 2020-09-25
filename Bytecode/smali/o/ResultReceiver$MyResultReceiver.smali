.class final Lo/ResultReceiver$MyResultReceiver;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final onNavigationEvent:Ljava/lang/String;


# instance fields
.field final ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

.field final extraCallback:Lo/getLifecycle;

.field final onMessageChannelReady:I

.field final onPostMessage:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    .line 42
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ResultReceiver$MyResultReceiver;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILo/IResultReceiver$Stub$Proxy;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lo/ResultReceiver$MyResultReceiver;->onPostMessage:Landroid/content/Context;

    .line 55
    iput p2, p0, Lo/ResultReceiver$MyResultReceiver;->onMessageChannelReady:I

    .line 56
    iput-object p3, p0, Lo/ResultReceiver$MyResultReceiver;->ICustomTabsCallback:Lo/IResultReceiver$Stub$Proxy;

    .line 1189
    iget-object p1, p3, Lo/IResultReceiver$Stub$Proxy;->onPostMessage:Lo/supportShouldUpRecreateTask;

    .line 58
    new-instance p2, Lo/getLifecycle;

    iget-object p3, p0, Lo/ResultReceiver$MyResultReceiver;->onPostMessage:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p2, p3, p1, v0}, Lo/getLifecycle;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;Lo/loadsAllData$onPostMessage;)V

    iput-object p2, p0, Lo/ResultReceiver$MyResultReceiver;->extraCallback:Lo/getLifecycle;

    return-void
.end method
