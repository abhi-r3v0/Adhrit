.class public Lo/getRccTransportControlFlagsFromActions;
.super Landroid/app/Service;
.source ""


# instance fields
.field final ICustomTabsCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lo/MediaSessionCompat$Callback$StubApi21;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent;

.field onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lo/getRccTransportControlFlagsFromActions;->onPostMessage:I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getRccTransportControlFlagsFromActions;->extraCallback:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lo/getRccTransportControlFlagsFromActions$2;

    invoke-direct {v0, p0}, Lo/getRccTransportControlFlagsFromActions$2;-><init>(Lo/getRccTransportControlFlagsFromActions;)V

    iput-object v0, p0, Lo/getRccTransportControlFlagsFromActions;->ICustomTabsCallback:Landroid/os/RemoteCallbackList;

    .line 60
    new-instance v0, Lo/getRccTransportControlFlagsFromActions$1;

    invoke-direct {v0, p0}, Lo/getRccTransportControlFlagsFromActions$1;-><init>(Lo/getRccTransportControlFlagsFromActions;)V

    iput-object v0, p0, Lo/getRccTransportControlFlagsFromActions;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 132
    iget-object p1, p0, Lo/getRccTransportControlFlagsFromActions;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi24$onNavigationEvent;

    return-object p1
.end method
