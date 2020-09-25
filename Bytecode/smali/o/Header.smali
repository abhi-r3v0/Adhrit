.class public Lo/Header;
.super Lo/HeaderDataJsonAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Header$extraCallback;,
        Lo/Header$ICustomTabsCallback;,
        Lo/Header$onNavigationEvent;,
        Lo/Header$onPostMessage;,
        Lo/Header$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final onPostMessage:[I


# instance fields
.field private final extraCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/Header$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/InstrumentView$ICustomTabsCallback;

.field private onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1377
    sput-object v0, Lo/Header;->onPostMessage:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1386
    new-instance v0, Lo/Cta$extraCallback;

    invoke-direct {v0}, Lo/Cta$extraCallback;-><init>()V

    invoke-direct {p0, v0}, Lo/Header;-><init>(Lo/InstrumentView$ICustomTabsCallback;)V

    return-void
.end method

.method public constructor <init>(Lo/InstrumentView$ICustomTabsCallback;)V
    .locals 1

    .line 1400
    invoke-direct {p0}, Lo/HeaderDataJsonAdapter;-><init>()V

    .line 1401
    iput-object p1, p0, Lo/Header;->onMessageChannelReady:Lo/InstrumentView$ICustomTabsCallback;

    .line 1402
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lo/Header$onMessageChannelReady;->onPostMessage:Lo/Header$onMessageChannelReady;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/Header;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static ICustomTabsCallback(II)I
    .locals 0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected static ICustomTabsCallback(Lo/p$a;Ljava/lang/String;Z)I
    .locals 1

    .line 2397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/p$a;->cancel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 2401
    :cond_0
    invoke-static {p1}, Lo/Header;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2402
    iget-object p0, p0, Lo/p$a;->cancel:Ljava/lang/String;

    invoke-static {p0}, Lo/Header;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 2407
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "-"

    .line 2411
    invoke-static {p0, p2}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 2412
    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 2413
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method protected static ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2378
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ICustomTabsCallback(Lo/getJuspayUpi;[IILjava/lang/String;IIIILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getJuspayUpi;",
            "[II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p8

    .line 1868
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1869
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object v3, p0

    .line 1871
    invoke-virtual {p0, v2}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v4

    aget v6, p1, v2

    move-object v5, p3

    move v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 1870
    invoke-static/range {v4 .. v11}, Lo/Header;->onPostMessage(Lo/p$a;Ljava/lang/String;IIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1879
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static ICustomTabsCallback([[ILo/JuspaySessionToken;Lo/InstrumentView;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2325
    :cond_0
    invoke-interface {p2}, Lo/InstrumentView;->asBinder()Lo/getJuspayUpi;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/JuspaySessionToken;->onMessageChannelReady(Lo/getJuspayUpi;)I

    move-result p1

    const/4 v1, 0x0

    .line 2326
    :goto_0
    invoke-interface {p2}, Lo/InstrumentView;->onRelationshipValidationResult()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2327
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lo/InstrumentView;->extraCallback(I)I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static extraCallback(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    sub-int/2addr p0, p1

    return p0
.end method

.method private static extraCallback(Lo/HeaderDataJsonAdapter$ICustomTabsCallback;[[[I[Lo/Payload;[Lo/InstrumentView;I)V
    .locals 10

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 2277
    :goto_0
    invoke-virtual {p0}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_6

    .line 2278
    invoke-virtual {p0, v2}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent(I)I

    move-result v5

    .line 2279
    aget-object v7, p3, v2

    if-eq v5, v6, :cond_1

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    :cond_1
    if-eqz v7, :cond_5

    .line 2282
    aget-object v8, p1, v2

    .line 2283
    invoke-virtual {p0, v2}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage(I)Lo/JuspaySessionToken;

    move-result-object v9

    .line 2282
    invoke-static {v8, v9, v7}, Lo/Header;->ICustomTabsCallback([[ILo/JuspaySessionToken;Lo/InstrumentView;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v5, v6, :cond_3

    if-eq v4, v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    if-eq v3, v1, :cond_4

    :goto_1
    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    move v3, v2

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    :goto_3
    if-eq v4, v1, :cond_7

    if-eq v3, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    .line 2304
    new-instance p0, Lo/Payload;

    invoke-direct {p0, p4}, Lo/Payload;-><init>(I)V

    .line 2306
    aput-object p0, p2, v4

    .line 2307
    aput-object p0, p2, v3

    :cond_8
    return-void
.end method

.method protected static extraCallback(IZ)Z
    .locals 1

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static extraCallback(Lo/p$a;ILo/Header$ICustomTabsCallback;IZZZ)Z
    .locals 2

    const/4 v0, 0x0

    .line 2138
    invoke-static {p1, v0}, Lo/Header;->extraCallback(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lo/p$a;->extraCallback:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget p1, p0, Lo/p$a;->extraCallback:I

    if-gt p1, p3, :cond_4

    :cond_0
    if-nez p6, :cond_1

    iget p1, p0, Lo/p$a;->ICustomTabsService$Stub:I

    if-eq p1, v1, :cond_4

    iget p1, p0, Lo/p$a;->ICustomTabsService$Stub:I

    iget p3, p2, Lo/Header$ICustomTabsCallback;->extraCallback:I

    if-ne p1, p3, :cond_4

    :cond_1
    if-nez p4, :cond_2

    iget-object p1, p0, Lo/p$a;->onTransact:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/p$a;->onTransact:Ljava/lang/String;

    iget-object p3, p2, Lo/Header$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 2145
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    if-nez p5, :cond_3

    iget p1, p0, Lo/p$a;->validateRelationship:I

    if-eq p1, v1, :cond_4

    iget p0, p0, Lo/p$a;->validateRelationship:I

    iget p1, p2, Lo/Header$ICustomTabsCallback;->onNavigationEvent:I

    if-ne p0, p1, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method private static extraCallback(Lo/getJuspayUpi;[IIZZZ)[I
    .locals 18

    move-object/from16 v7, p0

    .line 2061
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object/from16 v17, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2062
    :goto_0
    iget v0, v7, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v10, v0, :cond_1

    .line 2063
    invoke-virtual {v7, v10}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v0

    .line 2064
    new-instance v12, Lo/Header$ICustomTabsCallback;

    iget v1, v0, Lo/p$a;->ICustomTabsService$Stub:I

    iget v2, v0, Lo/p$a;->validateRelationship:I

    iget-object v0, v0, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-direct {v12, v1, v2, v0}, Lo/Header$ICustomTabsCallback;-><init>(IILjava/lang/String;)V

    .line 2067
    invoke-virtual {v8, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 2069
    invoke-static/range {v0 .. v6}, Lo/Header;->onNavigationEvent(Lo/getJuspayUpi;[ILo/Header$ICustomTabsCallback;IZZZ)I

    move-result v0

    if-le v0, v11, :cond_0

    move v11, v0

    move-object/from16 v17, v12

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-le v11, v0, :cond_4

    .line 2085
    invoke-static/range {v17 .. v17}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    new-array v0, v11, [I

    const/4 v1, 0x0

    .line 2088
    :goto_1
    iget v2, v7, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v9, v2, :cond_3

    .line 2089
    invoke-virtual {v7, v9}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v10

    .line 2090
    aget v11, p1, v9

    move-object/from16 v12, v17

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    invoke-static/range {v10 .. v16}, Lo/Header;->extraCallback(Lo/p$a;ILo/Header$ICustomTabsCallback;IZZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 2098
    aput v9, v0, v1

    move v1, v2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    .line 2103
    :cond_4
    sget-object v0, Lo/Header;->onPostMessage:[I

    return-object v0
.end method

.method static synthetic onMessageChannelReady(II)I
    .locals 0

    .line 155
    invoke-static {p0, p1}, Lo/Header;->extraCallback(II)I

    move-result p0

    return p0
.end method

.method private static onMessageChannelReady(ZIIII)Landroid/graphics/Point;
    .locals 3

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eq v1, p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_2
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_3

    .line 2482
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 2485
    :cond_3
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method static synthetic onNavigationEvent(II)I
    .locals 0

    .line 155
    invoke-static {p0, p1}, Lo/Header;->ICustomTabsCallback(II)I

    move-result p0

    return p0
.end method

.method private static onNavigationEvent(Lo/getJuspayUpi;[ILo/Header$ICustomTabsCallback;IZZZ)I
    .locals 11

    move-object v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2115
    :goto_0
    iget v3, v0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v1, v3, :cond_1

    .line 2117
    invoke-virtual {p0, v1}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v4

    aget v5, p1, v1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 2116
    invoke-static/range {v4 .. v10}, Lo/Header;->extraCallback(Lo/p$a;ILo/Header$ICustomTabsCallback;IZZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static onNavigationEvent(Lo/JuspaySessionToken;[[IILo/Header$onMessageChannelReady;)Lo/InstrumentView$onPostMessage;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1736
    iget-boolean v2, v1, Lo/Header$onMessageChannelReady;->asInterface:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 1740
    :goto_0
    iget-boolean v3, v1, Lo/Header$onMessageChannelReady;->onTransact:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    and-int v3, p2, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x0

    .line 1743
    :goto_2
    iget v3, v0, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    if-ge v15, v3, :cond_3

    .line 1744
    invoke-virtual {v0, v15}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v13

    .line 1745
    aget-object v4, p1, v15

    iget v7, v1, Lo/Header$onMessageChannelReady;->extraCallback:I

    iget v8, v1, Lo/Header$onMessageChannelReady;->onMessageChannelReady:I

    iget v9, v1, Lo/Header$onMessageChannelReady;->ICustomTabsCallback:I

    iget v10, v1, Lo/Header$onMessageChannelReady;->onNavigationEvent:I

    iget v11, v1, Lo/Header$onMessageChannelReady;->asBinder:I

    iget v12, v1, Lo/Header$onMessageChannelReady;->onRelationshipValidationResult:I

    iget-boolean v6, v1, Lo/Header$onMessageChannelReady;->ICustomTabsService:Z

    move-object v3, v13

    move v5, v14

    move/from16 v16, v6

    move v6, v2

    move-object v0, v13

    move/from16 v13, v16

    .line 1746
    invoke-static/range {v3 .. v13}, Lo/Header;->onPostMessage(Lo/getJuspayUpi;[IZIIIIIIIZ)[I

    move-result-object v3

    .line 1758
    array-length v4, v3

    if-lez v4, :cond_2

    .line 1759
    new-instance v1, Lo/InstrumentView$onPostMessage;

    invoke-direct {v1, v0, v3}, Lo/InstrumentView$onPostMessage;-><init>(Lo/getJuspayUpi;[I)V

    return-object v1

    :cond_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static onNavigationEvent(Lo/JuspaySessionToken;[[ILo/Header$onMessageChannelReady;)Lo/InstrumentView$onPostMessage;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 1910
    :goto_0
    iget v11, v0, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    if-ge v5, v11, :cond_11

    .line 1911
    invoke-virtual {v0, v5}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v11

    .line 1912
    iget v13, v1, Lo/Header$onMessageChannelReady;->asBinder:I

    iget v14, v1, Lo/Header$onMessageChannelReady;->onRelationshipValidationResult:I

    iget-boolean v15, v1, Lo/Header$onMessageChannelReady;->ICustomTabsService:Z

    invoke-static {v11, v13, v14, v15}, Lo/Header;->onPostMessage(Lo/getJuspayUpi;IIZ)Ljava/util/List;

    move-result-object v13

    .line 1914
    aget-object v14, p1, v5

    const/4 v15, 0x0

    .line 1915
    :goto_1
    iget v12, v11, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v15, v12, :cond_10

    .line 1916
    aget v12, v14, v15

    iget-boolean v2, v1, Lo/Header$onMessageChannelReady;->validateRelationship:Z

    invoke-static {v12, v2}, Lo/Header;->extraCallback(IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1918
    invoke-virtual {v11, v15}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v2

    .line 1920
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget v12, v2, Lo/p$a;->getInterfaceDescriptor:I

    if-eq v12, v3, :cond_0

    iget v12, v2, Lo/p$a;->getInterfaceDescriptor:I

    iget v4, v1, Lo/Header$onMessageChannelReady;->extraCallback:I

    if-gt v12, v4, :cond_4

    :cond_0
    iget v4, v2, Lo/p$a;->newSession:I

    if-eq v4, v3, :cond_1

    iget v4, v2, Lo/p$a;->newSession:I

    iget v12, v1, Lo/Header$onMessageChannelReady;->onMessageChannelReady:I

    if-gt v4, v12, :cond_4

    :cond_1
    iget v4, v2, Lo/p$a;->updateVisuals:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v4, v4, v12

    if-eqz v4, :cond_2

    iget v4, v2, Lo/p$a;->updateVisuals:F

    iget v12, v1, Lo/Header$onMessageChannelReady;->ICustomTabsCallback:I

    int-to-float v12, v12

    cmpg-float v4, v4, v12

    if-gtz v4, :cond_4

    :cond_2
    iget v4, v2, Lo/p$a;->extraCallback:I

    if-eq v4, v3, :cond_3

    iget v4, v2, Lo/p$a;->extraCallback:I

    iget v12, v1, Lo/Header$onMessageChannelReady;->onNavigationEvent:I

    if-gt v4, v12, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    .line 1927
    iget-boolean v12, v1, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    if-eqz v12, :cond_e

    :cond_5
    if-eqz v4, :cond_6

    const/4 v12, 0x2

    goto :goto_3

    :cond_6
    const/4 v12, 0x1

    .line 1932
    :goto_3
    aget v3, v14, v15

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lo/Header;->extraCallback(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit16 v12, v12, 0x3e8

    :cond_7
    if-le v12, v8, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-ne v12, v8, :cond_d

    .line 1938
    iget v0, v2, Lo/p$a;->extraCallback:I

    invoke-static {v0, v9}, Lo/Header;->extraCallback(II)I

    move-result v0

    move-object/from16 v16, v6

    .line 1939
    iget-boolean v6, v1, Lo/Header$onMessageChannelReady;->extraCommand:Z

    if-eqz v6, :cond_a

    if-eqz v0, :cond_a

    if-gez v0, :cond_9

    :goto_5
    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    .line 1947
    :cond_a
    invoke-virtual {v2}, Lo/p$a;->onNavigationEvent()I

    move-result v0

    if-eq v0, v10, :cond_b

    .line 1949
    invoke-static {v0, v10}, Lo/Header;->extraCallback(II)I

    move-result v0

    goto :goto_6

    :cond_b
    iget v0, v2, Lo/p$a;->extraCallback:I

    .line 1950
    invoke-static {v0, v9}, Lo/Header;->extraCallback(II)I

    move-result v0

    :goto_6
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    if-lez v0, :cond_9

    goto :goto_5

    :cond_c
    if-gez v0, :cond_9

    goto :goto_5

    :cond_d
    move-object/from16 v16, v6

    :goto_7
    if-eqz v0, :cond_f

    .line 1959
    iget v0, v2, Lo/p$a;->extraCallback:I

    .line 1960
    invoke-virtual {v2}, Lo/p$a;->onNavigationEvent()I

    move-result v2

    move v9, v0

    move v10, v2

    move-object v6, v11

    move v8, v12

    move v7, v15

    goto :goto_8

    :cond_e
    move-object/from16 v16, v6

    :cond_f
    move-object/from16 v6, v16

    :goto_8
    add-int/lit8 v15, v15, 0x1

    const/4 v3, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_10
    move-object/from16 v16, v6

    add-int/lit8 v5, v5, 0x1

    const/4 v3, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_11
    if-nez v6, :cond_12

    const/4 v0, 0x0

    return-object v0

    .line 1965
    :cond_12
    new-instance v0, Lo/InstrumentView$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v7, v1, v2

    invoke-direct {v0, v6, v1}, Lo/InstrumentView$onPostMessage;-><init>(Lo/getJuspayUpi;[I)V

    return-object v0
.end method

.method private static onPostMessage(Lo/getJuspayUpi;[IILjava/lang/String;IIIILjava/util/List;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getJuspayUpi;",
            "[II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1841
    :goto_0
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    move-object/from16 v2, p8

    .line 1842
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object v4, p0

    .line 1844
    invoke-virtual {p0, v3}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v5

    aget v7, p1, v3

    move-object/from16 v6, p3

    move v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    .line 1843
    invoke-static/range {v5 .. v12}, Lo/Header;->onPostMessage(Lo/p$a;Ljava/lang/String;IIIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static onPostMessage(Lo/getJuspayUpi;IIZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getJuspayUpi;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2423
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2424
    :goto_0
    iget v3, p0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v2, v3, :cond_0

    .line 2425
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_6

    if-ne p2, v2, :cond_1

    goto :goto_3

    :cond_1
    const v3, 0x7fffffff

    .line 2434
    :goto_1
    iget v4, p0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v1, v4, :cond_3

    .line 2435
    invoke-virtual {p0, v1}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v4

    .line 2439
    iget v5, v4, Lo/p$a;->getInterfaceDescriptor:I

    if-lez v5, :cond_2

    iget v5, v4, Lo/p$a;->newSession:I

    if-lez v5, :cond_2

    .line 2440
    iget v5, v4, Lo/p$a;->getInterfaceDescriptor:I

    iget v6, v4, Lo/p$a;->newSession:I

    invoke-static {p3, p1, p2, v5, v6}, Lo/Header;->onMessageChannelReady(ZIIII)Landroid/graphics/Point;

    move-result-object v5

    .line 2442
    iget v6, v4, Lo/p$a;->getInterfaceDescriptor:I

    iget v7, v4, Lo/p$a;->newSession:I

    mul-int v6, v6, v7

    .line 2443
    iget v7, v4, Lo/p$a;->getInterfaceDescriptor:I

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_2

    iget v4, v4, Lo/p$a;->newSession:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v9

    float-to-int v5, v5

    if-lt v4, v5, :cond_2

    if-ge v6, v3, :cond_2

    move v3, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eq v3, v2, :cond_6

    .line 2455
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_6

    .line 2456
    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object p2

    .line 2457
    invoke-virtual {p2}, Lo/p$a;->onNavigationEvent()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_4

    if-le p2, v3, :cond_5

    .line 2459
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0
.end method

.method private static onPostMessage(Lo/p$a;Ljava/lang/String;IIIIII)Z
    .locals 2

    const/4 v0, 0x0

    .line 1893
    invoke-static {p2, v0}, Lo/Header;->extraCallback(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    if-eqz p1, :cond_0

    iget-object p2, p0, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 1895
    invoke-static {p2, p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    iget p1, p0, Lo/p$a;->getInterfaceDescriptor:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget p1, p0, Lo/p$a;->getInterfaceDescriptor:I

    if-gt p1, p4, :cond_5

    :cond_1
    iget p1, p0, Lo/p$a;->newSession:I

    if-eq p1, p2, :cond_2

    iget p1, p0, Lo/p$a;->newSession:I

    if-gt p1, p5, :cond_5

    :cond_2
    iget p1, p0, Lo/p$a;->updateVisuals:F

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_3

    iget p1, p0, Lo/p$a;->updateVisuals:F

    int-to-float p3, p6

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_5

    :cond_3
    iget p1, p0, Lo/p$a;->extraCallback:I

    if-eq p1, p2, :cond_4

    iget p0, p0, Lo/p$a;->extraCallback:I

    if-gt p0, p7, :cond_5

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method private static onPostMessage(Lo/getJuspayUpi;[IZIIIIIIIZ)[I
    .locals 17

    move-object/from16 v9, p0

    .line 1777
    iget v0, v9, Lo/getJuspayUpi;->ICustomTabsCallback:I

    const/4 v10, 0x2

    if-ge v0, v10, :cond_0

    .line 1778
    sget-object v0, Lo/Header;->onPostMessage:[I

    return-object v0

    :cond_0
    move/from16 v0, p8

    move/from16 v1, p9

    move/from16 v2, p10

    .line 1781
    invoke-static {v9, v0, v1, v2}, Lo/Header;->onPostMessage(Lo/getJuspayUpi;IIZ)Ljava/util/List;

    move-result-object v11

    .line 1783
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v10, :cond_1

    .line 1784
    sget-object v0, Lo/Header;->onPostMessage:[I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 1790
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1792
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_3

    .line 1793
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1794
    invoke-virtual {v9, v0}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v0

    iget-object v8, v0, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 1795
    invoke-virtual {v12, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v8

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v16, v8

    move-object v8, v11

    .line 1797
    invoke-static/range {v0 .. v8}, Lo/Header;->onPostMessage(Lo/getJuspayUpi;[IILjava/lang/String;IIIILjava/util/List;)I

    move-result v0

    if-le v0, v15, :cond_2

    move v15, v0

    move-object/from16 v13, v16

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v13

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v11

    .line 1816
    invoke-static/range {v0 .. v8}, Lo/Header;->ICustomTabsCallback(Lo/getJuspayUpi;[IILjava/lang/String;IIIILjava/util/List;)V

    .line 1827
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v10, :cond_5

    sget-object v0, Lo/Header;->onPostMessage:[I

    return-object v0

    :cond_5
    invoke-static {v11}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected extraCallback(Lo/JuspaySessionToken;[[IILo/Header$onMessageChannelReady;Z)Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/JuspaySessionToken;",
            "[[II",
            "Lo/Header$onMessageChannelReady;",
            "Z)",
            "Landroid/util/Pair<",
            "Lo/InstrumentView$onPostMessage;",
            "Lo/Header$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v8, v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 1999
    :goto_0
    iget v9, v0, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    if-ge v5, v9, :cond_4

    .line 2000
    invoke-virtual {v0, v5}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v9

    .line 2001
    aget-object v10, p2, v5

    const/4 v11, 0x0

    .line 2002
    :goto_1
    iget v12, v9, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v11, v12, :cond_3

    .line 2003
    aget v12, v10, v11

    iget-boolean v13, v1, Lo/Header$onMessageChannelReady;->validateRelationship:Z

    invoke-static {v12, v13}, Lo/Header;->extraCallback(IZ)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2005
    invoke-virtual {v9, v11}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v12

    .line 2006
    new-instance v13, Lo/Header$onNavigationEvent;

    aget v14, v10, v11

    invoke-direct {v13, v12, v1, v14}, Lo/Header$onNavigationEvent;-><init>(Lo/p$a;Lo/Header$onMessageChannelReady;I)V

    .line 2008
    iget-boolean v12, v13, Lo/Header$onNavigationEvent;->onMessageChannelReady:Z

    if-nez v12, :cond_0

    iget-boolean v12, v1, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v12, :cond_2

    :cond_0
    if-eqz v8, :cond_1

    .line 2012
    invoke-virtual {v13, v8}, Lo/Header$onNavigationEvent;->ICustomTabsCallback(Lo/Header$onNavigationEvent;)I

    move-result v12

    if-lez v12, :cond_2

    :cond_1
    move v6, v5

    move v7, v11

    move-object v8, v13

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-ne v6, v4, :cond_5

    return-object v3

    .line 2025
    :cond_5
    invoke-virtual {v0, v6}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v0

    .line 2028
    iget-boolean v4, v1, Lo/Header$onMessageChannelReady;->requestPostMessageChannel:Z

    if-nez v4, :cond_6

    iget-boolean v4, v1, Lo/Header$onMessageChannelReady;->extraCommand:Z

    if-nez v4, :cond_6

    if-eqz p5, :cond_6

    .line 2032
    aget-object v10, p2, v6

    iget v11, v1, Lo/Header$onMessageChannelReady;->newSession:I

    iget-boolean v12, v1, Lo/Header$onMessageChannelReady;->getInterfaceDescriptor:Z

    iget-boolean v13, v1, Lo/Header$onMessageChannelReady;->mayLaunchUrl:Z

    iget-boolean v14, v1, Lo/Header$onMessageChannelReady;->postMessage:Z

    move-object v9, v0

    .line 2033
    invoke-static/range {v9 .. v14}, Lo/Header;->extraCallback(Lo/getJuspayUpi;[IIZZZ)[I

    move-result-object v1

    .line 2040
    array-length v4, v1

    if-lez v4, :cond_6

    .line 2041
    new-instance v3, Lo/InstrumentView$onPostMessage;

    invoke-direct {v3, v0, v1}, Lo/InstrumentView$onPostMessage;-><init>(Lo/getJuspayUpi;[I)V

    :cond_6
    if-nez v3, :cond_7

    .line 2046
    new-instance v3, Lo/InstrumentView$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v7, v1, v2

    invoke-direct {v3, v0, v1}, Lo/InstrumentView$onPostMessage;-><init>(Lo/getJuspayUpi;[I)V

    .line 2049
    :cond_7
    invoke-static {v8}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onMessageChannelReady(ILo/JuspaySessionToken;[[ILo/Header$onMessageChannelReady;)Lo/InstrumentView$onPostMessage;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2224
    :goto_0
    iget v5, p2, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    const/4 v6, 0x1

    if-ge v1, v5, :cond_5

    .line 2225
    invoke-virtual {p2, v1}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v5

    .line 2226
    aget-object v7, p3, v1

    const/4 v8, 0x0

    .line 2227
    :goto_1
    iget v9, v5, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v8, v9, :cond_4

    .line 2228
    aget v9, v7, v8

    iget-boolean v10, p4, Lo/Header$onMessageChannelReady;->validateRelationship:Z

    invoke-static {v9, v10}, Lo/Header;->extraCallback(IZ)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2230
    invoke-virtual {v5, v8}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v9

    .line 2231
    iget v9, v9, Lo/p$a;->onMessageChannelReady:I

    and-int/2addr v9, v6

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_1

    const/4 v9, 0x2

    goto :goto_3

    :cond_1
    const/4 v9, 0x1

    .line 2233
    :goto_3
    aget v10, v7, v8

    invoke-static {v10, v0}, Lo/Header;->extraCallback(IZ)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit16 v9, v9, 0x3e8

    :cond_2
    if-le v9, v4, :cond_3

    move-object v2, v5

    move v3, v8

    move v4, v9

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    return-object p1

    .line 2244
    :cond_6
    new-instance p1, Lo/InstrumentView$onPostMessage;

    new-array p2, v6, [I

    aput v3, p2, v0

    invoke-direct {p1, v2, p2}, Lo/InstrumentView$onPostMessage;-><init>(Lo/getJuspayUpi;[I)V

    return-object p1
.end method

.method protected final onNavigationEvent(Lo/HeaderDataJsonAdapter$ICustomTabsCallback;[[[I[I)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HeaderDataJsonAdapter$ICustomTabsCallback;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lo/Payload;",
            "[",
            "Lo/InstrumentView;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1517
    iget-object v0, p0, Lo/Header;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Header$onMessageChannelReady;

    .line 1518
    invoke-virtual {p1}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent()I

    move-result v1

    .line 1520
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/Header;->onNavigationEvent(Lo/HeaderDataJsonAdapter$ICustomTabsCallback;[[[I[ILo/Header$onMessageChannelReady;)[Lo/InstrumentView$onPostMessage;

    move-result-object p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_3

    .line 1528
    invoke-virtual {v0, v3}, Lo/Header$onMessageChannelReady;->onMessageChannelReady(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1532
    :cond_0
    invoke-virtual {p1, v3}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage(I)Lo/JuspaySessionToken;

    move-result-object v5

    .line 1533
    invoke-virtual {v0, v3, v5}, Lo/Header$onMessageChannelReady;->onPostMessage(ILo/JuspaySessionToken;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1534
    invoke-virtual {v0, v3, v5}, Lo/Header$onMessageChannelReady;->extraCallback(ILo/JuspaySessionToken;)Lo/Header$onPostMessage;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 1535
    :cond_1
    new-instance v4, Lo/InstrumentView$onPostMessage;

    iget v7, v6, Lo/Header$onPostMessage;->ICustomTabsCallback:I

    .line 1539
    invoke-virtual {v5, v7}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v5

    iget-object v7, v6, Lo/Header$onPostMessage;->onPostMessage:[I

    iget v8, v6, Lo/Header$onPostMessage;->extraCallback:I

    iget v6, v6, Lo/Header$onPostMessage;->onMessageChannelReady:I

    .line 1542
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v7, v8, v6}, Lo/InstrumentView$onPostMessage;-><init>(Lo/getJuspayUpi;[IILjava/lang/Object;)V

    :goto_1
    aput-object v4, p3, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1547
    :cond_3
    iget-object v3, p0, Lo/Header;->onMessageChannelReady:Lo/InstrumentView$ICustomTabsCallback;

    .line 1548
    invoke-virtual {p0}, Lo/Header;->ICustomTabsCallback()Lo/PaymentInstrumentRequestJsonAdapter;

    move-result-object v5

    invoke-interface {v3, p3, v5}, Lo/InstrumentView$ICustomTabsCallback;->onMessageChannelReady([Lo/InstrumentView$onPostMessage;Lo/PaymentInstrumentRequestJsonAdapter;)[Lo/InstrumentView;

    move-result-object p3

    .line 1552
    new-array v3, v1, [Lo/Payload;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_7

    .line 1555
    invoke-virtual {v0, v5}, Lo/Header$onMessageChannelReady;->onMessageChannelReady(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1558
    invoke-virtual {p1, v5}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent(I)I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_4

    aget-object v6, p3, v5

    if-eqz v6, :cond_5

    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_6

    .line 1560
    sget-object v6, Lo/Payload;->onPostMessage:Lo/Payload;

    goto :goto_4

    :cond_6
    move-object v6, v4

    :goto_4
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1564
    :cond_7
    iget v0, v0, Lo/Header$onMessageChannelReady;->IPostMessageService$Stub:I

    invoke-static {p1, p2, v3, p3, v0}, Lo/Header;->extraCallback(Lo/HeaderDataJsonAdapter$ICustomTabsCallback;[[[I[Lo/Payload;[Lo/InstrumentView;I)V

    .line 1571
    invoke-static {v3, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected onNavigationEvent(Lo/JuspaySessionToken;[[IILo/Header$onMessageChannelReady;Z)Lo/InstrumentView$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1718
    iget-boolean v0, p4, Lo/Header$onMessageChannelReady;->requestPostMessageChannel:Z

    if-nez v0, :cond_0

    iget-boolean v0, p4, Lo/Header$onMessageChannelReady;->extraCommand:Z

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 1722
    invoke-static {p1, p2, p3, p4}, Lo/Header;->onNavigationEvent(Lo/JuspaySessionToken;[[IILo/Header$onMessageChannelReady;)Lo/InstrumentView$onPostMessage;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    .line 1725
    invoke-static {p1, p2, p4}, Lo/Header;->onNavigationEvent(Lo/JuspaySessionToken;[[ILo/Header$onMessageChannelReady;)Lo/InstrumentView$onPostMessage;

    move-result-object p3

    :cond_1
    return-object p3
.end method

.method protected onNavigationEvent(Lo/HeaderDataJsonAdapter$ICustomTabsCallback;[[[I[ILo/Header$onMessageChannelReady;)[Lo/InstrumentView$onPostMessage;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    .line 1598
    invoke-virtual/range {p1 .. p1}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent()I

    move-result v9

    .line 1599
    new-array v10, v9, [Lo/InstrumentView$onPostMessage;

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ge v12, v9, :cond_4

    .line 1605
    invoke-virtual {v7, v12}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent(I)I

    move-result v1

    if-ne v14, v1, :cond_3

    if-nez v0, :cond_1

    .line 1609
    invoke-virtual {v7, v12}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage(I)Lo/JuspaySessionToken;

    move-result-object v1

    aget-object v2, p2, v12

    aget v3, p3, v12

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    .line 1608
    invoke-virtual/range {v0 .. v5}, Lo/Header;->onNavigationEvent(Lo/JuspaySessionToken;[[IILo/Header$onMessageChannelReady;Z)Lo/InstrumentView$onPostMessage;

    move-result-object v0

    aput-object v0, v10, v12

    .line 1614
    aget-object v0, v10, v12

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1616
    :cond_1
    :goto_1
    invoke-virtual {v7, v12}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage(I)Lo/JuspaySessionToken;

    move-result-object v1

    iget v1, v1, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    or-int/2addr v13, v15

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    const/4 v12, -0x1

    const/16 v16, 0x0

    move-object/from16 v3, v16

    move-object v4, v3

    const/4 v2, -0x1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_b

    .line 1624
    invoke-virtual {v7, v5}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent(I)I

    move-result v0

    if-ne v15, v0, :cond_9

    .line 1625
    iget-boolean v0, v6, Lo/Header;->onNavigationEvent:Z

    if-nez v0, :cond_6

    if-nez v13, :cond_5

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/16 v17, 0x1

    .line 1629
    :goto_5
    invoke-virtual {v7, v5}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage(I)Lo/JuspaySessionToken;

    move-result-object v1

    aget-object v18, p2, v5

    aget v19, p3, v5

    move-object/from16 v0, p0

    move v14, v2

    move-object/from16 v2, v18

    move-object v15, v3

    move/from16 v3, v19

    move-object/from16 v20, v4

    move-object/from16 v4, p4

    move/from16 v19, v5

    move/from16 v5, v17

    .line 1628
    invoke-virtual/range {v0 .. v5}, Lo/Header;->extraCallback(Lo/JuspaySessionToken;[[IILo/Header$onMessageChannelReady;Z)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eqz v15, :cond_7

    .line 1634
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lo/Header$onNavigationEvent;

    .line 1636
    invoke-virtual {v1, v15}, Lo/Header$onNavigationEvent;->ICustomTabsCallback(Lo/Header$onNavigationEvent;)I

    move-result v1

    if-lez v1, :cond_a

    :cond_7
    if-eq v14, v12, :cond_8

    .line 1640
    aput-object v16, v10, v14

    .line 1642
    :cond_8
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lo/InstrumentView$onPostMessage;

    .line 1643
    aput-object v1, v10, v19

    .line 1645
    iget-object v2, v1, Lo/InstrumentView$onPostMessage;->ICustomTabsCallback:Lo/getJuspayUpi;

    iget-object v1, v1, Lo/InstrumentView$onPostMessage;->onNavigationEvent:[I

    aget v1, v1, v11

    invoke-virtual {v2, v1}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v1

    iget-object v4, v1, Lo/p$a;->cancel:Ljava/lang/String;

    .line 1646
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lo/Header$onNavigationEvent;

    move/from16 v2, v19

    goto :goto_6

    :cond_9
    move v14, v2

    move-object v15, v3

    move-object/from16 v20, v4

    move/from16 v19, v5

    :cond_a
    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v20

    :goto_6
    add-int/lit8 v5, v19, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v20, v4

    move-object/from16 v0, v16

    const/4 v1, -0x1

    :goto_7
    if-ge v11, v9, :cond_12

    .line 1655
    invoke-virtual {v7, v11}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_10

    const/4 v4, 0x2

    if-eq v2, v4, :cond_f

    const/4 v5, 0x3

    if-eq v2, v5, :cond_c

    .line 1684
    invoke-virtual {v7, v11}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage(I)Lo/JuspaySessionToken;

    move-result-object v5

    aget-object v13, p2, v11

    .line 1683
    invoke-virtual {v6, v2, v5, v13, v8}, Lo/Header;->onMessageChannelReady(ILo/JuspaySessionToken;[[ILo/Header$onMessageChannelReady;)Lo/InstrumentView$onPostMessage;

    move-result-object v2

    aput-object v2, v10, v11

    goto :goto_8

    .line 1664
    :cond_c
    invoke-virtual {v7, v11}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage(I)Lo/JuspaySessionToken;

    move-result-object v2

    aget-object v5, p2, v11

    move-object/from16 v13, v20

    .line 1663
    invoke-virtual {v6, v2, v5, v8, v13}, Lo/Header;->onPostMessage(Lo/JuspaySessionToken;[[ILo/Header$onMessageChannelReady;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_11

    if-eqz v0, :cond_d

    .line 1668
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lo/Header$extraCallback;

    .line 1670
    invoke-virtual {v5, v0}, Lo/Header$extraCallback;->ICustomTabsCallback(Lo/Header$extraCallback;)I

    move-result v5

    if-lez v5, :cond_11

    :cond_d
    if-eq v1, v12, :cond_e

    .line 1674
    aput-object v16, v10, v1

    .line 1676
    :cond_e
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lo/InstrumentView$onPostMessage;

    aput-object v0, v10, v11

    .line 1677
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lo/Header$extraCallback;

    move v1, v11

    goto :goto_9

    :cond_f
    :goto_8
    move-object/from16 v13, v20

    goto :goto_9

    :cond_10
    move-object/from16 v13, v20

    const/4 v4, 0x2

    :cond_11
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v13

    goto :goto_7

    :cond_12
    return-object v10
.end method

.method protected onPostMessage(Lo/JuspaySessionToken;[[ILo/Header$onMessageChannelReady;Ljava/lang/String;)Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/JuspaySessionToken;",
            "[[I",
            "Lo/Header$onMessageChannelReady;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lo/InstrumentView$onPostMessage;",
            "Lo/Header$extraCallback;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v6, v3

    move-object v7, v6

    const/4 v5, 0x0

    .line 2177
    :goto_0
    iget v8, v0, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    if-ge v5, v8, :cond_4

    .line 2178
    invoke-virtual {v0, v5}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v8

    .line 2179
    aget-object v9, p2, v5

    const/4 v10, 0x0

    .line 2180
    :goto_1
    iget v11, v8, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v10, v11, :cond_3

    .line 2181
    aget v11, v9, v10

    iget-boolean v12, v1, Lo/Header$onMessageChannelReady;->validateRelationship:Z

    invoke-static {v11, v12}, Lo/Header;->extraCallback(IZ)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2183
    invoke-virtual {v8, v10}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v11

    .line 2184
    new-instance v12, Lo/Header$extraCallback;

    aget v13, v9, v10

    move-object/from16 v14, p4

    invoke-direct {v12, v11, v1, v13, v14}, Lo/Header$extraCallback;-><init>(Lo/p$a;Lo/Header$onMessageChannelReady;ILjava/lang/String;)V

    .line 2187
    iget-boolean v11, v12, Lo/Header$extraCallback;->onMessageChannelReady:Z

    if-eqz v11, :cond_2

    if-eqz v7, :cond_0

    .line 2188
    invoke-virtual {v12, v7}, Lo/Header$extraCallback;->ICustomTabsCallback(Lo/Header$extraCallback;)I

    move-result v11

    if-lez v11, :cond_2

    :cond_0
    move-object v6, v8

    move v4, v10

    move-object v7, v12

    goto :goto_2

    :cond_1
    move-object/from16 v14, p4

    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v14, p4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    return-object v3

    .line 2196
    :cond_5
    new-instance v0, Lo/InstrumentView$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v4, v1, v2

    invoke-direct {v0, v6, v1}, Lo/InstrumentView$onPostMessage;-><init>(Lo/getJuspayUpi;[I)V

    .line 2200
    invoke-static {v7}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2198
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
