.class public Lo/clearFocus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/clearFocus$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Ljava/lang/String;

.field private static ICustomTabsService$Stub:[D

.field public static getInterfaceDescriptor:[D

.field public static postMessage:I


# instance fields
.field public ICustomTabsCallback$Stub:Lo/preload;

.field public ICustomTabsCallback$Stub$Proxy:I

.field public ICustomTabsService:I

.field public asBinder:I

.field public asInterface:Lo/preload;

.field public extraCallback:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

.field private extraCommand:I

.field private mayLaunchUrl:I

.field public newSession:Lo/setOnSuggestionListener;

.field public onMessageChannelReady:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

.field public onNavigationEvent:[Z

.field public onPostMessage:Lo/setSearchableInfo;

.field public onRelationshipValidationResult:Lo/preload;

.field public onTransact:Lo/preload;

.field private requestPostMessageChannel:I

.field private updateVisuals:Lo/requestFocus;

.field public warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lo/clearFocus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/clearFocus;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lo/clearFocus;->getInterfaceDescriptor:[D

    const/16 v0, 0x1e

    new-array v0, v0, [D

    .line 267
    fill-array-data v0, :array_0

    sput-object v0, Lo/clearFocus;->ICustomTabsService$Stub:[D

    const/4 v0, 0x0

    .line 389
    sput v0, Lo/clearFocus;->postMessage:I

    return-void

    :array_0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fe08ce703afb7e9L    # 0.5172
        0x3fe11a9fbe76c8b4L    # 0.5345
        0x3fe1a786c226809dL    # 0.5517
        0x3fe2353f7ced9168L    # 0.569
        0x3fe2c226809d4952L    # 0.5862
        0x3fe34f0d844d013bL    # 0.6034
        0x3fe3dcc63f141206L    # 0.6207
        0x3fe469ad42c3c9efL    # 0.6379
        0x3fe4f765fd8adabaL    # 0.6552
        0x3fe5844d013a92a3L    # 0.6724
        0x3fe61205bc01a36eL    # 0.6897
        0x3fe69eecbfb15b57L    # 0.7069
        0x3fe72bd3c3611340L    # 0.7241
        0x3fe7b98c7e28240bL    # 0.7414
        0x3fe8467381d7dbf5L    # 0.7586
        0x3fe8d42c3c9eecc0L    # 0.7759
        0x3fe96113404ea4a9L    # 0.7931
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>(Lo/clearFocus$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lo/clearFocus;->updateVisuals:Lo/requestFocus;

    .line 15
    iput-object v0, p0, Lo/clearFocus;->onNavigationEvent:[Z

    .line 18
    iput-object v0, p0, Lo/clearFocus;->extraCallback:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 19
    iput-object v0, p0, Lo/clearFocus;->onMessageChannelReady:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 22
    iput-object v0, p0, Lo/clearFocus;->onRelationshipValidationResult:Lo/preload;

    .line 23
    iput-object v0, p0, Lo/clearFocus;->ICustomTabsCallback$Stub:Lo/preload;

    .line 24
    iput-object v0, p0, Lo/clearFocus;->onTransact:Lo/preload;

    .line 25
    iput-object v0, p0, Lo/clearFocus;->asInterface:Lo/preload;

    .line 156
    invoke-static {}, Lo/setOnSuggestionListener;->onNavigationEvent()Lo/setOnSuggestionListener;

    move-result-object v0

    iput-object v0, p0, Lo/clearFocus;->newSession:Lo/setOnSuggestionListener;

    .line 157
    iget-object v0, p1, Lo/clearFocus$ICustomTabsCallback;->ICustomTabsCallback:[Z

    iput-object v0, p0, Lo/clearFocus;->onNavigationEvent:[Z

    .line 158
    iget-object v0, p1, Lo/clearFocus$ICustomTabsCallback;->onPostMessage:Lo/requestFocus;

    iput-object v0, p0, Lo/clearFocus;->updateVisuals:Lo/requestFocus;

    .line 159
    iget-object v0, p1, Lo/clearFocus$ICustomTabsCallback;->onMessageChannelReady:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    iput-object v0, p0, Lo/clearFocus;->extraCallback:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 160
    iget-object v0, p1, Lo/clearFocus$ICustomTabsCallback;->onNavigationEvent:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    iput-object v0, p0, Lo/clearFocus;->onMessageChannelReady:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 161
    iget-object v0, p1, Lo/clearFocus$ICustomTabsCallback;->asBinder:Lo/preload;

    iput-object v0, p0, Lo/clearFocus;->onRelationshipValidationResult:Lo/preload;

    .line 162
    iget-object v0, p1, Lo/clearFocus$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/preload;

    iput-object v0, p0, Lo/clearFocus;->ICustomTabsCallback$Stub:Lo/preload;

    .line 163
    iget-object v0, p1, Lo/clearFocus$ICustomTabsCallback;->asInterface:Lo/preload;

    iput-object v0, p0, Lo/clearFocus;->onTransact:Lo/preload;

    .line 164
    iget-object v0, p1, Lo/clearFocus$ICustomTabsCallback;->onRelationshipValidationResult:Lo/preload;

    iput-object v0, p0, Lo/clearFocus;->asInterface:Lo/preload;

    .line 165
    iget v0, p1, Lo/clearFocus$ICustomTabsCallback;->onTransact:I

    iput v0, p0, Lo/clearFocus;->asBinder:I

    .line 166
    iget v0, p1, Lo/clearFocus$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:I

    iput v0, p0, Lo/clearFocus;->ICustomTabsCallback$Stub$Proxy:I

    .line 167
    iget v0, p1, Lo/clearFocus$ICustomTabsCallback;->getInterfaceDescriptor:I

    iput v0, p0, Lo/clearFocus;->ICustomTabsService:I

    .line 168
    iget v0, p1, Lo/clearFocus$ICustomTabsCallback;->newSession:I

    iput v0, p0, Lo/clearFocus;->warmup:I

    .line 169
    iget v0, p1, Lo/clearFocus$ICustomTabsCallback;->ICustomTabsService:I

    iput v0, p0, Lo/clearFocus;->requestPostMessageChannel:I

    .line 170
    iget v0, p1, Lo/clearFocus$ICustomTabsCallback;->warmup:I

    iput v0, p0, Lo/clearFocus;->mayLaunchUrl:I

    .line 171
    iget v0, p1, Lo/clearFocus$ICustomTabsCallback;->extraCommand:I

    iput v0, p0, Lo/clearFocus;->extraCommand:I

    .line 173
    iget-object p1, p1, Lo/clearFocus$ICustomTabsCallback;->extraCallback:Lo/setSearchableInfo;

    iput-object p1, p0, Lo/clearFocus;->onPostMessage:Lo/setSearchableInfo;

    return-void
.end method

.method private static onPostMessage([S[ZII[[D[D)V
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    .line 280
    array-length v2, v2

    sub-int v3, v1, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move/from16 v11, p3

    if-ge v8, v11, :cond_2

    .line 285
    array-length v12, v0

    if-le v12, v8, :cond_0

    aget-boolean v12, v0, v8

    if-eqz v12, :cond_0

    .line 286
    sget-object v9, Lo/clearFocus;->ICustomTabsService$Stub:[D

    aget-wide v12, v9, v8

    aget-object v9, p4, v8

    aget-wide v14, v9, v5

    mul-double v12, v12, v14

    add-double/2addr v6, v12

    goto :goto_2

    .line 288
    :cond_0
    array-length v12, v0

    if-gt v12, v8, :cond_1

    .line 289
    aget-object v12, p4, v8

    aget-wide v13, v12, v5

    mul-double v13, v13, v9

    add-double/2addr v6, v13

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const-wide v12, 0x400921fb54442d18L    # Math.PI

    if-ge v5, v2, :cond_3

    int-to-double v14, v5

    mul-double v14, v14, v12

    add-int/lit8 v8, v2, -0x1

    int-to-double v12, v8

    div-double/2addr v14, v12

    .line 296
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    sub-double v12, v9, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double v12, v12, v14

    goto :goto_3

    :cond_3
    move-wide v12, v9

    :goto_3
    if-ge v5, v3, :cond_4

    move/from16 v16, v5

    goto :goto_4

    :cond_4
    sub-int v8, v1, v5

    int-to-double v14, v8

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    add-int/lit8 v8, v2, -0x1

    move/from16 v16, v5

    int-to-double v4, v8

    div-double/2addr v14, v4

    .line 306
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double/2addr v9, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v4

    :goto_4
    mul-double v6, v6, v12

    mul-double v6, v6, v9

    double-to-int v4, v6

    int-to-short v4, v4

    .line 318
    aput-short v4, p0, v16

    add-int/lit8 v5, v16, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private onPostMessage(Ljava/lang/String;Lo/requestFocus;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 471
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 472
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-interface {p2, v3}, Lo/requestFocus;->onMessageChannelReady(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 476
    iget-object p2, p0, Lo/clearFocus;->newSession:Lo/setOnSuggestionListener;

    sget-object v0, Lo/clearFocus;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bits:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5029
    iget-boolean p2, p2, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz p2, :cond_1

    .line 5030
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5032
    :cond_1
    sget-object p2, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 477
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    new-array v0, p2, [Z

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_4

    .line 479
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    .line 480
    aput-boolean v3, v0, v2

    goto :goto_3

    .line 481
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_3

    .line 482
    aput-boolean v1, v0, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 484
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Unhandled Condition!!! Bit can\'t have values other than 0 or 1"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;[ZII[[D[D[DII[[D[D[D)[S
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v7, p3

    move/from16 v8, p8

    .line 398
    iget-object v2, v0, Lo/clearFocus;->newSession:Lo/setOnSuggestionListener;

    sget-object v3, Lo/clearFocus;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Input String:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1029
    iget-boolean v2, v2, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v2, :cond_0

    .line 1030
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1032
    :cond_0
    sget-object v2, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 399
    :goto_0
    iget-object v2, v0, Lo/clearFocus;->newSession:Lo/setOnSuggestionListener;

    sget-object v3, Lo/clearFocus;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Required String length:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lo/clearFocus;->requestPostMessageChannel:I

    iget v6, v0, Lo/clearFocus;->mayLaunchUrl:I

    mul-int v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2029
    iget-boolean v2, v2, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v2, :cond_1

    .line 2030
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2032
    :cond_1
    sget-object v2, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 401
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v0, Lo/clearFocus;->requestPostMessageChannel:I

    iget v4, v0, Lo/clearFocus;->mayLaunchUrl:I

    mul-int v4, v4, v3

    if-ne v2, v4, :cond_6

    .line 404
    new-array v9, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 405
    :goto_2
    iget v3, v0, Lo/clearFocus;->requestPostMessageChannel:I

    if-ge v2, v3, :cond_2

    .line 406
    iget v3, v0, Lo/clearFocus;->mayLaunchUrl:I

    mul-int v4, v2, v3

    add-int/lit8 v5, v2, 0x1

    mul-int v3, v3, v5

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    move v2, v5

    goto :goto_2

    .line 413
    :cond_2
    iget v1, v0, Lo/clearFocus;->extraCommand:I

    new-array v11, v1, [S

    .line 418
    new-array v12, v7, [S

    .line 420
    sput v10, Lo/clearFocus;->postMessage:I

    move-object v1, v12

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 421
    invoke-static/range {v1 .. v6}, Lo/clearFocus;->onPostMessage([S[ZII[[D[D)V

    .line 426
    invoke-static {v12, v10, v11, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    .line 429
    :goto_3
    iget v2, v0, Lo/clearFocus;->requestPostMessageChannel:I

    if-ge v1, v2, :cond_5

    .line 430
    iget-object v2, v0, Lo/clearFocus;->newSession:Lo/setOnSuggestionListener;

    sget-object v3, Lo/clearFocus;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PartInput:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v9, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3029
    iget-boolean v2, v2, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v2, :cond_3

    .line 3030
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3032
    :cond_3
    sget-object v2, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 431
    :goto_4
    aget-object v2, v9, v1

    iget-object v3, v0, Lo/clearFocus;->updateVisuals:Lo/requestFocus;

    invoke-direct {p0, v2, v3}, Lo/clearFocus;->onPostMessage(Ljava/lang/String;Lo/requestFocus;)[Z

    move-result-object v2

    .line 432
    iget-object v3, v0, Lo/clearFocus;->newSession:Lo/setOnSuggestionListener;

    sget-object v4, Lo/clearFocus;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PartInputBin:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4029
    iget-boolean v3, v3, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v3, :cond_4

    .line 4030
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4032
    :cond_4
    sget-object v3, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 433
    :goto_5
    new-array v3, v8, [S

    move-object p1, v3

    move-object p2, v2

    move/from16 p3, p8

    move/from16 p4, p9

    move-object/from16 p5, p10

    move-object/from16 p6, p11

    .line 435
    invoke-static/range {p1 .. p6}, Lo/clearFocus;->onPostMessage([S[ZII[[D[D)V

    .line 438
    invoke-static {v3, v10, v11, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object v11

    .line 402
    :cond_6
    new-instance v2, Ljava/util/InputMismatchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reguired "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lo/clearFocus;->requestPostMessageChannel:I

    iget v5, v0, Lo/clearFocus;->mayLaunchUrl:I

    mul-int v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " digits, received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
