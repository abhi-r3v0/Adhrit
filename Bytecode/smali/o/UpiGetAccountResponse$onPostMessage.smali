.class final Lo/UpiGetAccountResponse$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiGetAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/DreamAppGlideModule;

.field private asBinder:I

.field private asInterface:I

.field private extraCallback:Z

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private final onPostMessage:[I

.field private onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    iput-object v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 130
    iput-object v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->onPostMessage:[I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/UpiGetAccountResponse$onPostMessage;Lo/DreamAppGlideModule;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lo/UpiGetAccountResponse$onPostMessage;->onMessageChannelReady(Lo/DreamAppGlideModule;I)V

    return-void
.end method

.method static synthetic extraCallback(Lo/UpiGetAccountResponse$onPostMessage;Lo/DreamAppGlideModule;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lo/UpiGetAccountResponse$onPostMessage;->onPostMessage(Lo/DreamAppGlideModule;I)V

    return-void
.end method

.method private onMessageChannelReady(Lo/DreamAppGlideModule;I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 164
    invoke-virtual {p1, v1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 165
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 p2, p2, -0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    if-ge p2, v1, :cond_2

    return-void

    .line 172
    :cond_2
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->newSession()I

    move-result v1

    if-ge v1, v0, :cond_3

    return-void

    .line 176
    :cond_3
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v2

    iput v2, p0, Lo/UpiGetAccountResponse$onPostMessage;->onRelationshipValidationResult:I

    .line 177
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v2

    iput v2, p0, Lo/UpiGetAccountResponse$onPostMessage;->asInterface:I

    .line 178
    iget-object v2, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lo/DreamAppGlideModule;->extraCallback(I)V

    add-int/lit8 p2, p2, -0x7

    .line 182
    :cond_4
    iget-object v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 183
    iget-object v1, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    if-ge v0, v1, :cond_5

    if-lez p2, :cond_5

    sub-int/2addr v1, v0

    .line 185
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 186
    iget-object v1, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object v1, v1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-virtual {p1, v1, v0, p2}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 187
    iget-object p1, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    :cond_5
    return-void
.end method

.method private onNavigationEvent(Lo/DreamAppGlideModule;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 134
    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    .line 138
    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 140
    iget-object v2, v0, Lo/UpiGetAccountResponse$onPostMessage;->onPostMessage:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 141
    div-int/lit8 v2, p2, 0x5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 143
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v5

    .line 144
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v6

    .line 145
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v7

    .line 146
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v8

    .line 147
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v9

    int-to-double v10, v6

    const-wide v12, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v7, v7, -0x80

    int-to-double v6, v7

    mul-double v12, v12, v6

    add-double/2addr v12, v10

    double-to-int v12, v12

    const-wide v13, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v8, v8, -0x80

    move/from16 p2, v4

    int-to-double v3, v8

    mul-double v13, v13, v3

    sub-double v13, v10, v13

    const-wide v15, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v6, v6, v15

    sub-double/2addr v13, v6

    double-to-int v6, v13

    const-wide v7, 0x3ffc5a1cac083127L    # 1.772

    mul-double v3, v3, v7

    add-double/2addr v10, v3

    double-to-int v3, v10

    .line 151
    iget-object v4, v0, Lo/UpiGetAccountResponse$onPostMessage;->onPostMessage:[I

    shl-int/lit8 v7, v9, 0x18

    const/16 v8, 0xff

    const/4 v9, 0x0

    .line 153
    invoke-static {v12, v9, v8}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v7, v10

    .line 154
    invoke-static {v6, v9, v8}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    .line 155
    invoke-static {v3, v9, v8}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result v3

    or-int/2addr v3, v6

    aput v3, v4, v5

    add-int/lit8 v4, p2, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 157
    iput-boolean v1, v0, Lo/UpiGetAccountResponse$onPostMessage;->extraCallback:Z

    return-void
.end method

.method private onPostMessage(Lo/DreamAppGlideModule;I)V
    .locals 1

    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result p2

    iput p2, p0, Lo/UpiGetAccountResponse$onPostMessage;->onMessageChannelReady:I

    .line 196
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result p2

    iput p2, p0, Lo/UpiGetAccountResponse$onPostMessage;->onNavigationEvent:I

    const/16 p2, 0xb

    .line 197
    invoke-virtual {p1, p2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 198
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result p2

    iput p2, p0, Lo/UpiGetAccountResponse$onPostMessage;->onTransact:I

    .line 199
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result p1

    iput p1, p0, Lo/UpiGetAccountResponse$onPostMessage;->asBinder:I

    return-void
.end method

.method static synthetic onPostMessage(Lo/UpiGetAccountResponse$onPostMessage;Lo/DreamAppGlideModule;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lo/UpiGetAccountResponse$onPostMessage;->onNavigationEvent(Lo/DreamAppGlideModule;I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->onMessageChannelReady:I

    .line 250
    iput v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->onNavigationEvent:I

    .line 251
    iput v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->onTransact:I

    .line 252
    iput v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->asBinder:I

    .line 253
    iput v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->onRelationshipValidationResult:I

    .line 254
    iput v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->asInterface:I

    .line 255
    iget-object v1, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v1, v0}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 256
    iput-boolean v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->extraCallback:Z

    return-void
.end method

.method public final onPostMessage()Lo/SimResponseJsonAdapter;
    .locals 12

    .line 204
    iget v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->onMessageChannelReady:I

    if-eqz v0, :cond_6

    iget v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->onNavigationEvent:I

    if-eqz v0, :cond_6

    iget v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->onRelationshipValidationResult:I

    if-eqz v0, :cond_6

    iget v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->asInterface:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    .line 208
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    .line 209
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    iget-object v1, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->extraCallback:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 214
    :cond_0
    iget-object v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 215
    iget v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->onRelationshipValidationResult:I

    iget v2, p0, Lo/UpiGetAccountResponse$onPostMessage;->asInterface:I

    mul-int v0, v0, v2

    new-array v2, v0, [I

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v0, :cond_5

    .line 218
    iget-object v4, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v4}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 220
    iget-object v6, p0, Lo/UpiGetAccountResponse$onPostMessage;->onPostMessage:[I

    aget v4, v6, v4

    aput v4, v2, v3

    :goto_1
    move v3, v5

    goto :goto_0

    .line 222
    :cond_2
    iget-object v4, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v4}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_3

    and-int/lit8 v5, v4, 0x3f

    goto :goto_2

    :cond_3
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    .line 224
    iget-object v6, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    .line 227
    invoke-virtual {v6}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v6

    or-int/2addr v5, v6

    :goto_2
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    .line 228
    :cond_4
    iget-object v4, p0, Lo/UpiGetAccountResponse$onPostMessage;->onPostMessage:[I

    iget-object v6, p0, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v6}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v6

    aget v4, v4, v6

    :goto_3
    add-int/2addr v5, v3

    .line 229
    invoke-static {v2, v3, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    .line 235
    :cond_5
    iget v0, p0, Lo/UpiGetAccountResponse$onPostMessage;->onRelationshipValidationResult:I

    iget v1, p0, Lo/UpiGetAccountResponse$onPostMessage;->asInterface:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 236
    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 238
    new-instance v0, Lo/SimResponseJsonAdapter;

    iget v1, p0, Lo/UpiGetAccountResponse$onPostMessage;->onTransact:I

    int-to-float v1, v1

    iget v2, p0, Lo/UpiGetAccountResponse$onPostMessage;->onMessageChannelReady:I

    int-to-float v3, v2

    div-float v6, v1, v3

    const/4 v7, 0x0

    iget v1, p0, Lo/UpiGetAccountResponse$onPostMessage;->asBinder:I

    int-to-float v1, v1

    iget v3, p0, Lo/UpiGetAccountResponse$onPostMessage;->onNavigationEvent:I

    int-to-float v4, v3

    div-float v8, v1, v4

    const/4 v9, 0x0

    iget v1, p0, Lo/UpiGetAccountResponse$onPostMessage;->onRelationshipValidationResult:I

    int-to-float v1, v1

    int-to-float v2, v2

    div-float v10, v1, v2

    iget v1, p0, Lo/UpiGetAccountResponse$onPostMessage;->asInterface:I

    int-to-float v1, v1

    int-to-float v2, v3

    div-float v11, v1, v2

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lo/SimResponseJsonAdapter;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    return-object v0

    :cond_6
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method
