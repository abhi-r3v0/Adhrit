.class public Lo/Cta$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstrumentView$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Cta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:F

.field private final ICustomTabsCallback$Stub:Lo/CheckoutBuilder$PolingRemoteConfig;

.field private final asBinder:F

.field private asInterface:Lo/HeaderJsonAdapter;

.field private final extraCallback:I

.field private final onMessageChannelReady:Lo/PaymentInstrumentRequestJsonAdapter;

.field private final onNavigationEvent:I

.field private final onPostMessage:I

.field private onRelationshipValidationResult:Z

.field private final onTransact:J


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 56
    sget-object v8, Lo/CheckoutBuilder$PolingRemoteConfig;->onPostMessage:Lo/CheckoutBuilder$PolingRemoteConfig;

    const/16 v1, 0x2710

    const/16 v2, 0x61a8

    const/16 v3, 0x61a8

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f400000    # 0.75f

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lo/Cta$extraCallback;-><init>(IIIFFJLo/CheckoutBuilder$PolingRemoteConfig;)V

    return-void
.end method

.method public constructor <init>(IIIFFJLo/CheckoutBuilder$PolingRemoteConfig;)V
    .locals 10

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    .line 172
    invoke-direct/range {v0 .. v9}, Lo/Cta$extraCallback;-><init>(Lo/PaymentInstrumentRequestJsonAdapter;IIIFFJLo/CheckoutBuilder$PolingRemoteConfig;)V

    return-void
.end method

