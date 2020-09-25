.class public final Lo/setChipSpacingResource;
.super Lo/setUseMaterialThemeColors;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/zzft;

.field private final ICustomTabsCallback$Stub:Lo/zzft;

.field private final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Lo/setStatusBarForeground;

.field private final onMessageChannelReady:Lo/setBoxCornerRadiiResources;

.field private final onNavigationEvent:Lo/setCompatPressedTranslationZResource;

.field private volatile onPostMessage:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Lo/setCheckedIcon;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lo/setUseMaterialThemeColors;-><init>(Lo/setCheckedIcon;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setChipSpacingResource;->asBinder:Ljava/util/List;

    .line 3
    new-instance v0, Lo/setBoxCornerRadiiResources;

    invoke-virtual {p1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/setBoxCornerRadiiResources;-><init>(Lo/component15;)V

    iput-object v0, p0, Lo/setChipSpacingResource;->onMessageChannelReady:Lo/setBoxCornerRadiiResources;

    .line 4
    new-instance v0, Lo/setCompatPressedTranslationZResource;

    invoke-direct {v0, p0}, Lo/setCompatPressedTranslationZResource;-><init>(Lo/setChipSpacingResource;)V

    iput-object v0, p0, Lo/setChipSpacingResource;->onNavigationEvent:Lo/setCompatPressedTranslationZResource;

    .line 5
    new-instance v0, Lo/setChipSpacingVerticalResource;

    invoke-direct {v0, p0, p1}, Lo/setChipSpacingVerticalResource;-><init>(Lo/setChipSpacingResource;Lo/setChipStrokeWidthResource;)V

    iput-object v0, p0, Lo/setChipSpacingResource;->ICustomTabsCallback:Lo/zzft;

    .line 6
    new-instance v0, Lo/setShrinkMotionSpec;

    invoke-direct {v0, p0, p1}, Lo/setShrinkMotionSpec;-><init>(Lo/setChipSpacingResource;Lo/setChipStrokeWidthResource;)V

    iput-object v0, p0, Lo/setChipSpacingResource;->ICustomTabsCallback$Stub:Lo/zzft;

    return-void
.end method

.method private final AudioAttributesCompatParcelizer()V
    .locals 4

    .line 274
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 275
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    iget-object v1, p0, Lo/setChipSpacingResource;->asBinder:Ljava/util/List;

    .line 277
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lo/setChipSpacingResource;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 279
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 282
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lo/setChipSpacingResource;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    iget-object v0, p0, Lo/setChipSpacingResource;->ICustomTabsCallback$Stub:Lo/zzft;

    invoke-virtual {v0}, Lo/zzft;->ICustomTabsCallback()V

    return-void
.end method

.method private final ICustomTabsCallback(Z)Lo/setCounterTextAppearance;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lo/pathToString;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lo/setExpanded;->onMessageChannelReady(Ljava/lang/String;)Lo/setCounterTextAppearance;

    move-result-object p1

    return-object p1
.end method

.method static synthetic ICustomTabsCallback(Lo/setChipSpacingResource;Lo/setStatusBarForeground;)Lo/setStatusBarForeground;
    .locals 0

    const/4 p1, 0x0

    .line 334
    iput-object p1, p0, Lo/setChipSpacingResource;->extraCallback:Lo/setStatusBarForeground;

    return-object p1
.end method

.method static synthetic ICustomTabsCallback(Lo/setChipSpacingResource;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lo/setChipSpacingResource;->AudioAttributesCompatParcelizer()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setChipSpacingResource;Landroid/content/ComponentName;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Lo/setChipSpacingResource;->onNavigationEvent(Landroid/content/ComponentName;)V

    return-void
.end method

.method private final RemoteActionCompatParcelizer()V
    .locals 2

    .line 258
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 259
    invoke-virtual {p0}, Lo/setChipSpacingResource;->IPostMessageService$Stub()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lo/setChipSpacingResource;->cancelAll()V

    return-void
.end method

.method static synthetic extraCallback(Lo/setChipSpacingResource;)Lo/setCompatPressedTranslationZResource;
    .locals 0

    .line 332
    iget-object p0, p0, Lo/setChipSpacingResource;->onNavigationEvent:Lo/setCompatPressedTranslationZResource;

    return-object p0
.end method

.method private final extraCallback(Ljava/lang/Runnable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 265
    invoke-virtual {p0}, Lo/setChipSpacingResource;->IPostMessageService$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lo/setChipSpacingResource;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 268
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lo/setChipSpacingResource;->asBinder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object p1, p0, Lo/setChipSpacingResource;->ICustomTabsCallback$Stub:Lo/zzft;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lo/zzft;->ICustomTabsCallback(J)V

    .line 272
    invoke-virtual {p0}, Lo/setChipSpacingResource;->IPostMessageService$Stub$Proxy()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/setChipSpacingResource;)Lo/setStatusBarForeground;
    .locals 0

    .line 337
    iget-object p0, p0, Lo/setChipSpacingResource;->extraCallback:Lo/setStatusBarForeground;

    return-object p0
.end method

.method private final onNavigationEvent(Landroid/content/ComponentName;)V
    .locals 2

    .line 250
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 251
    iget-object v0, p0, Lo/setChipSpacingResource;->extraCallback:Lo/setStatusBarForeground;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lo/setChipSpacingResource;->extraCallback:Lo/setStatusBarForeground;

    .line 253
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 256
    invoke-virtual {p0}, Lo/setChipSpacingResource;->IPostMessageService$Stub$Proxy()V

    :cond_0
    return-void
.end method

.method static synthetic onNavigationEvent(Lo/setChipSpacingResource;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Lo/setChipSpacingResource;->RemoteActionCompatParcelizer()V

    return-void
.end method

.method static synthetic onPostMessage(Lo/setChipSpacingResource;)V
    .locals 0

    .line 338
    invoke-direct {p0}, Lo/setChipSpacingResource;->read()V

    return-void
.end method

.method private final read()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 144
    iget-object v0, p0, Lo/setChipSpacingResource;->onMessageChannelReady:Lo/setBoxCornerRadiiResources;

    invoke-virtual {v0}, Lo/setBoxCornerRadiiResources;->onMessageChannelReady()V

    .line 145
    iget-object v0, p0, Lo/setChipSpacingResource;->ICustomTabsCallback:Lo/zzft;

    .line 146
    sget-object v1, Lo/zziq;->INotificationSideChannel$Stub$Proxy:Lo/setStatusBarForegroundColor;

    const/4 v2, 0x0

    .line 147
    invoke-virtual {v1, v2}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 149
    invoke-virtual {v0, v1, v2}, Lo/zzft;->ICustomTabsCallback(J)V

    return-void
.end method

.method private final write()Z
    .locals 5

    .line 178
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 179
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 181
    iget-object v0, p0, Lo/setChipSpacingResource;->onPostMessage:Ljava/lang/Boolean;

    if-nez v0, :cond_c

    .line 184
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 185
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 186
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setBackgroundTintList;->asBinder()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 189
    :cond_0
    invoke-virtual {p0}, Lo/pathToString;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v2

    invoke-virtual {v2}, Lo/setExpanded;->cancel()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 192
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v4, "Checking service availability"

    invoke-virtual {v2, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v2

    const v4, 0xbdfcb8

    invoke-virtual {v2, v4}, Lo/setHelperTextEnabled;->onMessageChannelReady(I)I

    move-result v2

    if-eqz v2, :cond_9

    if-eq v2, v1, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v0, 0x3

    if-eq v2, v0, :cond_4

    const/16 v0, 0x9

    if-eq v2, v0, :cond_3

    const/16 v0, 0x12

    if-eq v2, v0, :cond_2

    .line 222
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unexpected service status"

    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Service updating"

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Service invalid"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_4
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Service disabled"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_4

    .line 207
    :cond_5
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v4, "Service container out of date"

    invoke-virtual {v2, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v2

    invoke-virtual {v2}, Lo/setHelperTextEnabled;->onRelationshipValidationResult()I

    move-result v2

    const/16 v4, 0x4423

    if-ge v2, v4, :cond_6

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    const/4 v0, 0x0

    goto :goto_5

    .line 199
    :cond_8
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Service missing"

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x1

    :goto_4
    const/4 v1, 0x0

    goto :goto_5

    .line 195
    :cond_9
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Service available"

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_5
    if-nez v1, :cond_a

    .line 225
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    invoke-virtual {v2}, Lo/setStartIconTintList;->ICustomTabsService$Stub$Proxy()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 226
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    move v3, v0

    :goto_6
    if-eqz v3, :cond_b

    .line 229
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/setBackgroundTintList;->onNavigationEvent(Z)V

    .line 231
    :cond_b
    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/setChipSpacingResource;->onPostMessage:Ljava/lang/Boolean;

    .line 233
    :cond_c
    iget-object v0, p0, Lo/setChipSpacingResource;->onPostMessage:Ljava/lang/Boolean;

    .line 234
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 314
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback()V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub()Lo/setChipSpacingResource;
    .locals 1

    .line 318
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 323
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 325
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method protected final ICustomTabsService$Stub$Proxy()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 113
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lo/pathToString;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/AppBarLayout$Behavior;->IPostMessageService$Stub()V

    .line 116
    new-instance v1, Lo/setChipSpacingHorizontal;

    invoke-direct {v1, p0, v0}, Lo/setChipSpacingHorizontal;-><init>(Lo/setChipSpacingResource;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v1}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final INotificationSideChannel()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 129
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lo/pathToString;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/AppBarLayout$Behavior;->validateRelationship()Z

    .line 132
    new-instance v1, Lo/setCircularRevealOverlayDrawable;

    invoke-direct {v1, p0, v0}, Lo/setCircularRevealOverlayDrawable;-><init>(Lo/setChipSpacingResource;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v1}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final IPostMessageService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final IPostMessageService$Stub()Z
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 10
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 11
    iget-object v0, p0, Lo/setChipSpacingResource;->extraCallback:Lo/setStatusBarForeground;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final IPostMessageService$Stub$Proxy()V
    .locals 4

    .line 151
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 152
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 153
    invoke-virtual {p0}, Lo/setChipSpacingResource;->IPostMessageService$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lo/setChipSpacingResource;->write()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lo/setChipSpacingResource;->onNavigationEvent:Lo/setCompatPressedTranslationZResource;

    invoke-virtual {v0}, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady()V

    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->ICustomTabsService$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_4

    .line 160
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 161
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance v1, Landroid/content/ComponentName;

    .line 168
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v2

    .line 169
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lo/setChipSpacingResource;->onNavigationEvent:Lo/setCompatPressedTranslationZResource;

    invoke-virtual {v1, v0}, Lo/setCompatPressedTranslationZResource;->onMessageChannelReady(Landroid/content/Intent;)V

    return-void

    .line 173
    :cond_3
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 175
    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method final IconCompatParcelizer()Z
    .locals 5

    .line 303
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 304
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 305
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 307
    :cond_0
    invoke-direct {p0}, Lo/setChipSpacingResource;->write()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 309
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHelperTextEnabled;->onRelationshipValidationResult()I

    move-result v0

    sget-object v3, Lo/zziq;->forceCloseConnection:Lo/setStatusBarForegroundColor;

    const/4 v4, 0x0

    .line 310
    invoke-virtual {v3, v4}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 311
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final bridge synthetic asBinder()Lo/AppBarLayout$Behavior;
    .locals 1

    .line 320
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic asInterface()Lo/setForegroundGravity;
    .locals 1

    .line 321
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asInterface()Lo/setForegroundGravity;

    move-result-object v0

    return-object v0
.end method

.method final cancel()Ljava/lang/Boolean;
    .locals 1

    .line 177
    iget-object v0, p0, Lo/setChipSpacingResource;->onPostMessage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final cancelAll()V
    .locals 3

    .line 241
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 242
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 243
    iget-object v0, p0, Lo/setChipSpacingResource;->onNavigationEvent:Lo/setCompatPressedTranslationZResource;

    invoke-virtual {v0}, Lo/setCompatPressedTranslationZResource;->onNavigationEvent()V

    .line 244
    :try_start_0
    invoke-static {}, Lo/findSameItem$extraCallback;->onPostMessage()Lo/findSameItem$extraCallback;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/setChipSpacingResource;->onNavigationEvent:Lo/setCompatPressedTranslationZResource;

    invoke-virtual {v0, v1, v2}, Lo/findSameItem$extraCallback;->extraCallback(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lo/setChipSpacingResource;->extraCallback:Lo/setStatusBarForeground;

    return-void
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 313
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCallback()V

    return-void
.end method

.method public final extraCallback(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 119
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v0

    .line 121
    new-instance v1, Lo/setRevealInfo;

    invoke-direct {v1, p0, p1, v0}, Lo/setRevealInfo;-><init>(Lo/setChipSpacingResource;Ljava/util/concurrent/atomic/AtomicReference;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v1}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final extraCallback(Lo/setCloseIconEndPadding;)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 135
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 136
    new-instance v0, Lo/setExtended;

    invoke-direct {v0, p0, p1}, Lo/setExtended;-><init>(Lo/setChipSpacingResource;Lo/setCloseIconEndPadding;)V

    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 329
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 322
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 328
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 326
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 312
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onMessageChannelReady()V

    return-void
.end method

.method protected final onMessageChannelReady(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lo/setStartIconVisible;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 81
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v7

    .line 83
    new-instance v0, Lo/setSize;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lo/setSize;-><init>(Lo/setChipSpacingResource;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final onMessageChannelReady(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lo/setError;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 91
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v8

    .line 93
    new-instance v0, Lo/setExpandedComponentIdHint;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lo/setExpandedComponentIdHint;-><init>(Lo/setChipSpacingResource;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/setCounterTextAppearance;)V

    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final onMessageChannelReady(Lo/setStatusBarForeground;)V
    .locals 0

    .line 235
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 236
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iput-object p1, p0, Lo/setChipSpacingResource;->extraCallback:Lo/setStatusBarForeground;

    .line 238
    invoke-direct {p0}, Lo/setChipSpacingResource;->read()V

    .line 239
    invoke-direct {p0}, Lo/setChipSpacingResource;->AudioAttributesCompatParcelizer()V

    return-void
.end method

.method final onMessageChannelReady(Lo/setStatusBarForeground;Lo/getTags;Lo/setCounterTextAppearance;)V
    .locals 10

    .line 26
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 27
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/16 v3, 0x64

    :goto_0
    const/16 v4, 0x3e9

    if-ge v2, v4, :cond_6

    if-ne v3, v1, :cond_6

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {p0}, Lo/pathToString;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v4

    invoke-virtual {v4, v1}, Lo/AppBarLayout$Behavior;->ICustomTabsCallback(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 35
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz p2, :cond_1

    if-ge v4, v1, :cond_1

    .line 38
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lo/getTags;

    .line 40
    instance-of v8, v7, Lo/zzir;

    if-eqz v8, :cond_2

    .line 41
    :try_start_0
    check-cast v7, Lo/zzir;

    invoke-interface {p1, v7, p3}, Lo/setStatusBarForeground;->onMessageChannelReady(Lo/zzir;Lo/setCounterTextAppearance;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    .line 44
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v8

    const-string v9, "Failed to send event to the service"

    invoke-virtual {v8, v9, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 46
    :cond_2
    instance-of v8, v7, Lo/setError;

    if-eqz v8, :cond_3

    .line 47
    :try_start_1
    check-cast v7, Lo/setError;

    invoke-interface {p1, v7, p3}, Lo/setStatusBarForeground;->onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    .line 50
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v8

    const-string v9, "Failed to send user property to the service"

    invoke-virtual {v8, v9, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 52
    :cond_3
    instance-of v8, v7, Lo/setStartIconVisible;

    if-eqz v8, :cond_4

    .line 53
    :try_start_2
    check-cast v7, Lo/setStartIconVisible;

    invoke-interface {p1, v7, p3}, Lo/setStatusBarForeground;->onMessageChannelReady(Lo/setStartIconVisible;Lo/setCounterTextAppearance;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v7

    .line 56
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    .line 57
    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v8

    const-string v9, "Failed to send conditional user property to the service"

    .line 58
    invoke-virtual {v8, v9, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 60
    :cond_4
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v7

    invoke-virtual {v7}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v7

    const-string v8, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v7, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final bridge synthetic onNavigationEvent()Lo/zzbfb;
    .locals 1

    .line 315
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onNavigationEvent()Lo/zzbfb;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Landroid/os/Bundle;)V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 139
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v0

    .line 141
    new-instance v1, Lo/setExtendMotionSpec;

    invoke-direct {v1, p0, p1, v0}, Lo/setExtendMotionSpec;-><init>(Lo/setChipSpacingResource;Landroid/os/Bundle;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v1}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final onNavigationEvent(Lo/setShowBuffering;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 85
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 86
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v5

    .line 88
    new-instance v0, Lo/setCompatElevation;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lo/setCompatElevation;-><init>(Lo/setChipSpacingResource;Ljava/lang/String;Ljava/lang/String;Lo/setCounterTextAppearance;Lo/setShowBuffering;)V

    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/setShowBuffering;Lo/zzir;Ljava/lang/String;)V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 289
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 291
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {v0, v1}, Lo/setHelperTextEnabled;->onMessageChannelReady(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {p2, p3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [B

    invoke-virtual {p2, p1, p3}, Lo/setHelperTextEnabled;->onPostMessage(Lo/setShowBuffering;[B)V

    return-void

    .line 296
    :cond_0
    new-instance v0, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    invoke-direct {v0, p0, p2, p3, p1}, Lo/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;-><init>(Lo/setChipSpacingResource;Lo/zzir;Ljava/lang/String;Lo/setShowBuffering;)V

    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final onNavigationEvent(Lo/setStartIconVisible;)V
    .locals 8

    .line 71
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 73
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 75
    invoke-virtual {p0}, Lo/pathToString;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AppBarLayout$Behavior;->onPostMessage(Lo/setStartIconVisible;)Z

    move-result v4

    .line 76
    new-instance v5, Lo/setStartIconVisible;

    invoke-direct {v5, p1}, Lo/setStartIconVisible;-><init>(Lo/setStartIconVisible;)V

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v6

    .line 78
    new-instance v0, Lo/setCompatElevationResource;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lo/setCompatElevationResource;-><init>(Lo/setChipSpacingResource;ZZLo/setStartIconVisible;Lo/setCounterTextAppearance;Lo/setStartIconVisible;)V

    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final onNavigationEvent(Lo/zzir;Ljava/lang/String;)V
    .locals 8

    .line 64
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 66
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 67
    invoke-virtual {p0}, Lo/pathToString;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AppBarLayout$Behavior;->ICustomTabsCallback(Lo/zzir;)Z

    move-result v4

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v6

    .line 69
    new-instance v0, Lo/setExtendMotionSpecResource;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lo/setExtendMotionSpecResource;-><init>(Lo/setChipSpacingResource;ZZLo/zzir;Lo/setCounterTextAppearance;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic onPostMessage()Lo/setChipIconSize;
    .locals 1

    .line 316
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onPostMessage()Lo/setChipIconSize;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostMessage(Lo/setError;)V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 101
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 103
    invoke-virtual {p0}, Lo/pathToString;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AppBarLayout$Behavior;->onNavigationEvent(Lo/setError;)Z

    move-result v0

    const/4 v1, 0x1

    .line 104
    invoke-direct {p0, v1}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v1

    .line 105
    new-instance v2, Lo/setChipSpacingVertical;

    invoke-direct {v2, p0, v0, p1, v1}, Lo/setChipSpacingVertical;-><init>(Lo/setChipSpacingResource;ZLo/setError;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v2}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPostMessage(Lo/setShowBuffering;)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 124
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v0

    .line 126
    new-instance v1, Lo/setSingleSelection;

    invoke-direct {v1, p0, v0, p1}, Lo/setSingleSelection;-><init>(Lo/setChipSpacingResource;Lo/setCounterTextAppearance;Lo/setShowBuffering;)V

    invoke-direct {p0, v1}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final onPostMessage(Lo/setShowBuffering;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 95
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 96
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v6

    .line 98
    new-instance v0, Lo/setChipSpacingHorizontalResource;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lo/setChipSpacingHorizontalResource;-><init>(Lo/setChipSpacingResource;Ljava/lang/String;Ljava/lang/String;ZLo/setCounterTextAppearance;Lo/setShowBuffering;)V

    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final onPostMessage(Z)V
    .locals 2

    .line 17
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 19
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lo/pathToString;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/AppBarLayout$Behavior;->IPostMessageService$Stub()V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lo/setChipSpacingResource;->IconCompatParcelizer()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 23
    invoke-direct {p0, p1}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object p1

    .line 24
    new-instance v0, Lo/setCustomSize;

    invoke-direct {v0, p0, p1}, Lo/setCustomSize;-><init>(Lo/setChipSpacingResource;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic onRelationshipValidationResult()Lo/setExpanded;
    .locals 1

    .line 317
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onTransact()Lo/setChipEndPadding;
    .locals 1

    .line 319
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 327
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 330
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method final setDefaultImpl()Z
    .locals 3

    .line 298
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 299
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 300
    invoke-direct {p0}, Lo/setChipSpacingResource;->write()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 302
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHelperTextEnabled;->onRelationshipValidationResult()I

    move-result v0

    const v2, 0x310c4

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 331
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method protected final validateRelationship()V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 13
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Lo/setChipSpacingResource;->ICustomTabsCallback(Z)Lo/setCounterTextAppearance;

    move-result-object v0

    .line 15
    new-instance v1, Lo/setShrinkMotionSpecResource;

    invoke-direct {v1, p0, v0}, Lo/setShrinkMotionSpecResource;-><init>(Lo/setChipSpacingResource;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v1}, Lo/setChipSpacingResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 324
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
