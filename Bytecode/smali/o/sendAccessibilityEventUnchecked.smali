.class public final Lo/sendAccessibilityEventUnchecked;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendAccessibilityEventUnchecked$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0002\u0008\u000b\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010J\u0006\u0010\u0012\u001a\u00020\u000eJ\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0010J\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0006\u0010\u0016\u001a\u00020\u0014J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u0014J\u0016\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0006\u0010\u0016\u001a\u00020\u0014J\u000e\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/batcher/database/BatcherDatabaseHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "batcherDataBase",
        "Lcom/dreamplug/batcher/database/BatcherDataBase;",
        "migration2to3",
        "com/dreamplug/batcher/database/BatcherDatabaseHelper$migration2to3$1",
        "Lcom/dreamplug/batcher/database/BatcherDatabaseHelper$migration2to3$1;",
        "migration3to4",
        "com/dreamplug/batcher/database/BatcherDatabaseHelper$migration3to4$1",
        "Lcom/dreamplug/batcher/database/BatcherDatabaseHelper$migration3to4$1;",
        "deleteRequest",
        "",
        "requests",
        "",
        "Lcom/dreamplug/batcher/database/Request;",
        "flushAll",
        "getAllUrls",
        "",
        "getImmediateRequests",
        "url",
        "getRequestCountForUrl",
        "",
        "getRequestForUrl",
        "insertIntoRequestTable",
        "brObject",
        "Lcom/dreamplug/batcher/models/BatchRequestObject;",
        "markRequestNotImmediate",
        "Companion",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/String;

.field public static final onPostMessage:Lo/sendAccessibilityEventUnchecked$onMessageChannelReady;


# instance fields
.field private final extraCallback:Lo/sendAccessibilityEventUnchecked$onPostMessage;

.field public final onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

.field private final onNavigationEvent:Lo/sendAccessibilityEventUnchecked$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lo/sendAccessibilityEventUnchecked$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/sendAccessibilityEventUnchecked$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/sendAccessibilityEventUnchecked;->onPostMessage:Lo/sendAccessibilityEventUnchecked$onMessageChannelReady;

    .line 132
    sget-object v0, Lo/createRepo;->onNavigationEvent:Lo/createRepo;

    .line 133
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Locale.ENGLISH"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "request"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "id"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "request_id"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v4, "url"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "method"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    const-string v4, "data"

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string/jumbo v4, "status"

    aput-object v4, v3, v1

    const/4 v1, 0x7

    const-string v4, "is_immediate"

    aput-object v4, v3, v1

    const/16 v1, 0x8

    const-string v4, "created_at"

    aput-object v4, v3, v1

    const/16 v1, 0x9

    const-string v4, "is_compressed"

    aput-object v4, v3, v1

    .line 132
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CREATE TABLE if not exists %s(%s INTEGER PRIMARY KEY AUTOINCREMENT,%s TEXT,%s TEXT,%s TEXT,%s TEXT,%s INTEGER,%s INTEGER,%s INTEGER,%s INTEGER DEFAULT 0)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS\n delete_trigger AFTER INSERT ON request\n WHEN (SELECT COUNT(*) FROM request) > 30000\n BEGIN delete From request\n where id not in(\n select id from request order by id desc limit 29900\n );    \n END;"

    .line 156
    sput-object v0, Lo/sendAccessibilityEventUnchecked;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lo/sendAccessibilityEventUnchecked$onPostMessage;

    invoke-direct {v0}, Lo/sendAccessibilityEventUnchecked$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/sendAccessibilityEventUnchecked;->extraCallback:Lo/sendAccessibilityEventUnchecked$onPostMessage;

    .line 22
    new-instance v0, Lo/sendAccessibilityEventUnchecked$extraCallback;

    invoke-direct {v0}, Lo/sendAccessibilityEventUnchecked$extraCallback;-><init>()V

    iput-object v0, p0, Lo/sendAccessibilityEventUnchecked;->onNavigationEvent:Lo/sendAccessibilityEventUnchecked$extraCallback;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/dreamplug/batcher/database/BatcherDataBase;

    const-string v1, "BatcherDb"

    invoke-static {p1, v0, v1}, Lo/registerMediaButtonEventReceiver;->onPostMessage(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 38
    iget-object v2, p0, Lo/sendAccessibilityEventUnchecked;->extraCallback:Lo/sendAccessibilityEventUnchecked$onPostMessage;

    check-cast v2, Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    new-array v0, v0, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 39
    iget-object v1, p0, Lo/sendAccessibilityEventUnchecked;->onNavigationEvent:Lo/sendAccessibilityEventUnchecked$extraCallback;

    check-cast v1, Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object p1

    .line 40
    new-instance v0, Lo/sendAccessibilityEventUnchecked$4;

    invoke-direct {v0}, Lo/sendAccessibilityEventUnchecked$4;-><init>()V

    check-cast v0, Lo/setCurrentControllerInfo$onPostMessage;

    .line 1869
    iget-object v1, p1, Lo/setCurrentControllerInfo$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1870
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lo/setCurrentControllerInfo$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 1872
    :cond_0
    iget-object v1, p1, Lo/setCurrentControllerInfo$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p1}, Lo/setCurrentControllerInfo$onMessageChannelReady;->extraCallback()Lo/setCurrentControllerInfo;

    move-result-object p1

    const-string v0, "Room\n                .da\u2026\n                .build()"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/dreamplug/batcher/database/BatcherDataBase;

    iput-object p1, p0, Lo/sendAccessibilityEventUnchecked;->onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

    return-void
.end method

.method public static final synthetic onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lo/sendAccessibilityEventUnchecked;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method