.method public constructor <init>(Lo/PaymentInstrumentRequestJsonAdapter;IIIFFJLo/CheckoutBuilder$PolingRemoteConfig;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lo/Cta$extraCallback;->onMessageChannelReady:Lo/PaymentInstrumentRequestJsonAdapter;

    .line 198
    iput p2, p0, Lo/Cta$extraCallback;->extraCallback:I

    .line 199
    iput p3, p0, Lo/Cta$extraCallback;->onNavigationEvent:I

    .line 200
    iput p4, p0, Lo/Cta$extraCallback;->onPostMessage:I

    .line 201
    iput p5, p0, Lo/Cta$extraCallback;->ICustomTabsCallback:F

    .line 202
    iput p6, p0, Lo/Cta$extraCallback;->asBinder:F

    .line 204
    iput-wide p7, p0, Lo/Cta$extraCallback;->onTransact:J

    .line 205
    iput-object p9, p0, Lo/Cta$extraCallback;->ICustomTabsCallback$Stub:Lo/CheckoutBuilder$PolingRemoteConfig;

    .line 206
    sget-object p1, Lo/HeaderJsonAdapter;->onNavigationEvent:Lo/HeaderJsonAdapter;

    iput-object p1, p0, Lo/Cta$extraCallback;->asInterface:Lo/HeaderJsonAdapter;

    return-void
.end method


# virtual methods
.method protected onMessageChannelReady(Lo/getJuspayUpi;Lo/PaymentInstrumentRequestJsonAdapter;[I)Lo/Cta;
    .locals 17

    move-object/from16 v0, p0

    .line 295
    new-instance v16, Lo/Cta;

    new-instance v4, Lo/Cta$onPostMessage;

    iget v1, v0, Lo/Cta$extraCallback;->ICustomTabsCallback:F

    move-object/from16 v2, p2

    invoke-direct {v4, v2, v1}, Lo/Cta$onPostMessage;-><init>(Lo/PaymentInstrumentRequestJsonAdapter;F)V

    iget v1, v0, Lo/Cta$extraCallback;->extraCallback:I

    int-to-long v5, v1

    iget v1, v0, Lo/Cta$extraCallback;->onNavigationEvent:I

    int-to-long v7, v1

    iget v1, v0, Lo/Cta$extraCallback;->onPostMessage:I

    int-to-long v9, v1

    iget v11, v0, Lo/Cta$extraCallback;->asBinder:F

    iget-wide v12, v0, Lo/Cta$extraCallback;->onTransact:J

    iget-object v14, v0, Lo/Cta$extraCallback;->ICustomTabsCallback$Stub:Lo/CheckoutBuilder$PolingRemoteConfig;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v15}, Lo/Cta;-><init>(Lo/getJuspayUpi;[ILo/Cta$ICustomTabsCallback;JJJFJLo/CheckoutBuilder$PolingRemoteConfig;Lo/Cta$2;)V

    return-object v16
.end method

.method public final onMessageChannelReady([Lo/InstrumentView$onPostMessage;Lo/PaymentInstrumentRequestJsonAdapter;)[Lo/InstrumentView;
    .locals 11

    .line 233
    iget-object v0, p0, Lo/Cta$extraCallback;->onMessageChannelReady:Lo/PaymentInstrumentRequestJsonAdapter;

    if-eqz v0, :cond_0

    move-object p2, v0

    .line 236
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lo/InstrumentView;

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 239
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v3, v5, :cond_3

    .line 240
    aget-object v5, p1, v3

    if-eqz v5, :cond_2

    .line 244
    iget-object v7, v5, Lo/InstrumentView$onPostMessage;->onNavigationEvent:[I

    array-length v7, v7

    if-le v7, v6, :cond_1

    .line 245
    iget-object v6, v5, Lo/InstrumentView$onPostMessage;->ICustomTabsCallback:Lo/getJuspayUpi;

    iget-object v5, v5, Lo/InstrumentView$onPostMessage;->onNavigationEvent:[I

    .line 246
    invoke-virtual {p0, v6, p2, v5}, Lo/Cta$extraCallback;->onMessageChannelReady(Lo/getJuspayUpi;Lo/PaymentInstrumentRequestJsonAdapter;[I)Lo/Cta;

    move-result-object v5

    .line 247
    iget-object v6, p0, Lo/Cta$extraCallback;->asInterface:Lo/HeaderJsonAdapter;

    invoke-virtual {v5, v6}, Lo/Cta;->onPostMessage(Lo/HeaderJsonAdapter;)V

    .line 248
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    aput-object v5, v0, v3

    goto :goto_1

    .line 251
    :cond_1
    new-instance v6, Lo/CtaJsonAdapter;

    iget-object v7, v5, Lo/InstrumentView$onPostMessage;->ICustomTabsCallback:Lo/getJuspayUpi;

    iget-object v8, v5, Lo/InstrumentView$onPostMessage;->onNavigationEvent:[I

    aget v8, v8, v2

    iget v9, v5, Lo/InstrumentView$onPostMessage;->onMessageChannelReady:I

    iget-object v10, v5, Lo/InstrumentView$onPostMessage;->extraCallback:Ljava/lang/Object;

    invoke-direct {v6, v7, v8, v9, v10}, Lo/CtaJsonAdapter;-><init>(Lo/getJuspayUpi;IILjava/lang/Object;)V

    aput-object v6, v0, v3

    .line 254
    iget-object v6, v5, Lo/InstrumentView$onPostMessage;->ICustomTabsCallback:Lo/getJuspayUpi;

    iget-object v5, v5, Lo/InstrumentView$onPostMessage;->onNavigationEvent:[I

    aget v5, v5, v2

    invoke-virtual {v6, v5}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v5

    iget v5, v5, Lo/p$a;->extraCallback:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    add-int/2addr v4, v5

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_3
    iget-boolean p1, p0, Lo/Cta$extraCallback;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 261
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 262
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Cta;

    int-to-long v7, v4

    invoke-virtual {p2, v7, v8}, Lo/Cta;->ICustomTabsCallback(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 265
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v6, :cond_7

    .line 266
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [[J

    const/4 p2, 0x0

    .line 267
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_6

    .line 268
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Cta;

    .line 269
    invoke-virtual {v3}, Lo/HeaderData;->onRelationshipValidationResult()I

    move-result v4

    new-array v4, v4, [J

    aput-object v4, p1, p2

    const/4 v4, 0x0

    .line 270
    :goto_4
    invoke-virtual {v3}, Lo/HeaderData;->onRelationshipValidationResult()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 271
    aget-object v5, p1, p2

    .line 272
    invoke-virtual {v3}, Lo/HeaderData;->onRelationshipValidationResult()I

    move-result v7

    sub-int/2addr v7, v4

    sub-int/2addr v7, v6

    invoke-virtual {v3, v7}, Lo/HeaderData;->onNavigationEvent(I)Lo/p$a;

    move-result-object v7

    iget v7, v7, Lo/p$a;->extraCallback:I

    int-to-long v7, v7

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 275
    :cond_6
    invoke-static {p1}, Lo/Cta;->onMessageChannelReady([[J)[[[J

    move-result-object p1

    .line 276
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_7

    .line 278
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Cta;

    aget-object v3, p1, v2

    .line 279
    invoke-virtual {p2, v3}, Lo/Cta;->onNavigationEvent([[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    return-object v0
.end method
