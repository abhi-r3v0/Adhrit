.class public final Lo/HideBottomViewOnScrollBehavior;
.super Lo/setChipIconEnabled;
.source ""


# instance fields
.field private ICustomTabsCallback:C

.field private final ICustomTabsCallback$Stub:Lo/setFabAlignmentMode;

.field private final ICustomTabsService:Lo/setFabAlignmentMode;

.field private final asBinder:Lo/setFabAlignmentMode;

.field private final asInterface:Lo/setFabAlignmentMode;

.field private extraCallback:Ljava/lang/String;

.field private final getInterfaceDescriptor:Lo/setFabAlignmentMode;

.field private onMessageChannelReady:J

.field private final onNavigationEvent:Lo/setFabAlignmentMode;

.field private final onPostMessage:Lo/setFabAlignmentMode;

.field private final onRelationshipValidationResult:Lo/setFabAlignmentMode;

.field private final onTransact:Lo/setFabAlignmentMode;


# direct methods
.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lo/setChipIconEnabled;-><init>(Lo/setCheckedIcon;)V

    const/4 p1, 0x0

    .line 2
    iput-char p1, p0, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback:C

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lo/HideBottomViewOnScrollBehavior;->onMessageChannelReady:J

    .line 4
    new-instance v0, Lo/setFabAlignmentMode;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lo/setFabAlignmentMode;-><init>(Lo/HideBottomViewOnScrollBehavior;IZZ)V

    iput-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->onPostMessage:Lo/setFabAlignmentMode;

    .line 5
    new-instance v0, Lo/setFabAlignmentMode;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lo/setFabAlignmentMode;-><init>(Lo/HideBottomViewOnScrollBehavior;IZZ)V

    iput-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent:Lo/setFabAlignmentMode;

    .line 6
    new-instance v0, Lo/setFabAlignmentMode;

    invoke-direct {v0, p0, v1, p1, v2}, Lo/setFabAlignmentMode;-><init>(Lo/HideBottomViewOnScrollBehavior;IZZ)V

    iput-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub:Lo/setFabAlignmentMode;

    .line 7
    new-instance v0, Lo/setFabAlignmentMode;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lo/setFabAlignmentMode;-><init>(Lo/HideBottomViewOnScrollBehavior;IZZ)V

    iput-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult:Lo/setFabAlignmentMode;

    .line 8
    new-instance v0, Lo/setFabAlignmentMode;

    invoke-direct {v0, p0, v1, v2, p1}, Lo/setFabAlignmentMode;-><init>(Lo/HideBottomViewOnScrollBehavior;IZZ)V

    iput-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->asInterface:Lo/setFabAlignmentMode;

    .line 9
    new-instance v0, Lo/setFabAlignmentMode;

    invoke-direct {v0, p0, v1, p1, v2}, Lo/setFabAlignmentMode;-><init>(Lo/HideBottomViewOnScrollBehavior;IZZ)V

    iput-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->asBinder:Lo/setFabAlignmentMode;

    .line 10
    new-instance v0, Lo/setFabAlignmentMode;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lo/setFabAlignmentMode;-><init>(Lo/HideBottomViewOnScrollBehavior;IZZ)V

    iput-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->onTransact:Lo/setFabAlignmentMode;

    .line 11
    new-instance v0, Lo/setFabAlignmentMode;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lo/setFabAlignmentMode;-><init>(Lo/HideBottomViewOnScrollBehavior;IZZ)V

    iput-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsService:Lo/setFabAlignmentMode;

    .line 12
    new-instance v0, Lo/setFabAlignmentMode;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lo/setFabAlignmentMode;-><init>(Lo/HideBottomViewOnScrollBehavior;IZZ)V

    iput-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->getInterfaceDescriptor:Lo/setFabAlignmentMode;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/HideBottomViewOnScrollBehavior;)J
    .locals 2

    .line 144
    iget-wide v0, p0, Lo/HideBottomViewOnScrollBehavior;->onMessageChannelReady:J

    return-wide v0
.end method

.method static synthetic ICustomTabsCallback(Lo/HideBottomViewOnScrollBehavior;J)J
    .locals 0

    .line 145
    iput-wide p1, p0, Lo/HideBottomViewOnScrollBehavior;->onMessageChannelReady:J

    return-wide p1
.end method

