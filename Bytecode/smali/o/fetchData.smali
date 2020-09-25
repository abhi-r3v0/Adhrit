.class final Lo/fetchData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FileUtil$onNavigationEvent;


# instance fields
.field private final ICustomTabsCallback:J

.field private final ICustomTabsCallback$Stub:[J

.field private final extraCallback:J

.field private final onMessageChannelReady:J

.field private final onNavigationEvent:J

.field private final onPostMessage:I


# direct methods
.method private constructor <init>(JIJ)V
    .locals 9

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    .line 96
    invoke-direct/range {v0 .. v8}, Lo/fetchData;-><init>(JIJJ[J)V

    return-void
.end method

.method private constructor <init>(JIJJ[J)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-wide p1, p0, Lo/fetchData;->onMessageChannelReady:J

    .line 111
    iput p3, p0, Lo/fetchData;->onPostMessage:I

    .line 112
    iput-wide p4, p0, Lo/fetchData;->ICustomTabsCallback:J

    .line 113
    iput-object p8, p0, Lo/fetchData;->ICustomTabsCallback$Stub:[J

    .line 114
    iput-wide p6, p0, Lo/fetchData;->extraCallback:J

    const-wide/16 p3, -0x1

    cmp-long p5, p6, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p6

    .line 115
    :goto_0
    iput-wide p3, p0, Lo/fetchData;->onNavigationEvent:J

    return-void
.end method

.method public static ICustomTabsCallback(JJLo/ApiResponse;Lo/DreamAppGlideModule;)Lo/fetchData;
    .locals 22

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    .line 49
    iget v3, v2, Lo/ApiResponse;->asInterface:I

    .line 50
    iget v4, v2, Lo/ApiResponse;->onNavigationEvent:I

    .line 52
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 54
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v7, v6

    int-to-long v9, v3

    const-wide/32 v11, 0xf4240

    mul-long v9, v9, v11

    int-to-long v11, v4

    .line 58
    invoke-static/range {v7 .. v12}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v17

    const/4 v3, 0x6

    and-int/lit8 v4, v5, 0x6

    if-eq v4, v3, :cond_1

    .line 62
    new-instance v0, Lo/fetchData;

    iget v1, v2, Lo/ApiResponse;->ICustomTabsCallback:I

    move-object v13, v0

    move-wide/from16 v14, p2

    move/from16 v16, v1

    invoke-direct/range {v13 .. v18}, Lo/fetchData;-><init>(JIJ)V

    return-object v0

    .line 65
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0x64

    new-array v6, v5, [J

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    .line 68
    invoke-virtual/range {p5 .. p5}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v8

    int-to-long v8, v8

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v7, -0x1

    cmp-long v5, v0, v7

    if-eqz v5, :cond_3

    add-long v7, p2, v3

    cmp-long v5, v0, v7

    if-eqz v5, :cond_3

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "XING data size mismatch: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XingSeeker"

    invoke-static {v1, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_3
    new-instance v0, Lo/fetchData;

    iget v1, v2, Lo/ApiResponse;->ICustomTabsCallback:I

    move-object v13, v0

    move-wide/from16 v14, p2

    move/from16 v16, v1

    move-wide/from16 v19, v3

    move-object/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lo/fetchData;-><init>(JIJJ[J)V

    return-object v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private onMessageChannelReady(I)J
    .locals 4

    .line 187
    iget-wide v0, p0, Lo/fetchData;->ICustomTabsCallback:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final extraCallback()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lo/fetchData;->onNavigationEvent:J

    return-wide v0
.end method

.method public final onNavigationEvent(J)J
    .locals 11

    .line 153
    iget-wide v0, p0, Lo/fetchData;->onMessageChannelReady:J

    sub-long/2addr p1, v0

    .line 154
    invoke-virtual {p0}, Lo/fetchData;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lo/fetchData;->onPostMessage:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_2

    .line 157
    :cond_0
    iget-object v0, p0, Lo/fetchData;->ICustomTabsCallback$Stub:[J

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    long-to-double p1, p1

    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    mul-double p1, p1, v1

    .line 158
    iget-wide v1, p0, Lo/fetchData;->extraCallback:J

    long-to-double v1, v1

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    .line 159
    invoke-static {v0, v1, v2, v3, v3}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback([JJZZ)I

    move-result v1

    .line 160
    invoke-direct {p0, v1}, Lo/fetchData;->onMessageChannelReady(I)J

    move-result-wide v2

    .line 161
    aget-wide v4, v0, v1

    add-int/lit8 v6, v1, 0x1

    .line 162
    invoke-direct {p0, v6}, Lo/fetchData;->onMessageChannelReady(I)J

    move-result-wide v7

    const/16 v9, 0x63

    if-ne v1, v9, :cond_1

    const-wide/16 v0, 0x100

    goto :goto_0

    .line 163
    :cond_1
    aget-wide v9, v0, v6

    move-wide v0, v9

    :goto_0
    cmp-long v6, v4, v0

    if-nez v6, :cond_2

    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_2
    long-to-double v9, v4

    sub-double/2addr p1, v9

    sub-long/2addr v0, v4

    long-to-double v0, v0

    div-double/2addr p1, v0

    :goto_1
    sub-long/2addr v7, v2

    long-to-double v0, v7

    mul-double p1, p1, v0

    .line 167
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    add-long/2addr v2, p1

    return-wide v2

    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lo/fetchData;->ICustomTabsCallback$Stub:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
