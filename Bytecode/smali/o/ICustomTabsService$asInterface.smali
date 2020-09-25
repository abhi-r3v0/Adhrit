.class Lo/ICustomTabsService$asInterface;
.super Lo/ICustomTabsService$onRelationshipValidationResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "asInterface"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/updateVisuals;

.field final synthetic onPostMessage:Lo/ICustomTabsService;


# direct methods
.method constructor <init>(Lo/ICustomTabsService;Lo/updateVisuals;)V
    .locals 0

    .line 3242
    iput-object p1, p0, Lo/ICustomTabsService$asInterface;->onPostMessage:Lo/ICustomTabsService;

    invoke-direct {p0, p1}, Lo/ICustomTabsService$onRelationshipValidationResult;-><init>(Lo/ICustomTabsService;)V

    .line 3243
    iput-object p2, p0, Lo/ICustomTabsService$asInterface;->ICustomTabsCallback:Lo/updateVisuals;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 1

    .line 3254
    iget-object v0, p0, Lo/ICustomTabsService$asInterface;->onPostMessage:Lo/ICustomTabsService;

    invoke-virtual {v0}, Lo/ICustomTabsService;->ICustomTabsService$Stub$Proxy()Z

    return-void
.end method

.method onMessageChannelReady()Landroid/content/IntentFilter;
    .locals 2

    .line 3259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    .line 3260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 3261
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 3262
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public onNavigationEvent()I
    .locals 22

    move-object/from16 v0, p0

    .line 3249
    iget-object v1, v0, Lo/ICustomTabsService$asInterface;->ICustomTabsCallback:Lo/updateVisuals;

    .line 4080
    iget-object v2, v1, Lo/updateVisuals;->ICustomTabsCallback:Lo/updateVisuals$onNavigationEvent;

    .line 4144
    iget-object v3, v1, Lo/updateVisuals;->ICustomTabsCallback:Lo/updateVisuals$onNavigationEvent;

    iget-wide v3, v3, Lo/updateVisuals$onNavigationEvent;->onPostMessage:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v3, v5

    if-lez v9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 4084
    iget-boolean v7, v2, Lo/updateVisuals$onNavigationEvent;->onMessageChannelReady:Z

    goto/16 :goto_6

    .line 5110
    :cond_1
    iget-object v3, v1, Lo/updateVisuals;->extraCallback:Landroid/content/Context;

    .line 5134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 5135
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    .line 5134
    invoke-static {v3, v9, v4, v5, v6}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, "network"

    .line 5113
    invoke-virtual {v1, v3}, Lo/updateVisuals;->extraCallback(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 5116
    :goto_1
    iget-object v5, v1, Lo/updateVisuals;->extraCallback:Landroid/content/Context;

    .line 6134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 6135
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.permission.ACCESS_FINE_LOCATION"

    .line 6134
    invoke-static {v5, v11, v6, v9, v10}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    const-string v4, "gps"

    .line 5119
    invoke-virtual {v1, v4}, Lo/updateVisuals;->extraCallback(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 5124
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    cmp-long v11, v5, v9

    if-lez v11, :cond_5

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    :goto_2
    move-object v3, v4

    :cond_5
    if-eqz v3, :cond_c

    .line 6148
    iget-object v1, v1, Lo/updateVisuals;->ICustomTabsCallback:Lo/updateVisuals$onNavigationEvent;

    .line 6149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7031
    sget-object v6, Lo/extraCallback;->ICustomTabsCallback:Lo/extraCallback;

    if-nez v6, :cond_6

    .line 7032
    new-instance v6, Lo/extraCallback;

    invoke-direct {v6}, Lo/extraCallback;-><init>()V

    sput-object v6, Lo/extraCallback;->ICustomTabsCallback:Lo/extraCallback;

    .line 7034
    :cond_6
    sget-object v6, Lo/extraCallback;->ICustomTabsCallback:Lo/extraCallback;

    const-wide/32 v16, 0x5265c00

    sub-long v10, v4, v16

    .line 6154
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    move-object v9, v6

    .line 6153
    invoke-virtual/range {v9 .. v15}, Lo/extraCallback;->extraCallback(JDD)V

    .line 6158
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    move-wide v10, v4

    invoke-virtual/range {v9 .. v15}, Lo/extraCallback;->extraCallback(JDD)V

    .line 6159
    iget v9, v6, Lo/extraCallback;->onMessageChannelReady:I

    if-ne v9, v8, :cond_7

    const/4 v7, 0x1

    .line 6160
    :cond_7
    iget-wide v14, v6, Lo/extraCallback;->extraCallback:J

    .line 6161
    iget-wide v12, v6, Lo/extraCallback;->onPostMessage:J

    add-long v10, v4, v16

    .line 6165
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object v9, v6

    move-wide/from16 v20, v12

    move-wide/from16 v12, v16

    move-wide/from16 v16, v14

    move-wide/from16 v14, v18

    .line 6164
    invoke-virtual/range {v9 .. v15}, Lo/extraCallback;->extraCallback(JDD)V

    .line 6166
    iget-wide v14, v6, Lo/extraCallback;->extraCallback:J

    const-wide/16 v9, -0x1

    cmp-long v3, v16, v9

    if-eqz v3, :cond_b

    cmp-long v3, v20, v9

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    cmp-long v3, v4, v20

    if-lez v3, :cond_9

    goto :goto_3

    :cond_9
    cmp-long v3, v4, v16

    if-lez v3, :cond_a

    move-wide/from16 v14, v20

    goto :goto_3

    :cond_a
    move-wide/from16 v14, v16

    :goto_3
    const-wide/32 v3, 0xea60

    add-long/2addr v14, v3

    goto :goto_5

    :cond_b
    :goto_4
    const-wide/32 v9, 0x2932e00

    add-long v14, v4, v9

    .line 6186
    :goto_5
    iput-boolean v7, v1, Lo/updateVisuals$onNavigationEvent;->onMessageChannelReady:Z

    .line 6191
    iput-wide v14, v1, Lo/updateVisuals$onNavigationEvent;->onPostMessage:J

    .line 4091
    iget-boolean v7, v2, Lo/updateVisuals$onNavigationEvent;->onMessageChannelReady:Z

    goto :goto_6

    :cond_c
    const-string v1, "TwilightManager"

    const-string v2, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 4094
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 4101
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_d

    const/16 v2, 0x16

    if-lt v1, v2, :cond_e

    :cond_d
    const/4 v7, 0x1

    :cond_e
    :goto_6
    if-eqz v7, :cond_f

    const/4 v1, 0x2

    return v1

    :cond_f
    return v8
.end method
