.class public final Lo/getSha256;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPermissions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getSha256$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub:Lo/unregisterReceiver;

.field private ICustomTabsCallback$Stub$Proxy:J

.field private final ICustomTabsService:Lo/DreamAppGlideModule;

.field private final asBinder:Lo/unregisterReceiver;

.field private final asInterface:[Z

.field private extraCallback:Lo/getSha256$onMessageChannelReady;

.field private newSession:J

.field private final onMessageChannelReady:Lo/loadFile;

.field private onNavigationEvent:Z

.field private onPostMessage:Lo/CryptLib;

.field private final onRelationshipValidationResult:Lo/unregisterReceiver;

.field private final onTransact:Lo/unregisterReceiver;

.field private final warmup:Lo/unregisterReceiver;


# direct methods
.method public constructor <init>(Lo/loadFile;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lo/getSha256;->onMessageChannelReady:Lo/loadFile;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 76
    iput-object p1, p0, Lo/getSha256;->asInterface:[Z

    .line 77
    new-instance p1, Lo/unregisterReceiver;

    const/16 v0, 0x80

    const/16 v1, 0x20

    invoke-direct {p1, v1, v0}, Lo/unregisterReceiver;-><init>(II)V

    iput-object p1, p0, Lo/getSha256;->asBinder:Lo/unregisterReceiver;

    .line 78
    new-instance p1, Lo/unregisterReceiver;

    const/16 v1, 0x21

    invoke-direct {p1, v1, v0}, Lo/unregisterReceiver;-><init>(II)V

    iput-object p1, p0, Lo/getSha256;->onTransact:Lo/unregisterReceiver;

    .line 79
    new-instance p1, Lo/unregisterReceiver;

    const/16 v1, 0x22

    invoke-direct {p1, v1, v0}, Lo/unregisterReceiver;-><init>(II)V

    iput-object p1, p0, Lo/getSha256;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    .line 80
    new-instance p1, Lo/unregisterReceiver;

    const/16 v1, 0x27

    invoke-direct {p1, v1, v0}, Lo/unregisterReceiver;-><init>(II)V

    iput-object p1, p0, Lo/getSha256;->onRelationshipValidationResult:Lo/unregisterReceiver;

    .line 81
    new-instance p1, Lo/unregisterReceiver;

    const/16 v1, 0x28

    invoke-direct {p1, v1, v0}, Lo/unregisterReceiver;-><init>(II)V

    iput-object p1, p0, Lo/getSha256;->warmup:Lo/unregisterReceiver;

    .line 82
    new-instance p1, Lo/DreamAppGlideModule;

    invoke-direct {p1}, Lo/DreamAppGlideModule;-><init>()V

    iput-object p1, p0, Lo/getSha256;->ICustomTabsService:Lo/DreamAppGlideModule;

    return-void
.end method

.method private ICustomTabsCallback(JIIJ)V
    .locals 2

    .line 188
    iget-boolean v0, p0, Lo/getSha256;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lo/getSha256;->extraCallback:Lo/getSha256$onMessageChannelReady;

    invoke-virtual {v0, p1, p2, p3}, Lo/getSha256$onMessageChannelReady;->onPostMessage(JI)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lo/getSha256;->asBinder:Lo/unregisterReceiver;

    invoke-virtual {p1, p4}, Lo/unregisterReceiver;->onNavigationEvent(I)Z

    .line 192
    iget-object p1, p0, Lo/getSha256;->onTransact:Lo/unregisterReceiver;

    invoke-virtual {p1, p4}, Lo/unregisterReceiver;->onNavigationEvent(I)Z

    .line 193
    iget-object p1, p0, Lo/getSha256;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    invoke-virtual {p1, p4}, Lo/unregisterReceiver;->onNavigationEvent(I)Z

    .line 194
    iget-object p1, p0, Lo/getSha256;->asBinder:Lo/unregisterReceiver;

    invoke-virtual {p1}, Lo/unregisterReceiver;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/getSha256;->onTransact:Lo/unregisterReceiver;

    invoke-virtual {p1}, Lo/unregisterReceiver;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/getSha256;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    invoke-virtual {p1}, Lo/unregisterReceiver;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lo/getSha256;->onPostMessage:Lo/CryptLib;

    iget-object p2, p0, Lo/getSha256;->ICustomTabsCallback:Ljava/lang/String;

    iget-object p3, p0, Lo/getSha256;->asBinder:Lo/unregisterReceiver;

    iget-object v0, p0, Lo/getSha256;->onTransact:Lo/unregisterReceiver;

    iget-object v1, p0, Lo/getSha256;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    invoke-static {p2, p3, v0, v1}, Lo/getSha256;->onNavigationEvent(Ljava/lang/String;Lo/unregisterReceiver;Lo/unregisterReceiver;Lo/unregisterReceiver;)Lo/p$a;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lo/getSha256;->onNavigationEvent:Z

    .line 199
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/getSha256;->onRelationshipValidationResult:Lo/unregisterReceiver;

    invoke-virtual {p1, p4}, Lo/unregisterReceiver;->onNavigationEvent(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_2

    .line 200
    iget-object p1, p0, Lo/getSha256;->onRelationshipValidationResult:Lo/unregisterReceiver;

    iget-object p1, p1, Lo/unregisterReceiver;->onPostMessage:[B

    iget-object p3, p0, Lo/getSha256;->onRelationshipValidationResult:Lo/unregisterReceiver;

    iget p3, p3, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {p1, p3}, Lo/setViewPool;->extraCallback([BI)I

    move-result p1

    .line 201
    iget-object p3, p0, Lo/getSha256;->ICustomTabsService:Lo/DreamAppGlideModule;

    iget-object v0, p0, Lo/getSha256;->onRelationshipValidationResult:Lo/unregisterReceiver;

    iget-object v0, v0, Lo/unregisterReceiver;->onPostMessage:[B

    invoke-virtual {p3, v0, p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 204
    iget-object p1, p0, Lo/getSha256;->ICustomTabsService:Lo/DreamAppGlideModule;

    invoke-virtual {p1, p2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 205
    iget-object p1, p0, Lo/getSha256;->onMessageChannelReady:Lo/loadFile;

    iget-object p3, p0, Lo/getSha256;->ICustomTabsService:Lo/DreamAppGlideModule;

    invoke-virtual {p1, p5, p6, p3}, Lo/loadFile;->extraCallback(JLo/DreamAppGlideModule;)V

    .line 207
    :cond_2
    iget-object p1, p0, Lo/getSha256;->warmup:Lo/unregisterReceiver;

    invoke-virtual {p1, p4}, Lo/unregisterReceiver;->onNavigationEvent(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 208
    iget-object p1, p0, Lo/getSha256;->warmup:Lo/unregisterReceiver;

    iget-object p1, p1, Lo/unregisterReceiver;->onPostMessage:[B

    iget-object p3, p0, Lo/getSha256;->warmup:Lo/unregisterReceiver;

    iget p3, p3, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {p1, p3}, Lo/setViewPool;->extraCallback([BI)I

    move-result p1

    .line 209
    iget-object p3, p0, Lo/getSha256;->ICustomTabsService:Lo/DreamAppGlideModule;

    iget-object p4, p0, Lo/getSha256;->warmup:Lo/unregisterReceiver;

    iget-object p4, p4, Lo/unregisterReceiver;->onPostMessage:[B

    invoke-virtual {p3, p4, p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 212
    iget-object p1, p0, Lo/getSha256;->ICustomTabsService:Lo/DreamAppGlideModule;

    invoke-virtual {p1, p2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 213
    iget-object p1, p0, Lo/getSha256;->onMessageChannelReady:Lo/loadFile;

    iget-object p2, p0, Lo/getSha256;->ICustomTabsService:Lo/DreamAppGlideModule;

    invoke-virtual {p1, p5, p6, p2}, Lo/loadFile;->extraCallback(JLo/DreamAppGlideModule;)V

    :cond_3
    return-void
.end method

.method private static extraCallback(Lo/UploadWorker;)V
    .locals 8

    .line 356
    invoke-virtual {p0}, Lo/UploadWorker;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    if-eqz v2, :cond_0

    .line 366
    invoke-virtual {p0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v3

    :cond_0
    if-eqz v3, :cond_2

    .line 369
    invoke-virtual {p0}, Lo/UploadWorker;->extraCallback()V

    .line 370
    invoke-virtual {p0}, Lo/UploadWorker;->onPostMessage()I

    const/4 v5, 0x0

    :goto_1
    if-gt v5, v4, :cond_5

    .line 372
    invoke-virtual {p0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 373
    invoke-virtual {p0}, Lo/UploadWorker;->extraCallback()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 377
    :cond_2
    invoke-virtual {p0}, Lo/UploadWorker;->onPostMessage()I

    move-result v4

    .line 378
    invoke-virtual {p0}, Lo/UploadWorker;->onPostMessage()I

    move-result v5

    add-int v6, v4, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    .line 381
    invoke-virtual {p0}, Lo/UploadWorker;->onPostMessage()I

    .line 382
    invoke-virtual {p0}, Lo/UploadWorker;->extraCallback()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_4

    .line 385
    invoke-virtual {p0}, Lo/UploadWorker;->onPostMessage()I

    .line 386
    invoke-virtual {p0}, Lo/UploadWorker;->extraCallback()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private static onMessageChannelReady(Lo/UploadWorker;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 334
    invoke-virtual {p0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 336
    invoke-virtual {p0}, Lo/UploadWorker;->onPostMessage()I

    goto :goto_3

    :cond_0
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    .line 338
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    .line 341
    invoke-virtual {p0}, Lo/UploadWorker;->ICustomTabsCallback()I

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 344
    invoke-virtual {p0}, Lo/UploadWorker;->ICustomTabsCallback()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    const/4 v5, 0x3

    :cond_3
    add-int/2addr v3, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static onNavigationEvent(Ljava/lang/String;Lo/unregisterReceiver;Lo/unregisterReceiver;Lo/unregisterReceiver;)Lo/p$a;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 220
    iget v3, v0, Lo/unregisterReceiver;->ICustomTabsCallback:I

    iget v4, v1, Lo/unregisterReceiver;->ICustomTabsCallback:I

    add-int/2addr v3, v4

    iget v4, v2, Lo/unregisterReceiver;->ICustomTabsCallback:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 221
    iget-object v4, v0, Lo/unregisterReceiver;->onPostMessage:[B

    iget v5, v0, Lo/unregisterReceiver;->ICustomTabsCallback:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object v4, v1, Lo/unregisterReceiver;->onPostMessage:[B

    iget v5, v0, Lo/unregisterReceiver;->ICustomTabsCallback:I

    iget v7, v1, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget-object v4, v2, Lo/unregisterReceiver;->onPostMessage:[B

    iget v0, v0, Lo/unregisterReceiver;->ICustomTabsCallback:I

    iget v5, v1, Lo/unregisterReceiver;->ICustomTabsCallback:I

    add-int/2addr v0, v5

    iget v2, v2, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {v4, v6, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    new-instance v0, Lo/UploadWorker;

    iget-object v2, v1, Lo/unregisterReceiver;->onPostMessage:[B

    iget v1, v1, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-direct {v0, v2, v6, v1}, Lo/UploadWorker;-><init>([BII)V

    const/16 v1, 0x2c

    .line 227
    invoke-virtual {v0, v1}, Lo/UploadWorker;->onMessageChannelReady(I)V

    const/4 v1, 0x3

    .line 228
    invoke-virtual {v0, v1}, Lo/UploadWorker;->extraCallback(I)I

    move-result v2

    .line 229
    invoke-virtual {v0}, Lo/UploadWorker;->extraCallback()V

    const/16 v4, 0x58

    .line 232
    invoke-virtual {v0, v4}, Lo/UploadWorker;->onMessageChannelReady(I)V

    const/16 v4, 0x8

    .line 233
    invoke-virtual {v0, v4}, Lo/UploadWorker;->onMessageChannelReady(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 236
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, 0x59

    .line 239
    :cond_0
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {v0, v7}, Lo/UploadWorker;->onMessageChannelReady(I)V

    const/4 v5, 0x2

    if-lez v2, :cond_3

    rsub-int/lit8 v7, v2, 0x8

    mul-int/lit8 v7, v7, 0x2

    .line 245
    invoke-virtual {v0, v7}, Lo/UploadWorker;->onMessageChannelReady(I)V

    .line 248
    :cond_3
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 249
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v7

    if-ne v7, v1, :cond_4

    .line 251
    invoke-virtual {v0}, Lo/UploadWorker;->extraCallback()V

    .line 253
    :cond_4
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v1

    .line 254
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v8

    .line 255
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_8

    .line 256
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v9

    .line 257
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v11

    .line 258
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v12

    .line 259
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v13

    if-eq v7, v10, :cond_6

    if-ne v7, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v14, 0x2

    :goto_2
    if-ne v7, v10, :cond_7

    const/4 v7, 0x2

    goto :goto_3

    :cond_7
    const/4 v7, 0x1

    :goto_3
    add-int/2addr v9, v11

    mul-int v14, v14, v9

    sub-int/2addr v1, v14

    add-int/2addr v12, v13

    mul-int v7, v7, v12

    sub-int/2addr v8, v7

    :cond_8
    move/from16 v16, v1

    move/from16 v17, v8

    .line 266
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 267
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 268
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v1

    .line 270
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    move v7, v2

    :goto_4
    if-gt v7, v2, :cond_a

    .line 271
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 272
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 273
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 275
    :cond_a
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 276
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 277
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 278
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 279
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 280
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 282
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 283
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 284
    invoke-static {v0}, Lo/getSha256;->onMessageChannelReady(Lo/UploadWorker;)V

    .line 286
    :cond_b
    invoke-virtual {v0, v5}, Lo/UploadWorker;->onMessageChannelReady(I)V

    .line 287
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 289
    invoke-virtual {v0, v4}, Lo/UploadWorker;->onMessageChannelReady(I)V

    .line 290
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 291
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 292
    invoke-virtual {v0}, Lo/UploadWorker;->extraCallback()V

    .line 295
    :cond_c
    invoke-static {v0}, Lo/getSha256;->extraCallback(Lo/UploadWorker;)V

    .line 296
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 298
    :goto_5
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v2

    if-ge v6, v2, :cond_d

    add-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v10

    .line 301
    invoke-virtual {v0, v2}, Lo/UploadWorker;->onMessageChannelReady(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 304
    :cond_d
    invoke-virtual {v0, v5}, Lo/UploadWorker;->onMessageChannelReady(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 306
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 307
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 308
    invoke-virtual {v0, v4}, Lo/UploadWorker;->extraCallback(I)I

    move-result v2

    const/16 v4, 0xff

    if-ne v2, v4, :cond_f

    const/16 v2, 0x10

    .line 310
    invoke-virtual {v0, v2}, Lo/UploadWorker;->extraCallback(I)I

    move-result v4

    .line 311
    invoke-virtual {v0, v2}, Lo/UploadWorker;->extraCallback(I)I

    move-result v0

    if-eqz v4, :cond_e

    if-eqz v0, :cond_e

    int-to-float v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_e
    move/from16 v21, v1

    goto :goto_6

    .line 315
    :cond_f
    sget-object v0, Lo/setViewPool;->onMessageChannelReady:[F

    array-length v0, v0

    if-ge v2, v0, :cond_10

    .line 316
    sget-object v0, Lo/setViewPool;->onMessageChannelReady:[F

    aget v0, v0, v2

    move/from16 v21, v0

    goto :goto_6

    .line 318
    :cond_10
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "H265Reader"

    invoke-static {v2, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/high16 v21, 0x3f800000    # 1.0f

    :goto_6
    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    .line 325
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, -0x1

    const/16 v22, 0x0

    const-string/jumbo v12, "video/hevc"

    move-object/from16 v11, p0

    .line 323
    invoke-static/range {v11 .. v22}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLo/generateLink;)Lo/p$a;

    move-result-object v0

    return-object v0
.end method

.method private onNavigationEvent(JIIJ)V
    .locals 8

    .line 164
    iget-boolean v0, p0, Lo/getSha256;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lo/getSha256;->extraCallback:Lo/getSha256$onMessageChannelReady;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lo/getSha256$onMessageChannelReady;->ICustomTabsCallback(JIIJ)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lo/getSha256;->asBinder:Lo/unregisterReceiver;

    invoke-virtual {p1, p4}, Lo/unregisterReceiver;->ICustomTabsCallback(I)V

    .line 168
    iget-object p1, p0, Lo/getSha256;->onTransact:Lo/unregisterReceiver;

    invoke-virtual {p1, p4}, Lo/unregisterReceiver;->ICustomTabsCallback(I)V

    .line 169
    iget-object p1, p0, Lo/getSha256;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    invoke-virtual {p1, p4}, Lo/unregisterReceiver;->ICustomTabsCallback(I)V

    .line 171
    :goto_0
    iget-object p1, p0, Lo/getSha256;->onRelationshipValidationResult:Lo/unregisterReceiver;

    invoke-virtual {p1, p4}, Lo/unregisterReceiver;->ICustomTabsCallback(I)V

    .line 172
    iget-object p1, p0, Lo/getSha256;->warmup:Lo/unregisterReceiver;

    invoke-virtual {p1, p4}, Lo/unregisterReceiver;->ICustomTabsCallback(I)V

    return-void
.end method

.method private onPostMessage([BII)V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lo/getSha256;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lo/getSha256;->extraCallback:Lo/getSha256$onMessageChannelReady;

    invoke-virtual {v0, p1, p2, p3}, Lo/getSha256$onMessageChannelReady;->onMessageChannelReady([BII)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lo/getSha256;->asBinder:Lo/unregisterReceiver;

    invoke-virtual {v0, p1, p2, p3}, Lo/unregisterReceiver;->onPostMessage([BII)V

    .line 180
    iget-object v0, p0, Lo/getSha256;->onTransact:Lo/unregisterReceiver;

    invoke-virtual {v0, p1, p2, p3}, Lo/unregisterReceiver;->onPostMessage([BII)V

    .line 181
    iget-object v0, p0, Lo/getSha256;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    invoke-virtual {v0, p1, p2, p3}, Lo/unregisterReceiver;->onPostMessage([BII)V

    .line 183
    :goto_0
    iget-object v0, p0, Lo/getSha256;->onRelationshipValidationResult:Lo/unregisterReceiver;

    invoke-virtual {v0, p1, p2, p3}, Lo/unregisterReceiver;->onPostMessage([BII)V

    .line 184
    iget-object v0, p0, Lo/getSha256;->warmup:Lo/unregisterReceiver;

    invoke-virtual {v0, p1, p2, p3}, Lo/unregisterReceiver;->onPostMessage([BII)V

    return-void
.end method


# virtual methods
.method public final extraCallback(JI)V
    .locals 0

    .line 109
    iput-wide p1, p0, Lo/getSha256;->newSession:J

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 87
    iget-object v0, p0, Lo/getSha256;->asInterface:[Z

    invoke-static {v0}, Lo/setViewPool;->extraCallback([Z)V

    .line 88
    iget-object v0, p0, Lo/getSha256;->asBinder:Lo/unregisterReceiver;

    invoke-virtual {v0}, Lo/unregisterReceiver;->onMessageChannelReady()V

    .line 89
    iget-object v0, p0, Lo/getSha256;->onTransact:Lo/unregisterReceiver;

    invoke-virtual {v0}, Lo/unregisterReceiver;->onMessageChannelReady()V

    .line 90
    iget-object v0, p0, Lo/getSha256;->ICustomTabsCallback$Stub:Lo/unregisterReceiver;

    invoke-virtual {v0}, Lo/unregisterReceiver;->onMessageChannelReady()V

    .line 91
    iget-object v0, p0, Lo/getSha256;->onRelationshipValidationResult:Lo/unregisterReceiver;

    invoke-virtual {v0}, Lo/unregisterReceiver;->onMessageChannelReady()V

    .line 92
    iget-object v0, p0, Lo/getSha256;->warmup:Lo/unregisterReceiver;

    invoke-virtual {v0}, Lo/unregisterReceiver;->onMessageChannelReady()V

    .line 93
    iget-object v0, p0, Lo/getSha256;->extraCallback:Lo/getSha256$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getSha256$onMessageChannelReady;->onNavigationEvent()V

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lo/getSha256;->ICustomTabsCallback$Stub$Proxy:J

    return-void
.end method

.method public final onNavigationEvent(Lo/DreamAppGlideModule;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 114
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-lez v0, :cond_4

    .line 115
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 116
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v9

    .line 117
    iget-object v10, v8, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 120
    iget-wide v1, v7, Lo/getSha256;->ICustomTabsCallback$Stub$Proxy:J

    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lo/getSha256;->ICustomTabsCallback$Stub$Proxy:J

    .line 121
    iget-object v1, v7, Lo/getSha256;->onPostMessage:Lo/CryptLib;

    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v2

    invoke-interface {v1, v8, v2}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    :goto_0
    if-ge v0, v9, :cond_0

    .line 125
    iget-object v1, v7, Lo/getSha256;->asInterface:[Z

    invoke-static {v10, v0, v9, v1}, Lo/setViewPool;->ICustomTabsCallback([BII[Z)I

    move-result v11

    if-ne v11, v9, :cond_1

    .line 129
    invoke-direct {v7, v10, v0, v9}, Lo/getSha256;->onPostMessage([BII)V

    return-void

    .line 134
    :cond_1
    invoke-static {v10, v11}, Lo/setViewPool;->onNavigationEvent([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_2

    .line 140
    invoke-direct {v7, v10, v0, v11}, Lo/getSha256;->onPostMessage([BII)V

    :cond_2
    sub-int v13, v9, v11

    .line 144
    iget-wide v2, v7, Lo/getSha256;->ICustomTabsCallback$Stub$Proxy:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_3

    neg-int v0, v1

    move v4, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 148
    :goto_1
    iget-wide v5, v7, Lo/getSha256;->newSession:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lo/getSha256;->ICustomTabsCallback(JIIJ)V

    .line 151
    iget-wide v5, v7, Lo/getSha256;->newSession:J

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lo/getSha256;->onNavigationEvent(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 2

    .line 99
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 100
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getSha256;->ICustomTabsCallback:Ljava/lang/String;

    .line 101
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object v0

    iput-object v0, p0, Lo/getSha256;->onPostMessage:Lo/CryptLib;

    .line 102
    new-instance v1, Lo/getSha256$onMessageChannelReady;

    invoke-direct {v1, v0}, Lo/getSha256$onMessageChannelReady;-><init>(Lo/CryptLib;)V

    iput-object v1, p0, Lo/getSha256;->extraCallback:Lo/getSha256$onMessageChannelReady;

    .line 103
    iget-object v0, p0, Lo/getSha256;->onMessageChannelReady:Lo/loadFile;

    invoke-virtual {v0, p1, p2}, Lo/loadFile;->onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V

    return-void
.end method
