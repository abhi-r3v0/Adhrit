.class final Lo/getCredentials;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FileUtil$onNavigationEvent;


# instance fields
.field private final ICustomTabsCallback:[J

.field private final extraCallback:J

.field private final onMessageChannelReady:J

.field private final onNavigationEvent:[J


# direct methods
.method private constructor <init>([J[JJJ)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lo/getCredentials;->onNavigationEvent:[J

    .line 102
    iput-object p2, p0, Lo/getCredentials;->ICustomTabsCallback:[J

    .line 103
    iput-wide p3, p0, Lo/getCredentials;->extraCallback:J

    .line 104
    iput-wide p5, p0, Lo/getCredentials;->onMessageChannelReady:J

    return-void
.end method

.method public static extraCallback(JJLo/ApiResponse;Lo/DreamAppGlideModule;)Lo/getCredentials;
    .locals 22

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0xa

    .line 48
    invoke-virtual {v3, v4}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 49
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return-object v5

    .line 53
    :cond_0
    iget v6, v2, Lo/ApiResponse;->onNavigationEvent:I

    int-to-long v7, v4

    const-wide/32 v9, 0xf4240

    const/16 v4, 0x7d00

    if-lt v6, v4, :cond_1

    const/16 v4, 0x480

    goto :goto_0

    :cond_1
    const/16 v4, 0x240

    :goto_0
    int-to-long v11, v4

    mul-long v9, v9, v11

    int-to-long v11, v6

    .line 54
    invoke-static/range {v7 .. v12}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v16

    .line 56
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v4

    .line 57
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v6

    .line 58
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v7

    const/4 v8, 0x2

    .line 59
    invoke-virtual {v3, v8}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 61
    iget v2, v2, Lo/ApiResponse;->ICustomTabsCallback:I

    int-to-long v9, v2

    add-long v9, p2, v9

    .line 63
    new-array v14, v4, [J

    .line 64
    new-array v15, v4, [J

    const/4 v2, 0x0

    move-wide/from16 v11, p2

    :goto_1
    if-ge v2, v4, :cond_6

    move/from16 v18, v6

    int-to-long v5, v2

    mul-long v5, v5, v16

    move-wide/from16 v20, v9

    int-to-long v8, v4

    .line 66
    div-long/2addr v5, v8

    aput-wide v5, v14, v2

    move-wide/from16 v5, v20

    .line 69
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    aput-wide v8, v15, v2

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v9, 0x3

    if-eq v7, v9, :cond_3

    const/4 v9, 0x4

    if-eq v7, v9, :cond_2

    const/4 v9, 0x0

    return-object v9

    :cond_2
    const/4 v9, 0x0

    .line 82
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v10

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 79
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->newSession()I

    move-result v10

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 76
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v10

    goto :goto_2

    :cond_5
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 73
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v10

    :goto_2
    mul-int v10, v10, v18

    int-to-long v8, v10

    add-long/2addr v11, v8

    add-int/lit8 v2, v2, 0x1

    move-wide v9, v5

    move/from16 v6, v18

    const/4 v5, 0x0

    const/4 v8, 0x2

    goto :goto_1

    :cond_6
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    cmp-long v2, v0, v11

    if-eqz v2, :cond_7

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VBRI data size mismatch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VbriSeeker"

    invoke-static {v1, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_7
    new-instance v0, Lo/getCredentials;

    move-object v13, v0

    move-wide/from16 v18, v11

    invoke-direct/range {v13 .. v19}, Lo/getCredentials;-><init>([J[JJJ)V

    return-object v0
.end method


# virtual methods
.method public final extraCallback()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lo/getCredentials;->onMessageChannelReady:J

    return-wide v0
.end method

.method public final onNavigationEvent(J)J
    .locals 3

    .line 126
    iget-object v0, p0, Lo/getCredentials;->onNavigationEvent:[J

    iget-object v1, p0, Lo/getCredentials;->ICustomTabsCallback:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
