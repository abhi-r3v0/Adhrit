.class public final Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PlaybackStateCompat$ShuffleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/supportShouldUpRecreateTask;

.field asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Picasso$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:Landroid/content/Context;

.field onMessageChannelReady:Lo/getActions;

.field onNavigationEvent:Landroidx/work/impl/WorkDatabase;

.field onPostMessage:Lo/ActionBarActivity;

.field onRelationshipValidationResult:Ljava/lang/String;

.field onTransact:Landroidx/work/WorkerParameters$extraCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/getActions;Lo/supportShouldUpRecreateTask;Lo/ActionBarActivity;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 1

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    new-instance v0, Landroidx/work/WorkerParameters$extraCallback;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$extraCallback;-><init>()V

    iput-object v0, p0, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->onTransact:Landroidx/work/WorkerParameters$extraCallback;

    .line 634
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->extraCallback:Landroid/content/Context;

    .line 635
    iput-object p3, p0, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->ICustomTabsCallback:Lo/supportShouldUpRecreateTask;

    .line 636
    iput-object p4, p0, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->onPostMessage:Lo/ActionBarActivity;

    .line 637
    iput-object p2, p0, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->onMessageChannelReady:Lo/getActions;

    .line 638
    iput-object p5, p0, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->onNavigationEvent:Landroidx/work/impl/WorkDatabase;

    .line 639
    iput-object p6, p0, Lo/PlaybackStateCompat$ShuffleMode$onNavigationEvent;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method
