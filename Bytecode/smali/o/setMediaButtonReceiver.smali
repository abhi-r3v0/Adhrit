.class public Lo/setMediaButtonReceiver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toLegacyStreamType;


# static fields
.field private static final asBinder:Lo/setMediaButtonReceiver;


# instance fields
.field ICustomTabsCallback:Landroid/os/Handler;

.field private ICustomTabsCallback$Stub:Z

.field extraCallback:I

.field final onMessageChannelReady:Lo/setCallback;

.field onNavigationEvent:I

.field onPostMessage:Z

.field onRelationshipValidationResult:Lo/sendSessionEvent$onMessageChannelReady;

.field onTransact:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lo/setMediaButtonReceiver;

    invoke-direct {v0}, Lo/setMediaButtonReceiver;-><init>()V

    sput-object v0, Lo/setMediaButtonReceiver;->asBinder:Lo/setMediaButtonReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lo/setMediaButtonReceiver;->onNavigationEvent:I

    .line 58
    iput v0, p0, Lo/setMediaButtonReceiver;->extraCallback:I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lo/setMediaButtonReceiver;->onPostMessage:Z

    .line 61
    iput-boolean v0, p0, Lo/setMediaButtonReceiver;->ICustomTabsCallback$Stub:Z

    .line 64
    new-instance v0, Lo/setCallback;

    invoke-direct {v0, p0}, Lo/setCallback;-><init>(Lo/toLegacyStreamType;)V

    iput-object v0, p0, Lo/setMediaButtonReceiver;->onMessageChannelReady:Lo/setCallback;

    .line 66
    new-instance v0, Lo/setMediaButtonReceiver$2;

    invoke-direct {v0, p0}, Lo/setMediaButtonReceiver$2;-><init>(Lo/setMediaButtonReceiver;)V

    iput-object v0, p0, Lo/setMediaButtonReceiver;->onTransact:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lo/setMediaButtonReceiver$3;

    invoke-direct {v0, p0}, Lo/setMediaButtonReceiver$3;-><init>(Lo/setMediaButtonReceiver;)V

    iput-object v0, p0, Lo/setMediaButtonReceiver;->onRelationshipValidationResult:Lo/sendSessionEvent$onMessageChannelReady;

    return-void
.end method

.method static extraCallback(Landroid/content/Context;)V
    .locals 3

    .line 105
    sget-object v0, Lo/setMediaButtonReceiver;->asBinder:Lo/setMediaButtonReceiver;

    .line 1158
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lo/setMediaButtonReceiver;->ICustomTabsCallback:Landroid/os/Handler;

    .line 1159
    iget-object v1, v0, Lo/setMediaButtonReceiver;->onMessageChannelReady:Lo/setCallback;

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_CREATE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v1, v2}, Lo/setCallback;->onNavigationEvent(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    .line 1160
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 1161
    new-instance v1, Lo/setMediaButtonReceiver$1;

    invoke-direct {v1, v0}, Lo/setMediaButtonReceiver$1;-><init>(Lo/setMediaButtonReceiver;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static onPostMessage()Lo/toLegacyStreamType;
    .locals 1

    .line 101
    sget-object v0, Lo/setMediaButtonReceiver;->asBinder:Lo/setMediaButtonReceiver;

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 2

    .line 148
    iget v0, p0, Lo/setMediaButtonReceiver;->onNavigationEvent:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/setMediaButtonReceiver;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lo/setMediaButtonReceiver;->onMessageChannelReady:Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 4130
    invoke-static {v1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    .line 4131
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lo/setMediaButtonReceiver;->ICustomTabsCallback$Stub:Z

    :cond_0
    return-void
.end method

.method final extraCallback()V
    .locals 2

    .line 109
    iget v0, p0, Lo/setMediaButtonReceiver;->onNavigationEvent:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/setMediaButtonReceiver;->onNavigationEvent:I

    if-ne v0, v1, :cond_0

    .line 110
    iget-boolean v0, p0, Lo/setMediaButtonReceiver;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lo/setMediaButtonReceiver;->onMessageChannelReady:Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 2130
    invoke-static {v1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    .line 2131
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lo/setMediaButtonReceiver;->ICustomTabsCallback$Stub:Z

    :cond_0
    return-void
.end method

.method public getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;
    .locals 1

    .line 209
    iget-object v0, p0, Lo/setMediaButtonReceiver;->onMessageChannelReady:Lo/setCallback;

    return-object v0
.end method

.method final onNavigationEvent()V
    .locals 2

    .line 117
    iget v0, p0, Lo/setMediaButtonReceiver;->extraCallback:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/setMediaButtonReceiver;->extraCallback:I

    if-ne v0, v1, :cond_1

    .line 119
    iget-boolean v0, p0, Lo/setMediaButtonReceiver;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lo/setMediaButtonReceiver;->onMessageChannelReady:Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_RESUME:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 3130
    invoke-static {v1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    .line 3131
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lo/setMediaButtonReceiver;->onPostMessage:Z

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lo/setMediaButtonReceiver;->ICustomTabsCallback:Landroid/os/Handler;

    iget-object v1, p0, Lo/setMediaButtonReceiver;->onTransact:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
