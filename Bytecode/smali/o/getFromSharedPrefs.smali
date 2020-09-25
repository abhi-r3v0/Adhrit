.class public final Lo/getFromSharedPrefs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPermissions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getFromSharedPrefs$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:J

.field private final ICustomTabsCallback$Stub$Proxy:Lo/DreamAppGlideModule;

.field private ICustomTabsService:J

.field private final asBinder:[Z

.field private asInterface:Ljava/lang/String;

.field private final extraCallback:Lo/loadFile;

.field private getInterfaceDescriptor:Z

.field private newSession:Z

.field private final onMessageChannelReady:Lo/unregisterReceiver;

.field private final onNavigationEvent:Lo/unregisterReceiver;

.field private final onPostMessage:Z

.field private final onRelationshipValidationResult:Lo/unregisterReceiver;

.field private onTransact:Lo/CryptLib;

.field private warmup:Lo/getFromSharedPrefs$extraCallback;


# direct methods
.method public constructor <init>(Lo/loadFile;ZZ)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lo/getFromSharedPrefs;->extraCallback:Lo/loadFile;

    .line 79
    iput-boolean p2, p0, Lo/getFromSharedPrefs;->ICustomTabsCallback:Z

    .line 80
    iput-boolean p3, p0, Lo/getFromSharedPrefs;->onPostMessage:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 81
    iput-object p1, p0, Lo/getFromSharedPrefs;->asBinder:[Z

    .line 82
    new-instance p1, Lo/unregisterReceiver;

    const/16 p2, 0x80

    const/4 p3, 0x7

    invoke-direct {p1, p3, p2}, Lo/unregisterReceiver;-><init>(II)V

    iput-object p1, p0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    .line 83
    new-instance p1, Lo/unregisterReceiver;

    const/16 p3, 0x8

    invoke-direct {p1, p3, p2}, Lo/unregisterReceiver;-><init>(II)V

    iput-object p1, p0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    .line 84
    new-instance p1, Lo/unregisterReceiver;

    const/4 p3, 0x6

    invoke-direct {p1, p3, p2}, Lo/unregisterReceiver;-><init>(II)V

    iput-object p1, p0, Lo/getFromSharedPrefs;->onRelationshipValidationResult:Lo/unregisterReceiver;

    .line 85
    new-instance p1, Lo/DreamAppGlideModule;

    invoke-direct {p1}, Lo/DreamAppGlideModule;-><init>()V

    iput-object p1, p0, Lo/getFromSharedPrefs;->ICustomTabsCallback$Stub$Proxy:Lo/DreamAppGlideModule;

    return-void
.end method

.method private extraCallback(JIJ)V
    .locals 7

    .line 163
    iget-boolean v0, p0, Lo/getFromSharedPrefs;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    invoke-virtual {v0}, Lo/getFromSharedPrefs$extraCallback;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    iget-object v0, p0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    invoke-virtual {v0, p3}, Lo/unregisterReceiver;->ICustomTabsCallback(I)V

    .line 165
    iget-object v0, p0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    invoke-virtual {v0, p3}, Lo/unregisterReceiver;->ICustomTabsCallback(I)V

    .line 167
    :cond_1
    iget-object v0, p0, Lo/getFromSharedPrefs;->onRelationshipValidationResult:Lo/unregisterReceiver;

    invoke-virtual {v0, p3}, Lo/unregisterReceiver;->ICustomTabsCallback(I)V

    .line 168
    iget-object v1, p0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/getFromSharedPrefs$extraCallback;->extraCallback(JIJ)V

    return-void
.end method

.method private onPostMessage(JIIJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 181
    iget-boolean v2, v0, Lo/getFromSharedPrefs;->getInterfaceDescriptor:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    invoke-virtual {v2}, Lo/getFromSharedPrefs$extraCallback;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    :cond_0
    iget-object v2, v0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    invoke-virtual {v2, v1}, Lo/unregisterReceiver;->onNavigationEvent(I)Z

    .line 183
    iget-object v2, v0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    invoke-virtual {v2, v1}, Lo/unregisterReceiver;->onNavigationEvent(I)Z

    .line 184
    iget-boolean v2, v0, Lo/getFromSharedPrefs;->getInterfaceDescriptor:Z

    const/4 v3, 0x3

    if-nez v2, :cond_1

    .line 185
    iget-object v2, v0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    invoke-virtual {v2}, Lo/unregisterReceiver;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    invoke-virtual {v2}, Lo/unregisterReceiver;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 187
    iget-object v2, v0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    iget-object v2, v2, Lo/unregisterReceiver;->onPostMessage:[B

    iget-object v4, v0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    iget v4, v4, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v2, v0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    iget-object v2, v2, Lo/unregisterReceiver;->onPostMessage:[B

    iget-object v4, v0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    iget v4, v4, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v2, v0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    iget-object v2, v2, Lo/unregisterReceiver;->onPostMessage:[B

    iget-object v4, v0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    iget v4, v4, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {v2, v3, v4}, Lo/setViewPool;->ICustomTabsCallback([BII)Lo/setViewPool$extraCallback;

    move-result-object v2

    .line 190
    iget-object v4, v0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    iget-object v4, v4, Lo/unregisterReceiver;->onPostMessage:[B

    iget-object v5, v0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    iget v5, v5, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {v4, v3, v5}, Lo/setViewPool;->onNavigationEvent([BII)Lo/setViewPool$onNavigationEvent;

    move-result-object v3

    .line 191
    iget-object v15, v0, Lo/getFromSharedPrefs;->onTransact:Lo/CryptLib;

    iget-object v4, v0, Lo/getFromSharedPrefs;->asInterface:Ljava/lang/String;

    iget v5, v2, Lo/setViewPool$extraCallback;->onPostMessage:I

    iget v6, v2, Lo/setViewPool$extraCallback;->ICustomTabsCallback:I

    iget v7, v2, Lo/setViewPool$extraCallback;->onNavigationEvent:I

    .line 195
    invoke-static {v5, v6, v7}, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->extraCallback(III)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, -0x1

    iget v9, v2, Lo/setViewPool$extraCallback;->extraCallback:I

    iget v10, v2, Lo/setViewPool$extraCallback;->onRelationshipValidationResult:I

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v13, -0x1

    iget v14, v2, Lo/setViewPool$extraCallback;->ICustomTabsCallback$Stub:F

    const/16 v16, 0x0

    const-string/jumbo v5, "video/avc"

    move-object v1, v15

    move-object/from16 v15, v16

    .line 192
    invoke-static/range {v4 .. v15}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLo/generateLink;)Lo/p$a;

    move-result-object v4

    .line 191
    invoke-interface {v1, v4}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    const/4 v1, 0x1

    .line 208
    iput-boolean v1, v0, Lo/getFromSharedPrefs;->getInterfaceDescriptor:Z

    .line 209
    iget-object v1, v0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    invoke-virtual {v1, v2}, Lo/getFromSharedPrefs$extraCallback;->onPostMessage(Lo/setViewPool$extraCallback;)V

    .line 210
    iget-object v1, v0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    invoke-virtual {v1, v3}, Lo/getFromSharedPrefs$extraCallback;->onMessageChannelReady(Lo/setViewPool$onNavigationEvent;)V

    .line 211
    iget-object v1, v0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    invoke-virtual {v1}, Lo/unregisterReceiver;->onMessageChannelReady()V

    .line 212
    iget-object v1, v0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    invoke-virtual {v1}, Lo/unregisterReceiver;->onMessageChannelReady()V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v1, v0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    invoke-virtual {v1}, Lo/unregisterReceiver;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, v0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    iget-object v1, v1, Lo/unregisterReceiver;->onPostMessage:[B

    iget-object v2, v0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    iget v2, v2, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {v1, v3, v2}, Lo/setViewPool;->ICustomTabsCallback([BII)Lo/setViewPool$extraCallback;

    move-result-object v1

    .line 216
    iget-object v2, v0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    invoke-virtual {v2, v1}, Lo/getFromSharedPrefs$extraCallback;->onPostMessage(Lo/setViewPool$extraCallback;)V

    .line 217
    iget-object v1, v0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    invoke-virtual {v1}, Lo/unregisterReceiver;->onMessageChannelReady()V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v1, v0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    invoke-virtual {v1}, Lo/unregisterReceiver;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    iget-object v1, v0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    iget-object v1, v1, Lo/unregisterReceiver;->onPostMessage:[B

    iget-object v2, v0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    iget v2, v2, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {v1, v3, v2}, Lo/setViewPool;->onNavigationEvent([BII)Lo/setViewPool$onNavigationEvent;

    move-result-object v1

    .line 220
    iget-object v2, v0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    invoke-virtual {v2, v1}, Lo/getFromSharedPrefs$extraCallback;->onMessageChannelReady(Lo/setViewPool$onNavigationEvent;)V

    .line 221
    iget-object v1, v0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    invoke-virtual {v1}, Lo/unregisterReceiver;->onMessageChannelReady()V

    .line 224
    :cond_3
    :goto_0
    iget-object v1, v0, Lo/getFromSharedPrefs;->onRelationshipValidationResult:Lo/unregisterReceiver;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lo/unregisterReceiver;->onNavigationEvent(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    iget-object v1, v0, Lo/getFromSharedPrefs;->onRelationshipValidationResult:Lo/unregisterReceiver;

    iget-object v1, v1, Lo/unregisterReceiver;->onPostMessage:[B

    iget-object v2, v0, Lo/getFromSharedPrefs;->onRelationshipValidationResult:Lo/unregisterReceiver;

    iget v2, v2, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {v1, v2}, Lo/setViewPool;->extraCallback([BI)I

    move-result v1

    .line 226
    iget-object v2, v0, Lo/getFromSharedPrefs;->ICustomTabsCallback$Stub$Proxy:Lo/DreamAppGlideModule;

    iget-object v3, v0, Lo/getFromSharedPrefs;->onRelationshipValidationResult:Lo/unregisterReceiver;

    iget-object v3, v3, Lo/unregisterReceiver;->onPostMessage:[B

    invoke-virtual {v2, v3, v1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 227
    iget-object v1, v0, Lo/getFromSharedPrefs;->ICustomTabsCallback$Stub$Proxy:Lo/DreamAppGlideModule;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 228
    iget-object v1, v0, Lo/getFromSharedPrefs;->extraCallback:Lo/loadFile;

    iget-object v2, v0, Lo/getFromSharedPrefs;->ICustomTabsCallback$Stub$Proxy:Lo/DreamAppGlideModule;

    move-wide/from16 v3, p5

    invoke-virtual {v1, v3, v4, v2}, Lo/loadFile;->extraCallback(JLo/DreamAppGlideModule;)V

    .line 230
    :cond_4
    iget-object v3, v0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    iget-boolean v7, v0, Lo/getFromSharedPrefs;->getInterfaceDescriptor:Z

    iget-boolean v8, v0, Lo/getFromSharedPrefs;->newSession:Z

    move-wide/from16 v4, p1

    move/from16 v6, p3

    .line 231
    invoke-virtual/range {v3 .. v8}, Lo/getFromSharedPrefs$extraCallback;->onNavigationEvent(JIZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 236
    iput-boolean v1, v0, Lo/getFromSharedPrefs;->newSession:Z

    :cond_5
    return-void
.end method

.method private onPostMessage([BII)V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lo/getFromSharedPrefs;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    invoke-virtual {v0}, Lo/getFromSharedPrefs$extraCallback;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    iget-object v0, p0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    invoke-virtual {v0, p1, p2, p3}, Lo/unregisterReceiver;->onPostMessage([BII)V

    .line 174
    iget-object v0, p0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    invoke-virtual {v0, p1, p2, p3}, Lo/unregisterReceiver;->onPostMessage([BII)V

    .line 176
    :cond_1
    iget-object v0, p0, Lo/getFromSharedPrefs;->onRelationshipValidationResult:Lo/unregisterReceiver;

    invoke-virtual {v0, p1, p2, p3}, Lo/unregisterReceiver;->onPostMessage([BII)V

    .line 177
    iget-object v0, p0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    invoke-virtual {v0, p1, p2, p3}, Lo/getFromSharedPrefs$extraCallback;->onPostMessage([BII)V

    return-void
.end method


# virtual methods
.method public final extraCallback(JI)V
    .locals 0

    .line 110
    iput-wide p1, p0, Lo/getFromSharedPrefs;->ICustomTabsService:J

    .line 111
    iget-boolean p1, p0, Lo/getFromSharedPrefs;->newSession:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lo/getFromSharedPrefs;->newSession:Z

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 90
    iget-object v0, p0, Lo/getFromSharedPrefs;->asBinder:[Z

    invoke-static {v0}, Lo/setViewPool;->extraCallback([Z)V

    .line 91
    iget-object v0, p0, Lo/getFromSharedPrefs;->onNavigationEvent:Lo/unregisterReceiver;

    invoke-virtual {v0}, Lo/unregisterReceiver;->onMessageChannelReady()V

    .line 92
    iget-object v0, p0, Lo/getFromSharedPrefs;->onMessageChannelReady:Lo/unregisterReceiver;

    invoke-virtual {v0}, Lo/unregisterReceiver;->onMessageChannelReady()V

    .line 93
    iget-object v0, p0, Lo/getFromSharedPrefs;->onRelationshipValidationResult:Lo/unregisterReceiver;

    invoke-virtual {v0}, Lo/unregisterReceiver;->onMessageChannelReady()V

    .line 94
    iget-object v0, p0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    invoke-virtual {v0}, Lo/getFromSharedPrefs$extraCallback;->onMessageChannelReady()V

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lo/getFromSharedPrefs;->ICustomTabsCallback$Stub:J

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lo/getFromSharedPrefs;->newSession:Z

    return-void
.end method

.method public final onNavigationEvent(Lo/DreamAppGlideModule;)V
    .locals 14

    .line 116
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 117
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    .line 118
    iget-object v2, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 121
    iget-wide v3, p0, Lo/getFromSharedPrefs;->ICustomTabsCallback$Stub:J

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lo/getFromSharedPrefs;->ICustomTabsCallback$Stub:J

    .line 122
    iget-object v3, p0, Lo/getFromSharedPrefs;->onTransact:Lo/CryptLib;

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 126
    :goto_0
    iget-object p1, p0, Lo/getFromSharedPrefs;->asBinder:[Z

    invoke-static {v2, v0, v1, p1}, Lo/setViewPool;->ICustomTabsCallback([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 130
    invoke-direct {p0, v2, v0, v1}, Lo/getFromSharedPrefs;->onPostMessage([BII)V

    return-void

    .line 135
    :cond_0
    invoke-static {v2, p1}, Lo/setViewPool;->ICustomTabsCallback([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    .line 141
    invoke-direct {p0, v2, v0, p1}, Lo/getFromSharedPrefs;->onPostMessage([BII)V

    :cond_1
    sub-int v10, v1, p1

    .line 144
    iget-wide v4, p0, Lo/getFromSharedPrefs;->ICustomTabsCallback$Stub:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    move v11, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 148
    :goto_1
    iget-wide v12, p0, Lo/getFromSharedPrefs;->ICustomTabsService:J

    move-object v7, p0

    move-wide v8, v4

    invoke-direct/range {v7 .. v13}, Lo/getFromSharedPrefs;->onPostMessage(JIIJ)V

    .line 151
    iget-wide v7, p0, Lo/getFromSharedPrefs;->ICustomTabsService:J

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lo/getFromSharedPrefs;->extraCallback(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 4

    .line 101
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 102
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getFromSharedPrefs;->asInterface:Ljava/lang/String;

    .line 103
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object v0

    iput-object v0, p0, Lo/getFromSharedPrefs;->onTransact:Lo/CryptLib;

    .line 104
    new-instance v1, Lo/getFromSharedPrefs$extraCallback;

    iget-boolean v2, p0, Lo/getFromSharedPrefs;->ICustomTabsCallback:Z

    iget-boolean v3, p0, Lo/getFromSharedPrefs;->onPostMessage:Z

    invoke-direct {v1, v0, v2, v3}, Lo/getFromSharedPrefs$extraCallback;-><init>(Lo/CryptLib;ZZ)V

    iput-object v1, p0, Lo/getFromSharedPrefs;->warmup:Lo/getFromSharedPrefs$extraCallback;

    .line 105
    iget-object v0, p0, Lo/getFromSharedPrefs;->extraCallback:Lo/loadFile;

    invoke-virtual {v0, p1, p2}, Lo/loadFile;->onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V

    return-void
.end method
