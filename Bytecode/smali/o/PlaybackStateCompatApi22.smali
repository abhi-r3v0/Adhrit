.class final Lo/PlaybackStateCompatApi22;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Alarms"

    .line 44
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/PlaybackStateCompatApi22;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;J)V
    .locals 2

    .line 1311
    iget-object p1, p1, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 61
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->ICustomTabsCallback$Stub()Lo/setTheme;

    move-result-object v0

    .line 62
    invoke-interface {v0, p2}, Lo/setTheme;->extraCallback(Ljava/lang/String;)Lo/getSupportActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget p1, v1, Lo/getSupportActionBar;->onMessageChannelReady:I

    invoke-static {p0, p2, p1}, Lo/PlaybackStateCompatApi22;->extraCallback(Landroid/content/Context;Ljava/lang/String;I)V

    .line 65
    iget p1, v1, Lo/getSupportActionBar;->onMessageChannelReady:I

    invoke-static {p0, p2, p1, p3, p4}, Lo/PlaybackStateCompatApi22;->onPostMessage(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-void

    .line 67
    :cond_0
    new-instance v1, Lo/supportInvalidateOptionsMenu;

    invoke-direct {v1, p1}, Lo/supportInvalidateOptionsMenu;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 68
    invoke-virtual {v1}, Lo/supportInvalidateOptionsMenu;->extraCallback()I

    move-result p1

    .line 69
    new-instance v1, Lo/getSupportActionBar;

    invoke-direct {v1, p2, p1}, Lo/getSupportActionBar;-><init>(Ljava/lang/String;I)V

    .line 70
    invoke-interface {v0, v1}, Lo/setTheme;->onPostMessage(Lo/getSupportActionBar;)V

    .line 71
    invoke-static {p0, p2, p1, p3, p4}, Lo/PlaybackStateCompatApi22;->onPostMessage(Landroid/content/Context;Ljava/lang/String;IJ)V

    return-void
.end method

.method private static extraCallback(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "alarm"

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 104
    invoke-static {p0, p1}, Lo/send;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20000000

    .line 105
    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/PlaybackStateCompatApi22;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "Cancelling existing alarm with (workSpecId, systemId) (%s, %s)"

    .line 108
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, p2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 112
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private static onPostMessage(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2

    const-string v0, "alarm"

    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 123
    invoke-static {p0, p1}, Lo/send;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x8000000

    .line 124
    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_1

    .line 127
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    const/4 v1, 0x0

    if-lt p1, p2, :cond_0

    .line 128
    invoke-virtual {v0, v1, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    .line 130
    :cond_0
    invoke-virtual {v0, v1, p3, p4, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public static onPostMessage(Landroid/content/Context;Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;)V
    .locals 4

    .line 2311
    iget-object p1, p1, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 88
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->ICustomTabsCallback$Stub()Lo/setTheme;

    move-result-object p1

    .line 89
    invoke-interface {p1, p2}, Lo/setTheme;->extraCallback(Ljava/lang/String;)Lo/getSupportActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget v0, v0, Lo/getSupportActionBar;->onMessageChannelReady:I

    invoke-static {p0, p2, v0}, Lo/PlaybackStateCompatApi22;->extraCallback(Landroid/content/Context;Ljava/lang/String;I)V

    .line 92
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p0

    sget-object v0, Lo/PlaybackStateCompatApi22;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "Removing SystemIdInfo for workSpecId (%s)"

    .line 93
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 92
    invoke-virtual {p0, v0, v1, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 94
    invoke-interface {p1, p2}, Lo/setTheme;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
