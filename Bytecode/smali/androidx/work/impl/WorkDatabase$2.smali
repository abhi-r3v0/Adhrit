.class final Landroidx/work/impl/WorkDatabase$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/update$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->extraCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 118
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase$2;->onPostMessage:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/update$onNavigationEvent;)Lo/update;
    .locals 4

    .line 123
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase$2;->onPostMessage:Landroid/content/Context;

    .line 1351
    new-instance v1, Lo/update$onNavigationEvent$onMessageChannelReady;

    invoke-direct {v1, v0}, Lo/update$onNavigationEvent$onMessageChannelReady;-><init>(Landroid/content/Context;)V

    .line 125
    iget-object v0, p1, Lo/update$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 1402
    iput-object v0, v1, Lo/update$onNavigationEvent$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 125
    iget-object p1, p1, Lo/update$onNavigationEvent;->ICustomTabsCallback:Lo/update$onPostMessage;

    .line 1412
    iput-object p1, v1, Lo/update$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/update$onPostMessage;

    const/4 p1, 0x1

    .line 1424
    iput-boolean p1, v1, Lo/update$onNavigationEvent$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 130
    invoke-virtual {v1}, Lo/update$onNavigationEvent$onMessageChannelReady;->onPostMessage()Lo/update$onNavigationEvent;

    move-result-object p1

    .line 2032
    new-instance v0, Lo/sendVolumeInfoChanged;

    iget-object v1, p1, Lo/update$onNavigationEvent;->onNavigationEvent:Landroid/content/Context;

    iget-object v2, p1, Lo/update$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/update$onNavigationEvent;->ICustomTabsCallback:Lo/update$onPostMessage;

    iget-boolean p1, p1, Lo/update$onNavigationEvent;->onMessageChannelReady:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lo/sendVolumeInfoChanged;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/update$onPostMessage;Z)V

    return-object v0
.end method
