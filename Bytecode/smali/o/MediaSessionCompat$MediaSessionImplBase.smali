.class public final Lo/MediaSessionCompat$MediaSessionImplBase;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/update$ICustomTabsCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/update$onNavigationEvent;)Lo/update;
    .locals 4

    .line 32
    new-instance v0, Lo/sendVolumeInfoChanged;

    iget-object v1, p1, Lo/update$onNavigationEvent;->onNavigationEvent:Landroid/content/Context;

    iget-object v2, p1, Lo/update$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/update$onNavigationEvent;->ICustomTabsCallback:Lo/update$onPostMessage;

    iget-boolean p1, p1, Lo/update$onNavigationEvent;->onMessageChannelReady:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lo/sendVolumeInfoChanged;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/update$onPostMessage;Z)V

    return-object v0
.end method
