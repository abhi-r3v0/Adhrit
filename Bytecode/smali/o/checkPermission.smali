.class public final Lo/checkPermission;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPermissions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/checkPermission$onPostMessage;
    }
.end annotation


# static fields
.field private static final onPostMessage:[D


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub:Lo/unregisterReceiver;

.field private ICustomTabsCallback$Stub$Proxy:J

.field private ICustomTabsService:Z

.field private final asBinder:Lo/isSDKDebuggable;

.field private final asInterface:Lo/checkPermission$onPostMessage;

.field private extraCallback:J

.field private extraCommand:Z

.field private getInterfaceDescriptor:J

.field private mayLaunchUrl:Z

.field private newSession:J

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Lo/CryptLib;

.field private final onRelationshipValidationResult:[Z

.field private final onTransact:Lo/DreamAppGlideModule;

.field private warmup:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    .line 45
    fill-array-data v0, :array_0

    sput-object v0, Lo/checkPermission;->onPostMessage:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lo/checkPermission;-><init>(Lo/isSDKDebuggable;)V

    return-void
.end method

.method public constructor <init>(Lo/isSDKDebuggable;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lo/checkPermission;->asBinder:Lo/isSDKDebuggable;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 77
    iput-object v0, p0, Lo/checkPermission;->onRelationshipValidationResult:[Z

    .line 78
    new-instance v0, Lo/checkPermission$onPostMessage;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lo/checkPermission$onPostMessage;-><init>(I)V

    iput-object v0, p0, Lo/checkPermission;->asInterface:Lo/checkPermission$onPostMessage;

    if-eqz p1, :cond_0

    .line 80
    new-instance p1, Lo/unregisterReceiver;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Lo/unregisterReceiver;-><init>(II)V

    iput-object p1, p0, Lo/checkPermission;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    .line 81
    new-instance p1, Lo/DreamAppGlideModule;

    invoke-direct {p1}, Lo/DreamAppGlideModule;-><init>()V

    iput-object p1, p0, Lo/checkPermission;->onTransact:Lo/DreamAppGlideModule;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lo/checkPermission;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    .line 84
    iput-object p1, p0, Lo/checkPermission;->onTransact:Lo/DreamAppGlideModule;

    return-void
.end method

.method private static onPostMessage(Lo/checkPermission$onPostMessage;Ljava/lang/String;)Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/checkPermission$onPostMessage;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lo/p$a;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 218
    iget-object v1, v0, Lo/checkPermission$onPostMessage;->ICustomTabsCallback:[B

    iget v2, v0, Lo/checkPermission$onPostMessage;->onNavigationEvent:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x4

    .line 220
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x5

    .line 221
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x6

    .line 222
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v3, v2

    shr-int/lit8 v7, v5, 0x4

    or-int v13, v3, v7

    and-int/lit8 v3, v5, 0xf

    shl-int/lit8 v3, v3, 0x8

    or-int v14, v3, v6

    const/4 v3, 0x7

    .line 227
    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xf0

    shr-int/2addr v5, v2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    if-eq v5, v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, v14, 0x79

    int-to-float v2, v2

    mul-int/lit8 v5, v13, 0x64

    goto :goto_0

    :cond_1
    shl-int/lit8 v2, v14, 0x4

    int-to-float v2, v2

    mul-int/lit8 v5, v13, 0x9

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v14, 0x4

    int-to-float v2, v2

    mul-int/lit8 v5, v13, 0x3

    :goto_0
    int-to-float v5, v5

    div-float/2addr v2, v5

    move/from16 v18, v2

    :goto_1
    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/high16 v15, -0x40800000    # -1.0f

    .line 245
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, -0x1

    const/16 v19, 0x0

    const-string/jumbo v9, "video/mpeg2"

    move-object/from16 v8, p1

    .line 243
    invoke-static/range {v8 .. v19}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLo/generateLink;)Lo/p$a;

    move-result-object v2

    const-wide/16 v5, 0x0

    .line 248
    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    .line 249
    sget-object v7, Lo/checkPermission;->onPostMessage:[D

    array-length v8, v7

    if-ge v3, v8, :cond_4

    .line 250
    aget-wide v5, v7, v3

    .line 251
    iget v0, v0, Lo/checkPermission$onPostMessage;->extraCallback:I

    add-int/lit8 v0, v0, 0x9

    .line 252
    aget-byte v3, v1, v0

    and-int/lit8 v3, v3, 0x60

    shr-int/2addr v3, v4

    .line 253
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x1f

    if-eq v3, v0, :cond_3

    int-to-double v3, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v7

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    div-double/2addr v3, v0

    mul-double v5, v5, v3

    :cond_3
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v5

    double-to-long v5, v0

    .line 260
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final extraCallback(JI)V
    .locals 0

    .line 112
    iput-wide p1, p0, Lo/checkPermission;->warmup:J

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 90
    iget-object v0, p0, Lo/checkPermission;->onRelationshipValidationResult:[Z

    invoke-static {v0}, Lo/setViewPool;->extraCallback([Z)V

    .line 91
    iget-object v0, p0, Lo/checkPermission;->asInterface:Lo/checkPermission$onPostMessage;

    invoke-virtual {v0}, Lo/checkPermission$onPostMessage;->onMessageChannelReady()V

    .line 92
    iget-object v0, p0, Lo/checkPermission;->asBinder:Lo/isSDKDebuggable;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lo/checkPermission;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    invoke-virtual {v0}, Lo/unregisterReceiver;->onMessageChannelReady()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lo/checkPermission;->getInterfaceDescriptor:J

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lo/checkPermission;->ICustomTabsService:Z

    return-void
.end method

.method public final onNavigationEvent(Lo/DreamAppGlideModule;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 117
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v2

    .line 118
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v3

    .line 119
    iget-object v4, v1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 122
    iget-wide v5, v0, Lo/checkPermission;->getInterfaceDescriptor:J

    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lo/checkPermission;->getInterfaceDescriptor:J

    .line 123
    iget-object v5, v0, Lo/checkPermission;->onNavigationEvent:Lo/CryptLib;

    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 126
    :goto_0
    iget-object v5, v0, Lo/checkPermission;->onRelationshipValidationResult:[Z

    invoke-static {v4, v2, v3, v5}, Lo/setViewPool;->ICustomTabsCallback([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 130
    iget-boolean v1, v0, Lo/checkPermission;->onMessageChannelReady:Z

    if-nez v1, :cond_0

    .line 131
    iget-object v1, v0, Lo/checkPermission;->asInterface:Lo/checkPermission$onPostMessage;

    invoke-virtual {v1, v4, v2, v3}, Lo/checkPermission$onPostMessage;->onMessageChannelReady([BII)V

    .line 133
    :cond_0
    iget-object v1, v0, Lo/checkPermission;->asBinder:Lo/isSDKDebuggable;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, v0, Lo/checkPermission;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    invoke-virtual {v1, v4, v2, v3}, Lo/unregisterReceiver;->onPostMessage([BII)V

    :cond_1
    return-void

    .line 140
    :cond_2
    iget-object v6, v1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    add-int/lit8 v7, v5, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v8, v5, v2

    .line 145
    iget-boolean v9, v0, Lo/checkPermission;->onMessageChannelReady:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_5

    if-lez v8, :cond_3

    .line 147
    iget-object v9, v0, Lo/checkPermission;->asInterface:Lo/checkPermission$onPostMessage;

    invoke-virtual {v9, v4, v2, v5}, Lo/checkPermission$onPostMessage;->onMessageChannelReady([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 152
    :goto_1
    iget-object v12, v0, Lo/checkPermission;->asInterface:Lo/checkPermission$onPostMessage;

    invoke-virtual {v12, v6, v9}, Lo/checkPermission$onPostMessage;->ICustomTabsCallback(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 154
    iget-object v9, v0, Lo/checkPermission;->asInterface:Lo/checkPermission$onPostMessage;

    iget-object v12, v0, Lo/checkPermission;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v9, v12}, Lo/checkPermission;->onPostMessage(Lo/checkPermission$onPostMessage;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 155
    iget-object v12, v0, Lo/checkPermission;->onNavigationEvent:Lo/CryptLib;

    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lo/p$a;

    invoke-interface {v12, v13}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    .line 156
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Lo/checkPermission;->extraCallback:J

    .line 157
    iput-boolean v11, v0, Lo/checkPermission;->onMessageChannelReady:Z

    .line 160
    :cond_5
    iget-object v9, v0, Lo/checkPermission;->asBinder:Lo/isSDKDebuggable;

    if-eqz v9, :cond_8

    if-lez v8, :cond_6

    .line 163
    iget-object v8, v0, Lo/checkPermission;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    invoke-virtual {v8, v4, v2, v5}, Lo/unregisterReceiver;->onPostMessage([BII)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    neg-int v2, v8

    .line 168
    :goto_2
    iget-object v8, v0, Lo/checkPermission;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    invoke-virtual {v8, v2}, Lo/unregisterReceiver;->onNavigationEvent(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 169
    iget-object v2, v0, Lo/checkPermission;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    iget-object v2, v2, Lo/unregisterReceiver;->onPostMessage:[B

    iget-object v8, v0, Lo/checkPermission;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    iget v8, v8, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {v2, v8}, Lo/setViewPool;->extraCallback([BI)I

    move-result v2

    .line 170
    iget-object v8, v0, Lo/checkPermission;->onTransact:Lo/DreamAppGlideModule;

    iget-object v9, v0, Lo/checkPermission;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    iget-object v9, v9, Lo/unregisterReceiver;->onPostMessage:[B

    invoke-virtual {v8, v9, v2}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 171
    iget-object v2, v0, Lo/checkPermission;->asBinder:Lo/isSDKDebuggable;

    iget-wide v8, v0, Lo/checkPermission;->newSession:J

    iget-object v12, v0, Lo/checkPermission;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v2, v8, v9, v12}, Lo/isSDKDebuggable;->onNavigationEvent(JLo/DreamAppGlideModule;)V

    :cond_7
    const/16 v2, 0xb2

    if-ne v6, v2, :cond_8

    .line 174
    iget-object v2, v1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    add-int/lit8 v8, v5, 0x2

    aget-byte v2, v2, v8

    if-ne v2, v11, :cond_8

    .line 175
    iget-object v2, v0, Lo/checkPermission;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    invoke-virtual {v2, v6}, Lo/unregisterReceiver;->ICustomTabsCallback(I)V

    :cond_8
    if-eqz v6, :cond_a

    const/16 v2, 0xb3

    if-ne v6, v2, :cond_9

    goto :goto_3

    :cond_9
    const/16 v2, 0xb8

    if-ne v6, v2, :cond_11

    .line 197
    iput-boolean v11, v0, Lo/checkPermission;->mayLaunchUrl:Z

    goto :goto_5

    :cond_a
    :goto_3
    sub-int v2, v3, v5

    .line 180
    iget-boolean v5, v0, Lo/checkPermission;->ICustomTabsService:Z

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Lo/checkPermission;->extraCommand:Z

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Lo/checkPermission;->onMessageChannelReady:Z

    if-eqz v5, :cond_b

    .line 182
    iget-boolean v15, v0, Lo/checkPermission;->mayLaunchUrl:Z

    .line 183
    iget-wide v8, v0, Lo/checkPermission;->getInterfaceDescriptor:J

    iget-wide v12, v0, Lo/checkPermission;->ICustomTabsCallback$Stub$Proxy:J

    sub-long/2addr v8, v12

    long-to-int v5, v8

    sub-int v16, v5, v2

    .line 184
    iget-object v12, v0, Lo/checkPermission;->onNavigationEvent:Lo/CryptLib;

    iget-wide v13, v0, Lo/checkPermission;->newSession:J

    const/16 v18, 0x0

    move/from16 v17, v2

    invoke-interface/range {v12 .. v18}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    .line 186
    :cond_b
    iget-boolean v5, v0, Lo/checkPermission;->ICustomTabsService:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v0, Lo/checkPermission;->extraCommand:Z

    if-eqz v5, :cond_f

    .line 188
    :cond_c
    iget-wide v8, v0, Lo/checkPermission;->getInterfaceDescriptor:J

    int-to-long v12, v2

    sub-long/2addr v8, v12

    iput-wide v8, v0, Lo/checkPermission;->ICustomTabsCallback$Stub$Proxy:J

    .line 189
    iget-wide v8, v0, Lo/checkPermission;->warmup:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v8, v12

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    iget-boolean v2, v0, Lo/checkPermission;->ICustomTabsService:Z

    if-eqz v2, :cond_e

    iget-wide v8, v0, Lo/checkPermission;->newSession:J

    iget-wide v14, v0, Lo/checkPermission;->extraCallback:J

    add-long/2addr v8, v14

    goto :goto_4

    :cond_e
    const-wide/16 v8, 0x0

    :goto_4
    iput-wide v8, v0, Lo/checkPermission;->newSession:J

    .line 191
    iput-boolean v10, v0, Lo/checkPermission;->mayLaunchUrl:Z

    .line 192
    iput-wide v12, v0, Lo/checkPermission;->warmup:J

    .line 193
    iput-boolean v11, v0, Lo/checkPermission;->ICustomTabsService:Z

    :cond_f
    if-nez v6, :cond_10

    const/4 v10, 0x1

    .line 195
    :cond_10
    iput-boolean v10, v0, Lo/checkPermission;->extraCommand:Z

    :cond_11
    :goto_5
    move v2, v7

    goto/16 :goto_0
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 2

    .line 101
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 102
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/checkPermission;->ICustomTabsCallback:Ljava/lang/String;

    .line 103
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object v0

    iput-object v0, p0, Lo/checkPermission;->onNavigationEvent:Lo/CryptLib;

    .line 104
    iget-object v0, p0, Lo/checkPermission;->asBinder:Lo/isSDKDebuggable;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1, p2}, Lo/isSDKDebuggable;->ICustomTabsCallback(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V

    :cond_0
    return-void
.end method