.method private final ICustomTabsService$Stub$Proxy()Ljava/lang/String;
    .locals 1

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->extraCallback:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->extraCommand()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->extraCommand()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "FA"

    .line 56
    :goto_0
    iput-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->extraCallback:Ljava/lang/String;

    .line 57
    :cond_1
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->extraCallback:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic onMessageChannelReady(Lo/HideBottomViewOnScrollBehavior;)C
    .locals 0

    .line 142
    iget-char p0, p0, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback:C

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/HideBottomViewOnScrollBehavior;C)C
    .locals 0

    .line 143
    iput-char p1, p0, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback:C

    return p1
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(ZLjava/lang/Object;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 83
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 84
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 85
    :cond_1
    instance-of v1, p1, Ljava/lang/Long;

    const-string v2, "-"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez p0, :cond_2

    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_2
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 89
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_4

    move-object v0, v2

    .line 91
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 98
    :cond_6
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    .line 99
    check-cast p1, Ljava/lang/Throwable;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    const-class p0, Lo/setCheckedIcon;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/HideBottomViewOnScrollBehavior;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    :goto_1
    if-ge v3, v1, :cond_9

    aget-object v2, p1, v3

    .line 104
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v4

    if-nez v4, :cond_8

    .line 105
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 107
    invoke-static {v4}, Lo/HideBottomViewOnScrollBehavior;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string p0, ": "

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 113
    :cond_9
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_a
    instance-of v0, p1, Lo/SwipeDismissBehavior;

    if-eqz v0, :cond_b

    .line 115
    check-cast p1, Lo/SwipeDismissBehavior;

    invoke-static {p1}, Lo/SwipeDismissBehavior;->extraCallback(Lo/SwipeDismissBehavior;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz p0, :cond_c

    return-object v2

    .line 118
    :cond_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static onNavigationEvent(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 61
    :cond_0
    invoke-static {p0, p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-static {p0, p3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 63
    invoke-static {p0, p4}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 64
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    .line 69
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ", "

    if-nez p1, :cond_2

    .line 70
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 73
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 74
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 77
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 78
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static onPostMessage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    new-instance v0, Lo/SwipeDismissBehavior;

    invoke-direct {v0, p0}, Lo/SwipeDismissBehavior;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 131
    invoke-super {p0}, Lo/setChipIconEnabled;->ICustomTabsCallback()V

    return-void
.end method

.method public final ICustomTabsCallback(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 28
    invoke-static {v0, p4, p5, p6, p7}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {p0, p1, p2}, Lo/HideBottomViewOnScrollBehavior;->extraCallback(ILjava/lang/String;)V

    :cond_0
    if-nez p3, :cond_5

    const/4 p2, 0x5

    if-lt p1, p2, :cond_5

    .line 32
    invoke-static {p4}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p2, p0, Lo/HideBottomViewOnScrollBehavior;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->onRelationshipValidationResult()Lo/setShapeAppearanceModel;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_1

    const-string p1, "Scheduler not set. Not logging error/warn"

    .line 35
    invoke-virtual {p0, p3, p1}, Lo/HideBottomViewOnScrollBehavior;->extraCallback(ILjava/lang/String;)V

    return-void

    .line 37
    :cond_1
    invoke-virtual {p2}, Lo/setChipIconEnabled;->INotificationSideChannel()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Scheduler not initialized. Not logging error/warn"

    .line 38
    invoke-virtual {p0, p3, p1}, Lo/HideBottomViewOnScrollBehavior;->extraCallback(ILjava/lang/String;)V

    return-void

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    const/16 p3, 0x9

    if-lt p1, p3, :cond_4

    const/16 p1, 0x8

    const/16 v2, 0x8

    goto :goto_0

    :cond_4
    move v2, p1

    .line 45
    :goto_0
    new-instance p1, Lo/AppBarLayout$ScrollingViewBehavior;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lo/AppBarLayout$ScrollingViewBehavior;-><init>(Lo/HideBottomViewOnScrollBehavior;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public final ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent:Lo/setFabAlignmentMode;

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 133
    invoke-super {p0}, Lo/setChipIconEnabled;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 135
    invoke-super {p0}, Lo/setChipIconEnabled;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService$Stub()Ljava/lang/String;
    .locals 4

    .line 125
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->extraCallback:Lo/setIconResource;

    invoke-virtual {v0}, Lo/setIconResource;->onNavigationEvent()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    sget-object v1, Lo/setBackgroundTintList;->onNavigationEvent:Landroid/util/Pair;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final IPostMessageService()Lo/setFabAlignmentMode;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->onTransact:Lo/setFabAlignmentMode;

    return-object v0
.end method

.method public final IPostMessageService$Stub()Lo/setFabAlignmentMode;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsService:Lo/setFabAlignmentMode;

    return-object v0
.end method

.method public final asBinder()Lo/setFabAlignmentMode;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub:Lo/setFabAlignmentMode;

    return-object v0
.end method

.method public final asInterface()Lo/setFabAlignmentMode;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult:Lo/setFabAlignmentMode;

    return-object v0
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 130
    invoke-super {p0}, Lo/setChipIconEnabled;->extraCallback()V

    return-void
.end method

.method protected final extraCallback(ILjava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsService$Stub$Proxy()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 139
    invoke-super {p0}, Lo/setChipIconEnabled;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 132
    invoke-super {p0}, Lo/setChipIconEnabled;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 138
    invoke-super {p0}, Lo/setChipIconEnabled;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 136
    invoke-super {p0}, Lo/setChipIconEnabled;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 129
    invoke-super {p0}, Lo/setChipIconEnabled;->onMessageChannelReady()V

    return-void
.end method

.method public final onNavigationEvent()Lo/setFabAlignmentMode;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->onPostMessage:Lo/setFabAlignmentMode;

    return-object v0
.end method

.method protected final onPostMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final onPostMessage(I)Z
    .locals 1

    .line 47
    invoke-direct {p0}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsService$Stub$Proxy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public final onRelationshipValidationResult()Lo/setFabAlignmentMode;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->asBinder:Lo/setFabAlignmentMode;

    return-object v0
.end method

.method public final onTransact()Lo/setFabAlignmentMode;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->asInterface:Lo/setFabAlignmentMode;

    return-object v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 137
    invoke-super {p0}, Lo/setChipIconEnabled;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 140
    invoke-super {p0}, Lo/setChipIconEnabled;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 141
    invoke-super {p0}, Lo/setChipIconEnabled;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final validateRelationship()Lo/setFabAlignmentMode;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/HideBottomViewOnScrollBehavior;->getInterfaceDescriptor:Lo/setFabAlignmentMode;

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 134
    invoke-super {p0}, Lo/setChipIconEnabled;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
