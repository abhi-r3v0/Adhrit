.class public final Lo/aa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ai;


# instance fields
.field private final ICustomTabsCallback:Lo/b;

.field private extraCallback:Landroid/app/AlarmManager;

.field private final onMessageChannelReady:Lo/ag$2;

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:Lo/ah;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lo/ah;Landroid/app/AlarmManager;Lo/b;Lo/ag$2;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lo/aa;->onNavigationEvent:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lo/aa;->onPostMessage:Lo/ah;

    .line 70
    iput-object p3, p0, Lo/aa;->extraCallback:Landroid/app/AlarmManager;

    .line 71
    iput-object p4, p0, Lo/aa;->ICustomTabsCallback:Lo/b;

    .line 72
    iput-object p5, p0, Lo/aa;->onMessageChannelReady:Lo/ag$2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/ah;Lo/b;Lo/ag$2;)V
    .locals 7

    const-string v0, "alarm"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AlarmManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 53
    invoke-direct/range {v1 .. v6}, Lo/aa;-><init>(Landroid/content/Context;Lo/ah;Landroid/app/AlarmManager;Lo/b;Lo/ag$2;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/OaidClient$Info;I)V
    .locals 9

    .line 88
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 89
    invoke-virtual {p1}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backendName"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    invoke-virtual {p1}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v1

    invoke-static {v1}, Lo/getItemDelegate$onMessageChannelReady;->ICustomTabsCallback(Lo/setReferrer;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "priority"

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 92
    invoke-virtual {p1}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p1}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extras"

    .line 93
    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lo/aa;->onNavigationEvent:Landroid/content/Context;

    const-class v4, Lo/ab;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "attemptNumber"

    .line 98
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1077
    iget-object v0, p0, Lo/aa;->onNavigationEvent:Landroid/content/Context;

    const/high16 v3, 0x20000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v4, "AlarmManagerScheduler"

    if-eqz v0, :cond_2

    const-string p2, "Upload for context %s is already scheduled. Returning..."

    .line 101
    invoke-static {v4, p2, p1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lo/aa;->onPostMessage:Lo/ah;

    invoke-interface {v0, p1}, Lo/ah;->extraCallback(Lo/OaidClient$Info;)J

    move-result-wide v5

    .line 108
    iget-object v0, p0, Lo/aa;->onMessageChannelReady:Lo/ag$2;

    .line 109
    invoke-virtual {p1}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v7

    invoke-virtual {v0, v7, v5, v6, p2}, Lo/ag$2;->onNavigationEvent(Lo/setReferrer;JI)J

    move-result-wide v7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 115
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    const/4 p1, 0x2

    .line 116
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, p1

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "TransportRuntime."

    .line 3023
    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d"

    .line 2039
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lo/aa;->onNavigationEvent:Landroid/content/Context;

    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lo/aa;->extraCallback:Landroid/app/AlarmManager;

    iget-object v1, p0, Lo/aa;->ICustomTabsCallback:Lo/b;

    .line 121
    invoke-interface {v1}, Lo/b;->onPostMessage()J

    move-result-wide v1

    add-long/2addr v1, v7

    .line 120
    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
