.class public final Lo/sendAccessibilityEventUnchecked$onPostMessage;
.super Lo/MediaSessionCompat$MediaSessionImplApi18$1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendAccessibilityEventUnchecked;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/batcher/database/BatcherDatabaseHelper$migration2to3$1",
        "Landroidx/room/migration/Migration;",
        "migrate",
        "",
        "database",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 16
    invoke-direct {p0, v0, v1}, Lo/MediaSessionCompat$MediaSessionImplApi18$1;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER delete_trigger"

    .line 18
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    .line 19
    sget-object v0, Lo/sendAccessibilityEventUnchecked;->onPostMessage:Lo/sendAccessibilityEventUnchecked$onMessageChannelReady;

    .line 1148
    invoke-static {}, Lo/sendAccessibilityEventUnchecked;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method
