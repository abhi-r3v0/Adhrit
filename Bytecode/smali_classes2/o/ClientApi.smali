.class final Lo/ClientApi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Ljava/lang/Object;

.field public onMessageChannelReady:J

.field public onNavigationEvent:I

.field public final onPostMessage:Lo/isGooglePlayServicesAvailable;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lo/isGooglePlayServicesAvailable;->onNavigationEvent()Lo/isGooglePlayServicesAvailable;

    move-result-object v0

    iput-object v0, p0, Lo/ClientApi;->onPostMessage:Lo/isGooglePlayServicesAvailable;

    return-void
.end method

.method constructor <init>(Lo/isGooglePlayServicesAvailable;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lo/ClientApi;->onPostMessage:Lo/isGooglePlayServicesAvailable;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
