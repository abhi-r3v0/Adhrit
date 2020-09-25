.class public final Lo/getTextOn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/contacthelper/ContactFetcher;",
        "",
        "()V",
        "PROJECTION",
        "",
        "",
        "[Ljava/lang/String;",
        "fetch",
        "",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcom/dreamplug/contacthelper/listeners/OnPullCallback;",
        "fetchThumbnail",
        "Ljava/io/InputStream;",
        "contactId",
        "",
        "contact_helper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 2017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "contact_id"

    const-string v1, "display_name"

    const-string v2, "data1"

    const-string v3, "contact_last_updated_timestamp"

    .line 2023
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 2019
    iput-object v0, p0, Lo/getTextOn;->ICustomTabsCallback:[Ljava/lang/String;

    return-void
.end method

.method public static final ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lo/MediaControllerCompatApi21$CallbackProxy;",
            "J",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)",
            "Lo/updateDxDy$onMessageChannelReady;"
        }
    .end annotation

    const-string v0, "$this$postUi"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lo/getTextOn$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/getTextOn$onNavigationEvent;-><init>(Landroid/view/View;)V

    check-cast v0, Lo/setTextOn;

    invoke-static {p1, p2, p3, p4, v0}, Lo/getTextOn;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;Lo/setTextOn;)Lo/updateDxDy$onMessageChannelReady;

    move-result-object p0

    return-object p0
.end method

.method private static ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;Lo/setTextOn;)Lo/updateDxDy$onMessageChannelReady;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaControllerCompatApi21$CallbackProxy;",
            "J",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/setTextOn;",
            ")",
            "Lo/updateDxDy$onMessageChannelReady;"
        }
    .end annotation

    const-string v0, "lifecycle"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postStrategy"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 71
    new-instance v1, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v1}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 73
    new-instance v2, Lo/getTextOn$onMessageChannelReady;

    invoke-direct {v2, v1, p0, p3, v0}, Lo/getTextOn$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;Lo/getServerTime;Lo/toDebugString$onMessageChannelReady;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    cmp-long p0, p1, v3

    if-nez p0, :cond_0

    .line 81
    invoke-interface {p4, v2}, Lo/setTextOn;->onMessageChannelReady(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {p4, v2, p1, p2}, Lo/setTextOn;->onNavigationEvent(Ljava/lang/Runnable;J)V

    .line 86
    :goto_0
    new-instance p0, Lo/getTextOn$extraCallback;

    invoke-direct {p0, p4, v2, v1}, Lo/getTextOn$extraCallback;-><init>(Lo/setTextOn;Ljava/lang/Runnable;Lo/toDebugString$ICustomTabsCallback;)V

    check-cast p0, Lo/updateDxDy$onMessageChannelReady;

    return-object p0
.end method

.method public static final extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lo/MediaControllerCompatApi21$CallbackProxy;",
            "J",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)",
            "Lo/updateDxDy$onMessageChannelReady;"
        }
    .end annotation

    const-string v0, "$this$postUi"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lo/getTextOn$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getTextOn$ICustomTabsCallback;-><init>(Landroid/os/Handler;)V

    check-cast v0, Lo/setTextOn;

    invoke-static {p1, p2, p3, p4, v0}, Lo/getTextOn;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;Lo/setTextOn;)Lo/updateDxDy$onMessageChannelReady;

    move-result-object p0

    return-object p0
.end method

.method public static final onNavigationEvent(Landroidx/fragment/app/Fragment;Lo/getServerTime;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$delayOnMainThread"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p0

    const-string v1, "lifecycle"

    invoke-static {p0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/getTextOn$onPostMessage;

    invoke-direct {v1, v0}, Lo/getTextOn$onPostMessage;-><init>(Landroid/os/Handler;)V

    check-cast v1, Lo/setTextOn;

    const-wide/16 v2, 0xfa

    invoke-static {p0, v2, v3, p1, v1}, Lo/getTextOn;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;Lo/setTextOn;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method

.method public static onPostMessage(Landroid/content/Context;J)Ljava/io/InputStream;
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "photo"

    .line 1084
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1085
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "data15"

    .line 1086
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1085
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 1088
    :cond_0
    move-object p2, p0

    check-cast p2, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p2

    check-cast v0, Landroid/database/Cursor;

    .line 1089
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1090
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1092
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast p0, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p1}, Lo/extraCallback;->onNavigationEvent(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    .line 1095
    :cond_1
    :try_start_1
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1088
    invoke-static {p2, p1}, Lo/extraCallback;->onNavigationEvent(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1096
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p0

    .line 1088
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p2, p0}, Lo/extraCallback;->onNavigationEvent(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
