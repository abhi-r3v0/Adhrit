.class public final Lo/onSupportNavigateUp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setTextDelegate$onMessageChannelReady;


# instance fields
.field final ICustomTabsCallback:Lo/onPostResume;

.field final onMessageChannelReady:Lo/ActionBarActivity;

.field private final onPostMessage:Lo/supportShouldUpRecreateTask;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Lo/ActionBarActivity;Lo/supportShouldUpRecreateTask;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lo/onSupportNavigateUp;->onMessageChannelReady:Lo/ActionBarActivity;

    .line 66
    iput-object p3, p0, Lo/onSupportNavigateUp;->onPostMessage:Lo/supportShouldUpRecreateTask;

    .line 67
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object p1

    iput-object p1, p0, Lo/onSupportNavigateUp;->ICustomTabsCallback:Lo/onPostResume;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;Ljava/util/UUID;Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;)Lo/getBatteryLevel;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;",
            ")",
            "Lo/getBatteryLevel<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lo/getSupportParentActivityIntent;->onNavigationEvent()Lo/getSupportParentActivityIntent;

    move-result-object v6

    .line 78
    iget-object v7, p0, Lo/onSupportNavigateUp;->onPostMessage:Lo/supportShouldUpRecreateTask;

    new-instance v8, Lo/onSupportNavigateUp$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lo/onSupportNavigateUp$1;-><init>(Lo/onSupportNavigateUp;Lo/getSupportParentActivityIntent;Ljava/util/UUID;Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;Landroid/content/Context;)V

    invoke-interface {v7, v8}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-object v6
.end method
