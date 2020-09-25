.class public final Lo/setChipEndPadding;
.super Lo/setUseMaterialThemeColors;
.source ""


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lo/setCloseIconEndPadding;",
            ">;"
        }
    .end annotation
.end field

.field private volatile ICustomTabsCallback$Stub:Lo/setCloseIconEndPadding;

.field private ICustomTabsService:Ljava/lang/String;

.field private volatile asBinder:Z

.field private final asInterface:Ljava/lang/Object;

.field private extraCallback:Landroid/app/Activity;

.field private getInterfaceDescriptor:Lo/setCloseIconEndPadding;

.field private volatile onMessageChannelReady:Lo/setCloseIconEndPadding;

.field protected onNavigationEvent:Lo/setCloseIconEndPadding;

.field private onPostMessage:Lo/setCloseIconEndPadding;

.field private onRelationshipValidationResult:Z

.field private onTransact:Lo/setCloseIconEndPadding;


# direct methods
.method public constructor <init>(Lo/setCheckedIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setUseMaterialThemeColors;-><init>(Lo/setCheckedIcon;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setChipEndPadding;->asInterface:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lo/setChipEndPadding;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\."

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 211
    array-length v0, p0

    if-lez v0, :cond_0

    .line 212
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 214
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/setChipEndPadding;Landroid/os/Bundle;Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;J)V
    .locals 0

    .line 326
    invoke-direct/range {p0 .. p5}, Lo/setChipEndPadding;->extraCallback(Landroid/os/Bundle;Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;J)V

    return-void
.end method

.method private final extraCallback(Landroid/app/Activity;)Lo/setCloseIconEndPadding;
    .locals 5

    .line 217
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lo/setChipEndPadding;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setCloseIconEndPadding;

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/setChipEndPadding;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Lo/setCloseIconEndPadding;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v3

    invoke-virtual {v3}, Lo/setHelperTextEnabled;->ICustomTabsCallback$Stub()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lo/setCloseIconEndPadding;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 222
    iget-object v0, p0, Lo/setChipEndPadding;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 223
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p1

    sget-object v1, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 225
    :cond_1
    iget-object p1, p0, Lo/setChipEndPadding;->ICustomTabsCallback$Stub:Lo/setCloseIconEndPadding;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/setChipEndPadding;->ICustomTabsCallback$Stub:Lo/setCloseIconEndPadding;

    return-object p1

    :cond_2
    return-object v0
.end method

.method static synthetic extraCallback(Lo/setChipEndPadding;)Lo/setCloseIconEndPadding;
    .locals 0

    .line 328
    iget-object p0, p0, Lo/setChipEndPadding;->onTransact:Lo/setCloseIconEndPadding;

    return-object p0
.end method

.method private final extraCallback(Landroid/os/Bundle;Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;J)V
    .locals 14

    move-object v3, p1

    if-eqz v3, :cond_0

    const-string v0, "screen_name"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "screen_class"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, "screen_view"

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v13

    const/4 v12, 0x1

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    .line 73
    invoke-direct/range {v7 .. v13}, Lo/setChipEndPadding;->onNavigationEvent(Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;JZLandroid/os/Bundle;)V

    return-void
.end method

.method private final onMessageChannelReady(Landroid/app/Activity;Lo/setCloseIconEndPadding;Z)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 122
    iget-object v1, v7, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    if-nez v1, :cond_0

    iget-object v1, v7, Lo/setChipEndPadding;->onPostMessage:Lo/setCloseIconEndPadding;

    goto :goto_0

    :cond_0
    iget-object v1, v7, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    :goto_0
    move-object v3, v1

    .line 123
    iget-object v1, v0, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/setChipEndPadding;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v10, v1

    .line 125
    new-instance v1, Lo/setCloseIconEndPadding;

    iget-object v9, v0, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    iget-wide v11, v0, Lo/setCloseIconEndPadding;->extraCallback:J

    iget-boolean v13, v0, Lo/setCloseIconEndPadding;->ICustomTabsCallback:Z

    iget-wide v14, v0, Lo/setCloseIconEndPadding;->ICustomTabsCallback$Stub:J

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lo/setCloseIconEndPadding;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    move-object v2, v1

    goto :goto_2

    :cond_2
    move-object v2, v0

    .line 127
    :goto_2
    iget-object v0, v7, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    iput-object v0, v7, Lo/setChipEndPadding;->onPostMessage:Lo/setCloseIconEndPadding;

    .line 128
    iput-object v2, v7, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v4

    .line 130
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v8

    new-instance v9, Lo/setChipEndPaddingResource;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lo/setChipEndPaddingResource;-><init>(Lo/setChipEndPadding;Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;JZ)V

    .line 131
    invoke-virtual {v8, v9}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final onNavigationEvent(Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;JZLandroid/os/Bundle;)V
    .locals 9

    .line 133
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 135
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->isConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    .line 136
    iget-object p5, p0, Lo/setChipEndPadding;->onNavigationEvent:Lo/setCloseIconEndPadding;

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_3

    .line 138
    iget-object v0, p0, Lo/setChipEndPadding;->onNavigationEvent:Lo/setCloseIconEndPadding;

    invoke-direct {p0, v0, v2, p3, p4}, Lo/setChipEndPadding;->onPostMessage(Lo/setCloseIconEndPadding;ZJ)V

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    .line 139
    iget-object p5, p0, Lo/setChipEndPadding;->onNavigationEvent:Lo/setCloseIconEndPadding;

    if-eqz p5, :cond_2

    .line 140
    invoke-direct {p0, p5, v2, p3, p4}, Lo/setChipEndPadding;->onPostMessage(Lo/setCloseIconEndPadding;ZJ)V

    :cond_2
    const/4 p5, 0x0

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 141
    iget-wide v3, p2, Lo/setCloseIconEndPadding;->extraCallback:J

    iget-wide v5, p1, Lo/setCloseIconEndPadding;->extraCallback:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    iget-object v0, p2, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    iget-object v3, p1, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    .line 142
    invoke-static {v0, v3}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p1, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    .line 143
    invoke-static {v0, v3}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_11

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v3, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p6, :cond_6

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    move-object v0, p6

    :cond_7
    :goto_2
    move-object v8, v0

    .line 148
    invoke-static {p1, v8, v2}, Lo/setChipEndPadding;->onPostMessage(Lo/setCloseIconEndPadding;Landroid/os/Bundle;Z)V

    if-eqz p2, :cond_a

    .line 150
    iget-object p6, p2, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    if-eqz p6, :cond_8

    .line 151
    iget-object p6, p2, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "_pn"

    invoke-virtual {v8, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_8
    iget-object p6, p2, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p6, :cond_9

    .line 153
    iget-object p6, p2, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "_pc"

    invoke-virtual {v8, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_9
    iget-wide v0, p2, Lo/setCloseIconEndPadding;->extraCallback:J

    const-string p2, "_pi"

    invoke-virtual {v8, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    :cond_a
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p2

    sget-object p6, Lo/zziq;->isConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {p2, p6}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p2

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_c

    if-eqz p5, :cond_c

    .line 156
    invoke-static {}, Lo/CctBackendFactory;->onNavigationEvent()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 157
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p2

    sget-object p5, Lo/zziq;->getSessionToken:Lo/setStatusBarForegroundColor;

    invoke-virtual {p2, p5}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 159
    invoke-virtual {p0}, Lo/pathToString;->asInterface()Lo/setForegroundGravity;

    move-result-object p2

    .line 160
    invoke-virtual {p2, p3, p4}, Lo/setForegroundGravity;->ICustomTabsCallback(J)J

    move-result-wide p2

    goto :goto_3

    .line 161
    :cond_b
    invoke-virtual {p0}, Lo/pathToString;->asInterface()Lo/setForegroundGravity;

    move-result-object p2

    .line 162
    iget-object p2, p2, Lo/setForegroundGravity;->onNavigationEvent:Lo/setBoxStrokeColor;

    invoke-virtual {p2}, Lo/setBoxStrokeColor;->onNavigationEvent()J

    move-result-wide p2

    :goto_3
    cmp-long p4, p2, v0

    if-lez p4, :cond_c

    .line 165
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object p4

    invoke-virtual {p4, v8, p2, p3}, Lo/setHelperTextEnabled;->onPostMessage(Landroid/os/Bundle;J)V

    .line 167
    :cond_c
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p2

    sget-object p3, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {p2, p3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p2

    const-string p3, "auto"

    if-eqz p2, :cond_e

    .line 168
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p2

    invoke-virtual {p2}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_d

    const-wide/16 p4, 0x1

    const-string p2, "_mst"

    .line 169
    invoke-virtual {v8, p2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    :cond_d
    iget-boolean p2, p1, Lo/setCloseIconEndPadding;->ICustomTabsCallback:Z

    if-eqz p2, :cond_e

    const-string p3, "app"

    :cond_e
    move-object v4, p3

    .line 171
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p2

    sget-object p3, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {p2, p3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 172
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p2

    invoke-interface {p2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide p2

    .line 173
    iget-boolean p4, p1, Lo/setCloseIconEndPadding;->ICustomTabsCallback:Z

    if-eqz p4, :cond_f

    iget-wide p4, p1, Lo/setCloseIconEndPadding;->ICustomTabsCallback$Stub:J

    cmp-long p6, p4, v0

    if-eqz p6, :cond_f

    .line 174
    iget-wide p2, p1, Lo/setCloseIconEndPadding;->ICustomTabsCallback$Stub:J

    :cond_f
    move-wide v6, p2

    .line 175
    invoke-virtual {p0}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object v3

    const-string v5, "_vs"

    .line 176
    invoke-virtual/range {v3 .. v8}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    goto :goto_4

    .line 178
    :cond_10
    invoke-virtual {p0}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object p2

    const-string p3, "_vs"

    invoke-virtual {p2, v4, p3, v8}, Lo/setChipIconSize;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 179
    :cond_11
    :goto_4
    iput-object p1, p0, Lo/setChipEndPadding;->onNavigationEvent:Lo/setCloseIconEndPadding;

    .line 180
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p2

    sget-object p3, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {p2, p3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-boolean p2, p1, Lo/setCloseIconEndPadding;->ICustomTabsCallback:Z

    if-eqz p2, :cond_12

    .line 181
    iput-object p1, p0, Lo/setChipEndPadding;->onTransact:Lo/setCloseIconEndPadding;

    .line 182
    :cond_12
    invoke-virtual {p0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/setChipSpacingResource;->extraCallback(Lo/setCloseIconEndPadding;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/setChipEndPadding;Lo/setCloseIconEndPadding;)Lo/setCloseIconEndPadding;
    .locals 0

    const/4 p1, 0x0

    .line 330
    iput-object p1, p0, Lo/setChipEndPadding;->onTransact:Lo/setCloseIconEndPadding;

    return-object p1
.end method

.method static synthetic onPostMessage(Lo/setChipEndPadding;Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;JZLandroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 327
    invoke-direct/range {v0 .. v6}, Lo/setChipEndPadding;->onNavigationEvent(Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;JZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/setChipEndPadding;Lo/setCloseIconEndPadding;ZJ)V
    .locals 0

    const/4 p2, 0x0

    .line 329
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setChipEndPadding;->onPostMessage(Lo/setCloseIconEndPadding;ZJ)V

    return-void
.end method

.method public static onPostMessage(Lo/setCloseIconEndPadding;Landroid/os/Bundle;Z)V
    .locals 4

    const-string v0, "_si"

    const-string v1, "_sn"

    const-string v2, "_sc"

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    .line 191
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_3

    .line 192
    :cond_0
    iget-object p2, p0, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 193
    iget-object p2, p0, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 195
    :goto_0
    iget-object p2, p0, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 196
    iget-object p2, p0, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 198
    :goto_1
    iget-wide v1, p0, Lo/setCloseIconEndPadding;->extraCallback:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    if-nez p0, :cond_4

    if-eqz p2, :cond_4

    .line 200
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final onPostMessage(Lo/setCloseIconEndPadding;ZJ)V
    .locals 3

    .line 184
    invoke-virtual {p0}, Lo/pathToString;->onNavigationEvent()Lo/zzbfb;

    move-result-object v0

    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/zzbfb;->ICustomTabsCallback(J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 185
    iget-boolean v1, p1, Lo/setCloseIconEndPadding;->onPostMessage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0}, Lo/pathToString;->asInterface()Lo/setForegroundGravity;

    move-result-object v2

    .line 187
    invoke-virtual {v2, v1, p2, p3, p4}, Lo/setForegroundGravity;->onMessageChannelReady(ZZJ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 188
    iput-boolean v0, p1, Lo/setCloseIconEndPadding;->onPostMessage:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 308
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback()V

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 285
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lo/setChipEndPadding;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setCloseIconEndPadding;

    if-nez p1, :cond_2

    return-void

    .line 292
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    iget-wide v1, p1, Lo/setCloseIconEndPadding;->extraCallback:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 294
    iget-object v1, p1, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object p1, p1, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "referrer_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    .line 296
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    .line 78
    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    .line 83
    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lo/setChipEndPadding;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 88
    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lo/setChipEndPadding;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 92
    :cond_3
    iget-object v0, p0, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    iget-object v0, v0, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, p3}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 93
    iget-object v1, p0, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    iget-object v1, v1, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v1, p2}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 95
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 97
    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_4
    const/16 v0, 0x64

    if-eqz p2, :cond_6

    .line 100
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_6

    .line 102
    :cond_5
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    if-eqz p3, :cond_8

    .line 107
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 108
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_8

    .line 109
    :cond_7
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 111
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 113
    :cond_8
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    if-nez p2, :cond_9

    const-string v1, "null"

    goto :goto_0

    :cond_9
    move-object v1, p2

    :goto_0
    const-string v2, "Setting current screen to name, class"

    .line 116
    invoke-virtual {v0, v2, v1, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    new-instance v0, Lo/setCloseIconEndPadding;

    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v1

    invoke-virtual {v1}, Lo/setHelperTextEnabled;->ICustomTabsCallback$Stub()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lo/setCloseIconEndPadding;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 118
    iget-object p2, p0, Lo/setChipEndPadding;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 119
    invoke-direct {p0, p1, v0, p2}, Lo/setChipEndPadding;->onMessageChannelReady(Landroid/app/Activity;Lo/setCloseIconEndPadding;Z)V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub()Lo/setChipSpacingResource;
    .locals 1

    .line 312
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 317
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 319
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method protected final IPostMessageService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final IPostMessageService$Stub()Lo/setCloseIconEndPadding;
    .locals 1

    .line 121
    iget-object v0, p0, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    return-object v0
.end method

.method public final bridge synthetic asBinder()Lo/AppBarLayout$Behavior;
    .locals 1

    .line 314
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic asInterface()Lo/setForegroundGravity;
    .locals 1

    .line 315
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asInterface()Lo/setForegroundGravity;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Z)Lo/setCloseIconEndPadding;
    .locals 2

    .line 6
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 7
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 8
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lo/setChipEndPadding;->onNavigationEvent:Lo/setCloseIconEndPadding;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lo/setChipEndPadding;->onTransact:Lo/setCloseIconEndPadding;

    return-object p1

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lo/setChipEndPadding;->onNavigationEvent:Lo/setCloseIconEndPadding;

    return-object p1
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 307
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCallback()V

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 323
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 316
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 322
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 320
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 306
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onMessageChannelReady()V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/app/Activity;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lo/setChipEndPadding;->asInterface:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lo/setChipEndPadding;->extraCallback:Landroid/app/Activity;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 300
    iput-object v1, p0, Lo/setChipEndPadding;->extraCallback:Landroid/app/Activity;

    .line 301
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lo/setChipEndPadding;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 301
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bridge synthetic onNavigationEvent()Lo/zzbfb;
    .locals 1

    .line 309
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onNavigationEvent()Lo/zzbfb;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Landroid/app/Activity;)V
    .locals 4

    .line 239
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lo/setChipEndPadding;->asInterface:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    .line 241
    :try_start_0
    iput-boolean v2, p0, Lo/setChipEndPadding;->onRelationshipValidationResult:Z

    .line 242
    iget-object v2, p0, Lo/setChipEndPadding;->extraCallback:Landroid/app/Activity;

    if-eq p1, v2, :cond_0

    .line 244
    iget-object v2, p0, Lo/setChipEndPadding;->asInterface:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    :try_start_1
    iput-object p1, p0, Lo/setChipEndPadding;->extraCallback:Landroid/app/Activity;

    .line 246
    iput-boolean v1, p0, Lo/setChipEndPadding;->asBinder:Z

    .line 247
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v3, Lo/zziq;->MediaBrowserCompat$ItemCallback:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    invoke-virtual {v2}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 250
    iput-object v2, p0, Lo/setChipEndPadding;->ICustomTabsCallback$Stub:Lo/setCloseIconEndPadding;

    .line 251
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v2

    new-instance v3, Lo/setShowDividerHorizontal;

    invoke-direct {v3, p0}, Lo/setShowDividerHorizontal;-><init>(Lo/setChipEndPadding;)V

    .line 252
    invoke-virtual {v2, v3}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 247
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 253
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 254
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v2, Lo/zziq;->MediaBrowserCompat$ItemCallback:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    iget-object p1, p0, Lo/setChipEndPadding;->ICustomTabsCallback$Stub:Lo/setCloseIconEndPadding;

    iput-object p1, p0, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    .line 257
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    new-instance v0, Lo/setShowDividerVertical;

    invoke-direct {v0, p0}, Lo/setShowDividerVertical;-><init>(Lo/setChipEndPadding;)V

    .line 258
    invoke-virtual {p1, v0}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 260
    :cond_2
    invoke-direct {p0, p1}, Lo/setChipEndPadding;->extraCallback(Landroid/app/Activity;)Lo/setCloseIconEndPadding;

    move-result-object v0

    .line 261
    invoke-direct {p0, p1, v0, v1}, Lo/setChipEndPadding;->onMessageChannelReady(Landroid/app/Activity;Lo/setCloseIconEndPadding;Z)V

    .line 262
    invoke-virtual {p0}, Lo/pathToString;->onNavigationEvent()Lo/zzbfb;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    .line 264
    invoke-virtual {p1}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v2

    new-instance v3, Lo/prefixSuccessor;

    invoke-direct {v3, p1, v0, v1}, Lo/prefixSuccessor;-><init>(Lo/zzbfb;J)V

    .line 265
    invoke-virtual {v2, v3}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/os/Bundle;J)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 11
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Manual screen reporting is disabled."

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    iget-object v1, v8, Lo/setChipEndPadding;->asInterface:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    iget-boolean v2, v8, Lo/setChipEndPadding;->onRelationshipValidationResult:Z

    if-nez v2, :cond_1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Cannot log screen view event when the app is in the background."

    .line 20
    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 21
    monitor-exit v1

    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const-string v2, "screen_name"

    .line 23
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    if-eqz v2, :cond_3

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_3

    .line 27
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v3, "Invalid screen name length for screen view. Length"

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    monitor-exit v1

    return-void

    :cond_3
    const-string v4, "screen_class"

    .line 31
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 34
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_5

    .line 35
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Invalid screen class length for screen view. Length"

    .line 37
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    monitor-exit v1

    return-void

    :cond_5
    move-object v10, v2

    move-object v2, v4

    goto :goto_0

    :cond_6
    move-object v10, v2

    :goto_0
    if-nez v2, :cond_8

    .line 40
    iget-object v2, v8, Lo/setChipEndPadding;->extraCallback:Landroid/app/Activity;

    if-eqz v2, :cond_7

    .line 41
    iget-object v2, v8, Lo/setChipEndPadding;->extraCallback:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/setChipEndPadding;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    const-string v2, "Activity"

    :cond_8
    :goto_1
    move-object v11, v2

    .line 43
    iget-boolean v2, v8, Lo/setChipEndPadding;->asBinder:Z

    if-eqz v2, :cond_9

    iget-object v2, v8, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 44
    iput-boolean v2, v8, Lo/setChipEndPadding;->asBinder:Z

    .line 45
    iget-object v2, v8, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    iget-object v2, v2, Lo/setCloseIconEndPadding;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v2, v11}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 46
    iget-object v3, v8, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    iget-object v3, v3, Lo/setCloseIconEndPadding;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v3, v10}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    .line 48
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Ignoring call to log screen view event with duplicate parameters."

    .line 50
    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 51
    monitor-exit v1

    return-void

    .line 52
    :cond_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    if-nez v10, :cond_a

    const-string v2, "null"

    goto :goto_2

    :cond_a
    move-object v2, v10

    :goto_2
    if-nez v11, :cond_b

    const-string v3, "null"

    goto :goto_3

    :cond_b
    move-object v3, v11

    :goto_3
    const-string v4, "Logging screen view with name, class"

    .line 57
    invoke-virtual {v1, v4, v2, v3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    iget-object v1, v8, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    if-nez v1, :cond_c

    iget-object v1, v8, Lo/setChipEndPadding;->onPostMessage:Lo/setCloseIconEndPadding;

    goto :goto_4

    :cond_c
    iget-object v1, v8, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    :goto_4
    move-object v5, v1

    .line 59
    new-instance v4, Lo/setCloseIconEndPadding;

    .line 60
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v1

    invoke-virtual {v1}, Lo/setHelperTextEnabled;->ICustomTabsCallback$Stub()J

    move-result-wide v12

    const/4 v14, 0x1

    move-object v9, v4

    move-wide/from16 v15, p2

    invoke-direct/range {v9 .. v16}, Lo/setCloseIconEndPadding;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    .line 61
    iput-object v4, v8, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    .line 62
    iput-object v5, v8, Lo/setChipEndPadding;->onPostMessage:Lo/setCloseIconEndPadding;

    .line 63
    iput-object v4, v8, Lo/setChipEndPadding;->ICustomTabsCallback$Stub:Lo/setCloseIconEndPadding;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v6

    .line 65
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v9

    new-instance v10, Lo/setDividerDrawableVertical;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lo/setDividerDrawableVertical;-><init>(Lo/setChipEndPadding;Landroid/os/Bundle;Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;J)V

    .line 66
    invoke-virtual {v9, v10}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 52
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final bridge synthetic onPostMessage()Lo/setChipIconSize;
    .locals 1

    .line 310
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onPostMessage()Lo/setChipIconSize;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Landroid/app/Activity;)V
    .locals 4

    .line 267
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lo/setChipEndPadding;->asInterface:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 269
    :try_start_0
    iput-boolean v1, p0, Lo/setChipEndPadding;->onRelationshipValidationResult:Z

    const/4 v1, 0x1

    .line 270
    iput-boolean v1, p0, Lo/setChipEndPadding;->asBinder:Z

    .line 271
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 272
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    .line 273
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v3, Lo/zziq;->MediaBrowserCompat$ItemCallback:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    invoke-virtual {v2}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    iput-object v3, p0, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    .line 276
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    new-instance v2, Lo/setFlexWrap;

    invoke-direct {v2, p0, v0, v1}, Lo/setFlexWrap;-><init>(Lo/setChipEndPadding;J)V

    .line 277
    invoke-virtual {p1, v2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 279
    :cond_1
    invoke-direct {p0, p1}, Lo/setChipEndPadding;->extraCallback(Landroid/app/Activity;)Lo/setCloseIconEndPadding;

    move-result-object p1

    .line 280
    iget-object v2, p0, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    iput-object v2, p0, Lo/setChipEndPadding;->onPostMessage:Lo/setCloseIconEndPadding;

    .line 281
    iput-object v3, p0, Lo/setChipEndPadding;->onMessageChannelReady:Lo/setCloseIconEndPadding;

    .line 282
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v2

    new-instance v3, Lo/setChipSpacing;

    invoke-direct {v3, p0, p1, v0, v1}, Lo/setChipSpacing;-><init>(Lo/setChipEndPadding;Lo/setCloseIconEndPadding;J)V

    .line 283
    invoke-virtual {v2, v3}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPostMessage(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    .line 226
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "com.google.app_measurement.screen_service"

    .line 230
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 233
    :cond_2
    new-instance v0, Lo/setCloseIconEndPadding;

    const-string v1, "name"

    .line 234
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    .line 235
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 236
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lo/setCloseIconEndPadding;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 237
    iget-object p2, p0, Lo/setChipEndPadding;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Lo/setCloseIconEndPadding;)V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lo/setChipEndPadding;->ICustomTabsService:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setChipEndPadding;->ICustomTabsService:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 207
    :cond_0
    iput-object p1, p0, Lo/setChipEndPadding;->ICustomTabsService:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lo/setChipEndPadding;->getInterfaceDescriptor:Lo/setCloseIconEndPadding;

    .line 209
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic onRelationshipValidationResult()Lo/setExpanded;
    .locals 1

    .line 311
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onTransact()Lo/setChipEndPadding;
    .locals 1

    .line 313
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 321
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 324
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 325
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 318
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
