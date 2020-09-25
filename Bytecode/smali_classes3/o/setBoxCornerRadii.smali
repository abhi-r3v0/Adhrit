.class public final Lo/setBoxCornerRadii;
.super Lo/setHintTextColor;
.source ""


# instance fields
.field private final onMessageChannelReady:Landroid/app/AlarmManager;

.field private final onNavigationEvent:Lo/zzft;

.field private onPostMessage:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Lo/setHint;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lo/setHintTextColor;-><init>(Lo/setHint;)V

    .line 2
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lo/setBoxCornerRadii;->onMessageChannelReady:Landroid/app/AlarmManager;

    .line 3
    new-instance v0, Lo/setBoxBackgroundColorResource;

    .line 4
    invoke-virtual {p1}, Lo/setHint;->IPostMessageService()Lo/setCheckedIcon;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lo/setBoxBackgroundColorResource;-><init>(Lo/setBoxCornerRadii;Lo/setChipStrokeWidthResource;Lo/setHint;)V

    iput-object v0, p0, Lo/setBoxCornerRadii;->onNavigationEvent:Lo/zzft;

    return-void
.end method

.method private final ICustomTabsService$Stub()I
    .locals 3

    .line 53
    iget-object v0, p0, Lo/setBoxCornerRadii;->onPostMessage:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const-string v0, "measurement"

    .line 54
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/setBoxCornerRadii;->onPostMessage:Ljava/lang/Integer;

    .line 55
    :cond_1
    iget-object v0, p0, Lo/setBoxCornerRadii;->onPostMessage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private final ICustomTabsService$Stub$Proxy()Landroid/app/PendingIntent;
    .locals 3

    .line 63
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    .line 65
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 67
    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private final IPostMessageService$Stub()V
    .locals 2

    .line 11
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 12
    invoke-direct {p0}, Lo/setBoxCornerRadii;->ICustomTabsService$Stub()I

    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 75
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsCallback()V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 77
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 79
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic L_()Lo/setClickable;
    .locals 1

    .line 72
    invoke-super {p0}, Lo/setHintTextColor;->L_()Lo/setClickable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic M_()Lo/zzzv;
    .locals 1

    .line 71
    invoke-super {p0}, Lo/setHintTextColor;->M_()Lo/zzzv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic N_()Lo/setErrorIconTintMode;
    .locals 1

    .line 70
    invoke-super {p0}, Lo/setHintTextColor;->N_()Lo/setErrorIconTintMode;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic O_()Lo/setErrorTextColor;
    .locals 1

    .line 69
    invoke-super {p0}, Lo/setHintTextColor;->O_()Lo/setErrorTextColor;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic P_()Lo/FloatingActionButton$BaseBehavior;
    .locals 1

    .line 68
    invoke-super {p0}, Lo/setHintTextColor;->P_()Lo/FloatingActionButton$BaseBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 74
    invoke-super {p0}, Lo/setHintTextColor;->extraCallback()V

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 83
    invoke-super {p0}, Lo/setHintTextColor;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 76
    invoke-super {p0}, Lo/setHintTextColor;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 82
    invoke-super {p0}, Lo/setHintTextColor;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 80
    invoke-super {p0}, Lo/setHintTextColor;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 73
    invoke-super {p0}, Lo/setHintTextColor;->onMessageChannelReady()V

    return-void
.end method

.method public final onMessageChannelReady(J)V
    .locals 9

    .line 15
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 16
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lo/setIconTintMode;->extraCallback(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Receiver not registered/enabled"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Service not registered/enabled"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 21
    :cond_1
    invoke-virtual {p0}, Lo/setBoxCornerRadii;->onPostMessage()V

    .line 22
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Scheduling upload, millis"

    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    add-long v4, v0, p1

    const-wide/16 v0, 0x0

    .line 25
    sget-object v2, Lo/zziq;->validateRelationship:Lo/setStatusBarForegroundColor;

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    .line 29
    iget-object v0, p0, Lo/setBoxCornerRadii;->onNavigationEvent:Lo/zzft;

    invoke-virtual {v0}, Lo/zzft;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    iget-object v0, p0, Lo/setBoxCornerRadii;->onNavigationEvent:Lo/zzft;

    invoke-virtual {v0, p1, p2}, Lo/zzft;->ICustomTabsCallback(J)V

    .line 31
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 33
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lo/setBoxCornerRadii;->ICustomTabsService$Stub()I

    move-result v2

    .line 36
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    const-string v4, "action"

    const-string v5, "com.google.android.gms.measurement.UPLOAD"

    .line 37
    invoke-virtual {v3, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 39
    invoke-virtual {v4, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    shl-long/2addr p1, v2

    .line 40
    invoke-virtual {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    const-string p2, "com.google.android.gms"

    const-string v1, "UploadAlarm"

    .line 43
    invoke-static {v0, p1, p2, v1}, Lo/ac$c;->onNavigationEvent(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 45
    :cond_3
    iget-object v2, p0, Lo/setBoxCornerRadii;->onMessageChannelReady:Landroid/app/AlarmManager;

    const/4 v0, 0x2

    .line 46
    sget-object v1, Lo/zziq;->extraCommand:Lo/setStatusBarForegroundColor;

    .line 47
    invoke-virtual {v1, v3}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 49
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 50
    invoke-direct {p0}, Lo/setBoxCornerRadii;->ICustomTabsService$Stub$Proxy()Landroid/app/PendingIntent;

    move-result-object v8

    move v3, v0

    .line 51
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method protected final onNavigationEvent()Z
    .locals 2

    .line 6
    iget-object v0, p0, Lo/setBoxCornerRadii;->onMessageChannelReady:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lo/setBoxCornerRadii;->ICustomTabsService$Stub$Proxy()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 8
    invoke-direct {p0}, Lo/setBoxCornerRadii;->IPostMessageService$Stub()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 57
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Unscheduling upload"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lo/setBoxCornerRadii;->onMessageChannelReady:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lo/setBoxCornerRadii;->ICustomTabsService$Stub$Proxy()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 59
    iget-object v0, p0, Lo/setBoxCornerRadii;->onNavigationEvent:Lo/zzft;

    invoke-virtual {v0}, Lo/zzft;->ICustomTabsCallback()V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 61
    invoke-direct {p0}, Lo/setBoxCornerRadii;->IPostMessageService$Stub()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 81
    invoke-super {p0}, Lo/setHintTextColor;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 84
    invoke-super {p0}, Lo/setHintTextColor;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 85
    invoke-super {p0}, Lo/setHintTextColor;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 78
    invoke-super {p0}, Lo/setHintTextColor;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
