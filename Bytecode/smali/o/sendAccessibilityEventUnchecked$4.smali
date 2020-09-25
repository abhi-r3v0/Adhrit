.class public final Lo/sendAccessibilityEventUnchecked$4;
.super Lo/setCurrentControllerInfo$onPostMessage;
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
        "com/dreamplug/batcher/database/BatcherDatabaseHelper$1",
        "Landroidx/room/RoomDatabase$Callback;",
        "onCreate",
        "",
        "db",
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
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/setCurrentControllerInfo$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Lo/setCurrentControllerInfo$onPostMessage;->extraCallback(Lo/MediaControllerCompatApi21$Callback;)V

    .line 43
    sget-object v0, Lo/sendAccessibilityEventUnchecked;->onPostMessage:Lo/sendAccessibilityEventUnchecked$onMessageChannelReady;

    .line 1148
    invoke-static {}, Lo/sendAccessibilityEventUnchecked;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method
