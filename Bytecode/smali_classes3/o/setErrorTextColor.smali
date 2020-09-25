.class public final Lo/setErrorTextColor;
.super Lo/setHintTextColor;
.source ""


# direct methods
.method constructor <init>(Lo/setHint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setHintTextColor;-><init>(Lo/setHint;)V

    return-void
.end method

.method static ICustomTabsCallback(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 452
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x40

    .line 453
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static extraCallback(Ljava/util/BitSet;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    .line 456
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_1

    shl-int/lit8 v8, v4, 0x6

    add-int/2addr v8, v7

    .line 460
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 461
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v7

    or-long/2addr v5, v8

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 464
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static extraCallback([Landroid/os/Bundle;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lo/cH$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 556
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p0, v2

    if-eqz v3, :cond_4

    .line 558
    invoke-static {}, Lo/cH$onNavigationEvent;->ICustomTabsService()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v4

    .line 559
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 560
    invoke-static {}, Lo/cH$onNavigationEvent;->ICustomTabsService()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v7

    invoke-virtual {v7, v6}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v7

    .line 561
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 562
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_1

    .line 563
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback(J)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    goto :goto_2

    .line 564
    :cond_1
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 565
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    goto :goto_2

    .line 566
    :cond_2
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_0

    .line 567
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage(D)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    .line 568
    :goto_2
    invoke-virtual {v4, v7}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage(Lo/cH$onNavigationEvent$ICustomTabsCallback;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    goto :goto_1

    .line 570
    :cond_3
    invoke-virtual {v4}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady()I

    move-result v3

    if-lez v3, :cond_4

    .line 571
    invoke-virtual {v4}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v3

    check-cast v3, Lo/fa;

    check-cast v3, Lo/cH$onNavigationEvent;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static extraCallback(Ljava/lang/StringBuilder;ILjava/lang/String;Lo/cB$ICustomTabsCallback;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-static {p0, p1}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    .line 364
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 365
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p3}, Lo/cB$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 367
    invoke-virtual {p3}, Lo/cB$ICustomTabsCallback;->onMessageChannelReady()Lo/cB$ICustomTabsCallback$onPostMessage;

    move-result-object p2

    invoke-virtual {p2}, Lo/cB$ICustomTabsCallback$onPostMessage;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "comparison_type"

    invoke-static {p0, p1, v0, p2}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 368
    :cond_1
    invoke-virtual {p3}, Lo/cB$ICustomTabsCallback;->onNavigationEvent()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 369
    invoke-virtual {p3}, Lo/cB$ICustomTabsCallback;->extraCallback()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "match_as_float"

    invoke-static {p0, p1, v0, p2}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 370
    :cond_2
    invoke-virtual {p3}, Lo/cB$ICustomTabsCallback;->onPostMessage()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 371
    invoke-virtual {p3}, Lo/cB$ICustomTabsCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object p2

    const-string v0, "comparison_value"

    invoke-static {p0, p1, v0, p2}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 372
    :cond_3
    invoke-virtual {p3}, Lo/cB$ICustomTabsCallback;->asBinder()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 373
    invoke-virtual {p3}, Lo/cB$ICustomTabsCallback;->onTransact()Ljava/lang/String;

    move-result-object p2

    const-string v0, "min_comparison_value"

    invoke-static {p0, p1, v0, p2}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 374
    :cond_4
    invoke-virtual {p3}, Lo/cB$ICustomTabsCallback;->onRelationshipValidationResult()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 375
    invoke-virtual {p3}, Lo/cB$ICustomTabsCallback;->asInterface()Ljava/lang/String;

    move-result-object p2

    const-string p3, "max_comparison_value"

    invoke-static {p0, p1, p3, p2}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 376
    :cond_5
    invoke-static {p0, p1}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n"

    .line 377
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static extraCallback(Ljava/lang/StringBuilder;ILjava/lang/String;Lo/cH$asBinder;Ljava/lang/String;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 306
    invoke-static {p0, p1}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    .line 307
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 308
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p3}, Lo/cH$asBinder;->extraCallback()I

    move-result p2

    const/16 p4, 0xa

    const/4 v0, 0x4

    const-string v1, ", "

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 310
    invoke-static {p0, v0}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string p2, "results: "

    .line 311
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p3}, Lo/cH$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v5, v3, 0x1

    if-eqz v3, :cond_1

    .line 315
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    :cond_3
    invoke-virtual {p3}, Lo/cH$asBinder;->onPostMessage()I

    move-result p2

    if-eqz p2, :cond_6

    .line 320
    invoke-static {p0, v0}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string p2, "status: "

    .line 321
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p3}, Lo/cH$asBinder;->onMessageChannelReady()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v5, v3, 0x1

    if-eqz v3, :cond_4

    .line 325
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_1

    .line 328
    :cond_5
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    :cond_6
    invoke-virtual {p3}, Lo/cH$asBinder;->onTransact()I

    move-result p2

    const/4 p4, 0x0

    const-string v3, "}\n"

    if-eqz p2, :cond_b

    .line 330
    invoke-static {p0, v0}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string p2, "dynamic_filter_timestamps: {"

    .line 331
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p3}, Lo/cH$asBinder;->onNavigationEvent()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v4, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/cH$onMessageChannelReady;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_7

    .line 335
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_7
    invoke-virtual {v5}, Lo/cH$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v5}, Lo/cH$onMessageChannelReady;->ICustomTabsCallback()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_8
    move-object v4, p4

    :goto_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    .line 337
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v5}, Lo/cH$onMessageChannelReady;->onPostMessage()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v5}, Lo/cH$onMessageChannelReady;->extraCallback()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, p4

    :goto_4
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_2

    .line 340
    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_b
    invoke-virtual {p3}, Lo/cH$asBinder;->onRelationshipValidationResult()I

    move-result p2

    if-eqz p2, :cond_11

    .line 342
    invoke-static {p0, v0}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string p2, "sequence_filter_timestamps: {"

    .line 343
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p3}, Lo/cH$asBinder;->asInterface()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/cH$asInterface;

    add-int/lit8 v4, p3, 0x1

    if-eqz p3, :cond_c

    .line 347
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_c
    invoke-virtual {v0}, Lo/cH$asInterface;->ICustomTabsCallback()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {v0}, Lo/cH$asInterface;->onPostMessage()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_6

    :cond_d
    move-object p3, p4

    :goto_6
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": ["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0}, Lo/cH$asInterface;->onNavigationEvent()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v7, v0, 0x1

    if-eqz v0, :cond_e

    .line 352
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_e
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v7

    goto :goto_7

    :cond_f
    const-string p3, "]"

    .line 355
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p3, v4

    goto :goto_5

    .line 357
    :cond_10
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_11
    invoke-static {p0, p1}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    .line 359
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static onMessageChannelReady(ZZZ)Ljava/lang/String;
    .locals 1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "Dynamic "

    .line 267
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "Sequence "

    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "Session-Scoped "

    .line 271
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static onMessageChannelReady(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 449
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 423
    invoke-static {p0, p1}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    .line 424
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 425
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 427
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/StringBuilder;ILo/cB$onMessageChannelReady;)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-static {p1, p2}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    .line 382
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p3}, Lo/cB$onMessageChannelReady;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p3}, Lo/cB$onMessageChannelReady;->onRelationshipValidationResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 385
    :cond_1
    invoke-virtual {p3}, Lo/cB$onMessageChannelReady;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    invoke-virtual {p3}, Lo/cB$onMessageChannelReady;->onTransact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setLiftOnScrollTargetViewId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_name"

    .line 388
    invoke-static {p1, p2, v1, v0}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 389
    :cond_2
    invoke-virtual {p3}, Lo/cB$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v0

    const-string v1, "}\n"

    if-eqz v0, :cond_8

    add-int/lit8 v0, p2, 0x1

    .line 390
    invoke-virtual {p3}, Lo/cB$onMessageChannelReady;->onPostMessage()Lo/cB$asBinder;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 392
    invoke-static {p1, v0}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string v3, "string_filter"

    .line 393
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {\n"

    .line 394
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v2}, Lo/cB$asBinder;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    invoke-virtual {v2}, Lo/cB$asBinder;->onPostMessage()Lo/cB$asBinder$onPostMessage;

    move-result-object v3

    invoke-virtual {v3}, Lo/cB$asBinder$onPostMessage;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "match_type"

    invoke-static {p1, v0, v4, v3}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 397
    :cond_3
    invoke-virtual {v2}, Lo/cB$asBinder;->ICustomTabsCallback()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 398
    invoke-virtual {v2}, Lo/cB$asBinder;->onNavigationEvent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "expression"

    invoke-static {p1, v0, v4, v3}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 399
    :cond_4
    invoke-virtual {v2}, Lo/cB$asBinder;->extraCallback()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 400
    invoke-virtual {v2}, Lo/cB$asBinder;->asInterface()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 401
    :cond_5
    invoke-virtual {v2}, Lo/cB$asBinder;->asBinder()I

    move-result v3

    if-lez v3, :cond_7

    add-int/lit8 v3, v0, 0x1

    .line 402
    invoke-static {p1, v3}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string v3, "expression_list {\n"

    .line 403
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v2}, Lo/cB$asBinder;->ICustomTabsCallback$Stub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    .line 405
    invoke-static {p1, v4}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    .line 406
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 407
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 409
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_7
    invoke-static {p1, v0}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    .line 411
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_8
    invoke-virtual {p3}, Lo/cB$onMessageChannelReady;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p2, 0x1

    .line 413
    invoke-virtual {p3}, Lo/cB$onMessageChannelReady;->onNavigationEvent()Lo/cB$ICustomTabsCallback;

    move-result-object p3

    const-string v2, "number_filter"

    invoke-static {p1, v0, v2, p3}, Lo/setErrorTextColor;->extraCallback(Ljava/lang/StringBuilder;ILjava/lang/String;Lo/cB$ICustomTabsCallback;)V

    .line 414
    :cond_9
    invoke-static {p1, p2}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    .line 415
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static onPostMessage(Lo/cH$onTransact$extraCallback;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 550
    :goto_0
    invoke-virtual {p0}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 551
    invoke-virtual {p0, v1}, Lo/cH$onTransact$extraCallback;->onPostMessage(I)Lo/cH$newSession;

    move-result-object v2

    invoke-virtual {v2}, Lo/cH$newSession;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;
    .locals 2

    .line 27
    invoke-virtual {p0}, Lo/cH$ICustomTabsCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/cH$onNavigationEvent;

    .line 28
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static onPostMessage(Lo/startRecording;[B)Lo/startRecording;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Builder::",
            "Lo/startRecording;",
            ">(TBuilder;[B)TBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    .line 544
    invoke-static {}, Lo/getMaxSize;->onMessageChannelReady()Lo/getMaxSize;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    invoke-interface {p0, p1, v0}, Lo/startRecording;->extraCallback([BLo/getMaxSize;)Lo/startRecording;

    move-result-object p0

    return-object p0

    .line 547
    :cond_0
    invoke-interface {p0, p1}, Lo/startRecording;->onPostMessage([B)Lo/startRecording;

    move-result-object p0

    return-object p0
.end method

.method private static onPostMessage(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    .line 418
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final onPostMessage(Ljava/lang/StringBuilder;ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "I",
            "Ljava/util/List<",
            "Lo/cH$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 276
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/cH$onNavigationEvent;

    if-eqz v0, :cond_1

    .line 278
    invoke-static {p1, p2}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string v1, "param {\n"

    .line 279
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v1

    const-string v2, "double_value"

    const-string v3, "int_value"

    const-string v4, "string_value"

    const-string v5, "name"

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v7, Lo/zziq;->MediaBrowserCompat$ItemReceiver:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v7}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 282
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v1

    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lo/setLiftOnScrollTargetViewId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v6

    .line 283
    :goto_1
    invoke-static {p1, p2, v5, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 285
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v6

    .line 286
    :goto_2
    invoke-static {p1, p2, v4, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v6

    :goto_3
    invoke-static {p1, p2, v3, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->asInterface()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->onRelationshipValidationResult()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 290
    :cond_5
    invoke-static {p1, p2, v2, v6}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->getInterfaceDescriptor()I

    move-result v1

    if-lez v1, :cond_9

    .line 292
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->newSession()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;ILjava/util/List;)V

    goto :goto_5

    .line 293
    :cond_6
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v1

    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lo/setLiftOnScrollTargetViewId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v5, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v4, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, v6

    :goto_4
    invoke-static {p1, p2, v3, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->asInterface()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->onRelationshipValidationResult()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 298
    :cond_8
    invoke-static {p1, p2, v2, v6}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 299
    :cond_9
    :goto_5
    invoke-static {p1, p2}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method static onPostMessage(Lo/zzir;Lo/setCounterTextAppearance;)Z
    .locals 0

    .line 443
    invoke-static {p0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object p0, p1, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 32
    invoke-static {p1, p2}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$ICustomTabsCallback;Ljava/lang/String;)Lo/cH$onNavigationEvent;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 34
    invoke-virtual {p1}, Lo/cH$onNavigationEvent;->onMessageChannelReady()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p1}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    invoke-virtual {p1}, Lo/cH$onNavigationEvent;->ICustomTabsCallback()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 37
    invoke-virtual {p1}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 38
    :cond_1
    invoke-virtual {p1}, Lo/cH$onNavigationEvent;->asInterface()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 39
    invoke-virtual {p1}, Lo/cH$onNavigationEvent;->onRelationshipValidationResult()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 40
    :cond_2
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 41
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p2

    sget-object v0, Lo/zziq;->onLoadChildren:Lo/setStatusBarForegroundColor;

    invoke-virtual {p2, v0}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 42
    invoke-virtual {p1}, Lo/cH$onNavigationEvent;->getInterfaceDescriptor()I

    move-result p2

    if-lez p2, :cond_9

    .line 43
    invoke-virtual {p1}, Lo/cH$onNavigationEvent;->newSession()Ljava/util/List;

    move-result-object p1

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/cH$onNavigationEvent;

    if-eqz v0, :cond_3

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {v0}, Lo/cH$onNavigationEvent;->newSession()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/cH$onNavigationEvent;

    .line 49
    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 50
    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_5
    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->ICustomTabsCallback()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 52
    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 53
    :cond_6
    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->asInterface()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 54
    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->onRelationshipValidationResult()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 56
    :cond_7
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Bundle;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Bundle;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method final ICustomTabsCallback(Lo/cB$onNavigationEvent;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p1}, Lo/cB$onNavigationEvent;->onNavigationEvent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p1}, Lo/cB$onNavigationEvent;->ICustomTabsCallback()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v1

    invoke-virtual {p1}, Lo/cB$onNavigationEvent;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    .line 230
    invoke-static {v0, v2, v3, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p1}, Lo/cB$onNavigationEvent;->asBinder()Z

    move-result v1

    invoke-virtual {p1}, Lo/cB$onNavigationEvent;->onTransact()Z

    move-result v3

    invoke-virtual {p1}, Lo/cB$onNavigationEvent;->warmup()Z

    move-result v4

    .line 233
    invoke-static {v1, v3, v4}, Lo/setErrorTextColor;->onMessageChannelReady(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "filter_type"

    .line 235
    invoke-static {v0, v2, v3, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 236
    :cond_2
    invoke-virtual {p1}, Lo/cB$onNavigationEvent;->onRelationshipValidationResult()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 237
    invoke-virtual {p1}, Lo/cB$onNavigationEvent;->asInterface()Lo/cB$ICustomTabsCallback;

    move-result-object v1

    const-string v3, "event_count_filter"

    invoke-static {v0, v2, v3, v1}, Lo/setErrorTextColor;->extraCallback(Ljava/lang/StringBuilder;ILjava/lang/String;Lo/cB$ICustomTabsCallback;)V

    .line 238
    :cond_3
    invoke-virtual {p1}, Lo/cB$onNavigationEvent;->onPostMessage()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "  filters {\n"

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p1}, Lo/cB$onNavigationEvent;->extraCallback()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/cB$onMessageChannelReady;

    const/4 v3, 0x2

    .line 241
    invoke-direct {p0, v0, v3, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILo/cB$onMessageChannelReady;)V

    goto :goto_0

    .line 243
    :cond_4
    invoke-static {v0, v2}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 581
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsCallback()V

    return-void
.end method

.method final ICustomTabsCallback([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 512
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 513
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 514
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 515
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 516
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 518
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    throw p1
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 583
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 585
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic L_()Lo/setClickable;
    .locals 1

    .line 578
    invoke-super {p0}, Lo/setHintTextColor;->L_()Lo/setClickable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic M_()Lo/zzzv;
    .locals 1

    .line 577
    invoke-super {p0}, Lo/setHintTextColor;->M_()Lo/zzzv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic N_()Lo/setErrorIconTintMode;
    .locals 1

    .line 576
    invoke-super {p0}, Lo/setHintTextColor;->N_()Lo/setErrorIconTintMode;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic O_()Lo/setErrorTextColor;
    .locals 1

    .line 575
    invoke-super {p0}, Lo/setHintTextColor;->O_()Lo/setErrorTextColor;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic P_()Lo/FloatingActionButton$BaseBehavior;
    .locals 1

    .line 574
    invoke-super {p0}, Lo/setHintTextColor;->P_()Lo/FloatingActionButton$BaseBehavior;

    move-result-object v0

    return-object v0
.end method

.method final extraCallback(Lo/cB$onPostMessage;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p1}, Lo/cB$onPostMessage;->onPostMessage()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {p1}, Lo/cB$onPostMessage;->ICustomTabsCallback()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 253
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v1

    invoke-virtual {p1}, Lo/cB$onPostMessage;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    .line 254
    invoke-static {v0, v2, v3, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-virtual {p1}, Lo/cB$onPostMessage;->extraCallback()Z

    move-result v1

    .line 257
    invoke-virtual {p1}, Lo/cB$onPostMessage;->ICustomTabsCallback$Stub()Z

    move-result v3

    .line 258
    invoke-virtual {p1}, Lo/cB$onPostMessage;->asBinder()Z

    move-result v4

    .line 259
    invoke-static {v1, v3, v4}, Lo/setErrorTextColor;->onMessageChannelReady(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "filter_type"

    .line 261
    invoke-static {v0, v2, v3, v1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x1

    .line 262
    invoke-virtual {p1}, Lo/cB$onPostMessage;->onNavigationEvent()Lo/cB$onMessageChannelReady;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILo/cB$onMessageChannelReady;)V

    const-string p1, "}\n"

    .line 263
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final extraCallback(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 468
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 469
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Ignoring negative bit index to be cleared"

    invoke-virtual {v1, v2, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    .line 473
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 474
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 475
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 476
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Ignoring bit index greater than bitSet size"

    invoke-virtual {v1, v3, p2, v2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x40

    shl-long/2addr v4, p2

    not-long v4, v4

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 480
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 481
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    move v6, p2

    move p2, p1

    move p1, v6

    if-ltz p1, :cond_3

    .line 482
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 485
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 580
    invoke-super {p0}, Lo/setHintTextColor;->extraCallback()V

    return-void
.end method

.method final extraCallback(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    .line 487
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final extraCallback([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 498
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 499
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 501
    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 503
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 506
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 507
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 509
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    throw p1
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 589
    invoke-super {p0}, Lo/setHintTextColor;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 582
    invoke-super {p0}, Lo/setHintTextColor;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 588
    invoke-super {p0}, Lo/setHintTextColor;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 586
    invoke-super {p0}, Lo/setHintTextColor;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 579
    invoke-super {p0}, Lo/setHintTextColor;->onMessageChannelReady()V

    return-void
.end method

.method final onNavigationEvent([B)J
    .locals 2

    .line 489
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 491
    invoke-static {}, Lo/setHelperTextEnabled;->asBinder()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Failed to get MD5"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 495
    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 496
    invoke-static {p1}, Lo/setHelperTextEnabled;->onNavigationEvent([B)J

    move-result-wide v0

    return-wide v0
.end method

.method final onNavigationEvent(Lo/cH$newSession$onPostMessage;Ljava/lang/Object;)V
    .locals 2

    .line 4
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lo/cH$newSession$onPostMessage;->ICustomTabsCallback()Lo/cH$newSession$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH$newSession$onPostMessage;->onMessageChannelReady()Lo/cH$newSession$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH$newSession$onPostMessage;->onPostMessage()Lo/cH$newSession$onPostMessage;

    .line 6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/cH$newSession$onPostMessage;->onNavigationEvent(Ljava/lang/String;)Lo/cH$newSession$onPostMessage;

    return-void

    .line 8
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/cH$newSession$onPostMessage;->onPostMessage(J)Lo/cH$newSession$onPostMessage;

    return-void

    .line 10
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/cH$newSession$onPostMessage;->onPostMessage(D)Lo/cH$newSession$onPostMessage;

    return-void

    .line 12
    :cond_2
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final onPostMessage([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 431
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 432
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 433
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 434
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 438
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 441
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    throw p1
.end method

.method final onPostMessage(Lo/cH$onRelationshipValidationResult;)Ljava/lang/String;
    .locals 12

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Lo/cH$onRelationshipValidationResult;->onMessageChannelReady()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "}\n"

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/cH$onTransact;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 98
    invoke-static {v0, v3}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string v4, "bundle {\n"

    .line 99
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Lo/cH$onTransact;->onPostMessage()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v1}, Lo/cH$onTransact;->extraCallback()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "protocol_version"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 102
    :cond_2
    invoke-virtual {v1}, Lo/cH$onTransact;->requestPostMessageChannel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "platform"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v1}, Lo/cH$onTransact;->IPostMessageService$Stub$Proxy()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    invoke-virtual {v1}, Lo/cH$onTransact;->INotificationSideChannel()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "gmp_version"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    :cond_3
    invoke-virtual {v1}, Lo/cH$onTransact;->cancel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 106
    invoke-virtual {v1}, Lo/cH$onTransact;->cancelAll()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "uploading_gmp_version"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 107
    :cond_4
    invoke-virtual {v1}, Lo/cH$onTransact;->MediaBrowserCompat$CallbackHandler()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    invoke-virtual {v1}, Lo/cH$onTransact;->setCallbacksMessenger()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "dynamite_version"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_5
    invoke-virtual {v1}, Lo/cH$onTransact;->getExtras()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 110
    invoke-virtual {v1}, Lo/cH$onTransact;->getRoot()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "config_version"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 111
    :cond_6
    invoke-virtual {v1}, Lo/cH$onTransact;->RemoteActionCompatParcelizer()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gmp_app_id"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v1}, Lo/cH$onTransact;->subscribe()Ljava/lang/String;

    move-result-object v4

    const-string v5, "admob_app_id"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v1}, Lo/cH$onTransact;->IPostMessageService()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_version"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v1}, Lo/cH$onTransact;->connect()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 116
    invoke-virtual {v1}, Lo/cH$onTransact;->getServiceComponent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "app_version_major"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    :cond_7
    invoke-virtual {v1}, Lo/cH$onTransact;->MediaBrowserCompat()Ljava/lang/String;

    move-result-object v4

    const-string v5, "firebase_instance_id"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v1}, Lo/cH$onTransact;->INotificationSideChannel$Default()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 119
    invoke-virtual {v1}, Lo/cH$onTransact;->AudioAttributesCompatParcelizer()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "dev_cert_hash"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 120
    :cond_8
    invoke-virtual {v1}, Lo/cH$onTransact;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_store"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v1}, Lo/cH$onTransact;->onTransact()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 122
    invoke-virtual {v1}, Lo/cH$onTransact;->asBinder()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "upload_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    :cond_9
    invoke-virtual {v1}, Lo/cH$onTransact;->onRelationshipValidationResult()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 124
    invoke-virtual {v1}, Lo/cH$onTransact;->asInterface()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "start_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 125
    :cond_a
    invoke-virtual {v1}, Lo/cH$onTransact;->getInterfaceDescriptor()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 126
    invoke-virtual {v1}, Lo/cH$onTransact;->warmup()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "end_timestamp_millis"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 127
    :cond_b
    invoke-virtual {v1}, Lo/cH$onTransact;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 129
    invoke-virtual {v1}, Lo/cH$onTransact;->ICustomTabsService()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "previous_bundle_start_timestamp_millis"

    .line 130
    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    :cond_c
    invoke-virtual {v1}, Lo/cH$onTransact;->newSession()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 133
    invoke-virtual {v1}, Lo/cH$onTransact;->postMessage()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "previous_bundle_end_timestamp_millis"

    .line 134
    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 135
    :cond_d
    invoke-virtual {v1}, Lo/cH$onTransact;->setDefaultImpl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_instance_id"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v1}, Lo/cH$onTransact;->INotificationSideChannel$Stub()Ljava/lang/String;

    move-result-object v4

    const-string v5, "resettable_device_id"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v1}, Lo/cH$onTransact;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_id"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v1}, Lo/cH$onTransact;->sendCustomAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ds_id"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v1}, Lo/cH$onTransact;->INotificationSideChannel$Stub$Proxy()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 140
    invoke-virtual {v1}, Lo/cH$onTransact;->getDefaultImpl()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "limited_ad_tracking"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 141
    :cond_e
    invoke-virtual {v1}, Lo/cH$onTransact;->updateVisuals()Ljava/lang/String;

    move-result-object v4

    const-string v5, "os_version"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v1}, Lo/cH$onTransact;->mayLaunchUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_model"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v1}, Lo/cH$onTransact;->extraCommand()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_default_language"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v1}, Lo/cH$onTransact;->ICustomTabsService$Stub$Proxy()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 145
    invoke-virtual {v1}, Lo/cH$onTransact;->IPostMessageService$Stub()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "time_zone_offset_minutes"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 146
    :cond_f
    invoke-virtual {v1}, Lo/cH$onTransact;->write()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 147
    invoke-virtual {v1}, Lo/cH$onTransact;->read()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bundle_sequential_index"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_10
    invoke-virtual {v1}, Lo/cH$onTransact;->disconnect()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 149
    invoke-virtual {v1}, Lo/cH$onTransact;->AudioAttributesImplBaseParcelizer()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "service_upload"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 150
    :cond_11
    invoke-virtual {v1}, Lo/cH$onTransact;->IconCompatParcelizer()Ljava/lang/String;

    move-result-object v4

    const-string v5, "health_monitor"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v4

    sget-object v5, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$4:Lo/setStatusBarForegroundColor;

    invoke-virtual {v4, v5}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 152
    invoke-virtual {v1}, Lo/cH$onTransact;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v1}, Lo/cH$onTransact;->unsubscribe()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_12

    .line 153
    invoke-virtual {v1}, Lo/cH$onTransact;->unsubscribe()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 154
    :cond_12
    invoke-virtual {v1}, Lo/cH$onTransact;->search()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 155
    invoke-virtual {v1}, Lo/cH$onTransact;->getItem()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "retry_counter"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 156
    :cond_13
    invoke-virtual {v1}, Lo/cH$onTransact;->getNotifyChildrenChangedOptions()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 157
    invoke-virtual {v1}, Lo/cH$onTransact;->handleMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "consent_signals"

    invoke-static {v0, v3, v5, v4}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_14
    invoke-virtual {v1}, Lo/cH$onTransact;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v4

    const-string v5, "name"

    const/4 v6, 0x2

    if-eqz v4, :cond_19

    .line 161
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/cH$newSession;

    if-eqz v7, :cond_15

    .line 163
    invoke-static {v0, v6}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string v8, "user_property {\n"

    .line 164
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v7}, Lo/cH$newSession;->onMessageChannelReady()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_16

    invoke-virtual {v7}, Lo/cH$newSession;->onPostMessage()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :cond_16
    move-object v8, v9

    :goto_2
    const-string v10, "set_timestamp_millis"

    .line 167
    invoke-static {v0, v6, v10, v8}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v8

    invoke-virtual {v7}, Lo/cH$newSession;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 170
    invoke-static {v0, v6, v5, v8}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v7}, Lo/cH$newSession;->onNavigationEvent()Ljava/lang/String;

    move-result-object v8

    const-string v10, "string_value"

    invoke-static {v0, v6, v10, v8}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v7}, Lo/cH$newSession;->ICustomTabsCallback$Stub()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {v7}, Lo/cH$newSession;->onTransact()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_3

    :cond_17
    move-object v8, v9

    :goto_3
    const-string v10, "int_value"

    invoke-static {v0, v6, v10, v8}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v7}, Lo/cH$newSession;->onRelationshipValidationResult()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {v7}, Lo/cH$newSession;->asBinder()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :cond_18
    const-string v7, "double_value"

    .line 175
    invoke-static {v0, v6, v7, v9}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 176
    invoke-static {v0, v6}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 180
    :cond_19
    invoke-virtual {v1}, Lo/cH$onTransact;->AudioAttributesImplApi21Parcelizer()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_1e

    .line 184
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/cH$extraCallback;

    if-eqz v8, :cond_1a

    .line 186
    invoke-static {v0, v6}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string v9, "audience_membership {\n"

    .line 187
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v8}, Lo/cH$extraCallback;->onNavigationEvent()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 189
    invoke-virtual {v8}, Lo/cH$extraCallback;->extraCallback()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "audience_id"

    invoke-static {v0, v6, v10, v9}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 190
    :cond_1b
    invoke-virtual {v8}, Lo/cH$extraCallback;->onTransact()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 191
    invoke-virtual {v8}, Lo/cH$extraCallback;->onRelationshipValidationResult()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "new_audience"

    invoke-static {v0, v6, v10, v9}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    :cond_1c
    invoke-virtual {v8}, Lo/cH$extraCallback;->onMessageChannelReady()Lo/cH$asBinder;

    move-result-object v9

    const-string v10, "current_data"

    invoke-static {v0, v6, v10, v9, v7}, Lo/setErrorTextColor;->extraCallback(Ljava/lang/StringBuilder;ILjava/lang/String;Lo/cH$asBinder;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v8}, Lo/cH$extraCallback;->ICustomTabsCallback()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 194
    invoke-virtual {v8}, Lo/cH$extraCallback;->onPostMessage()Lo/cH$asBinder;

    move-result-object v8

    const-string v9, "previous_data"

    invoke-static {v0, v6, v9, v8, v7}, Lo/setErrorTextColor;->extraCallback(Ljava/lang/StringBuilder;ILjava/lang/String;Lo/cH$asBinder;Ljava/lang/String;)V

    .line 195
    :cond_1d
    invoke-static {v0, v6}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 198
    :cond_1e
    invoke-virtual {v1}, Lo/cH$onTransact;->onNavigationEvent()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/cH$ICustomTabsCallback;

    if-eqz v4, :cond_1f

    .line 203
    invoke-static {v0, v6}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    const-string v7, "event {\n"

    .line 204
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v7

    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->extraCallback()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v5, v7}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 207
    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->onMessageChannelReady()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "timestamp_millis"

    invoke-static {v0, v6, v8, v7}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 208
    :cond_20
    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->asInterface()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 209
    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->ICustomTabsCallback$Stub()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "previous_timestamp_millis"

    invoke-static {v0, v6, v8, v7}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 210
    :cond_21
    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->onRelationshipValidationResult()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 211
    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->asBinder()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "count"

    invoke-static {v0, v6, v8, v7}, Lo/setErrorTextColor;->onNavigationEvent(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 212
    :cond_22
    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->onPostMessage()I

    move-result v7

    if-eqz v7, :cond_23

    .line 213
    invoke-virtual {v4}, Lo/cH$ICustomTabsCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v6, v4}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 214
    :cond_23
    invoke-static {v0, v6}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 217
    :cond_24
    invoke-static {v0, v3}, Lo/setErrorTextColor;->onPostMessage(Ljava/lang/StringBuilder;I)V

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 220
    :cond_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final onPostMessage()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lo/setErrorTextColor;->extraCallback:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/zziq;->ICustomTabsCallback(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 521
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 523
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 524
    sget-object v3, Lo/zziq;->disconnect:Lo/setStatusBarForegroundColor;

    .line 525
    invoke-virtual {v3, v1}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 526
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 527
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 528
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "measurement.id."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 529
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 531
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_1

    .line 533
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 534
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v5, "Too many experiment IDs. Number of IDs"

    .line 535
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 539
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v5

    const-string v6, "Experiment ID NumberFormatException"

    invoke-virtual {v5, v6, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 541
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    return-object v2

    :cond_4
    :goto_2
    return-object v1
.end method

.method final onPostMessage(Lo/sendMessageAtTime;)Lo/cH$ICustomTabsCallback;
    .locals 5

    .line 62
    invoke-static {}, Lo/cH$ICustomTabsCallback;->onTransact()Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v0

    iget-wide v1, p1, Lo/sendMessageAtTime;->ICustomTabsCallback:J

    invoke-virtual {v0, v1, v2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback(J)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v0

    .line 63
    iget-object v1, p1, Lo/sendMessageAtTime;->extraCallback:Lo/zzfa$zza;

    invoke-virtual {v1}, Lo/zzfa$zza;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    invoke-static {}, Lo/cH$onNavigationEvent;->ICustomTabsService()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v3

    .line 65
    iget-object v4, p1, Lo/sendMessageAtTime;->extraCallback:Lo/zzfa$zza;

    invoke-virtual {v4, v2}, Lo/zzfa$zza;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 66
    invoke-virtual {p0, v3, v2}, Lo/setErrorTextColor;->onPostMessage(Lo/cH$onNavigationEvent$ICustomTabsCallback;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v0, v3}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(Lo/cH$onNavigationEvent$ICustomTabsCallback;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p1

    check-cast p1, Lo/fa;

    check-cast p1, Lo/cH$ICustomTabsCallback;

    return-object p1
.end method

.method final onPostMessage(Lo/cH$ICustomTabsCallback$onNavigationEvent;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 70
    invoke-virtual {p1}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/cH$onNavigationEvent;

    invoke-virtual {v2}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 77
    :goto_1
    invoke-static {}, Lo/cH$onNavigationEvent;->ICustomTabsService()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object p2

    .line 78
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 79
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback(J)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    goto :goto_2

    .line 80
    :cond_2
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 81
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    goto :goto_2

    .line 82
    :cond_3
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 83
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage(D)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    goto :goto_2

    .line 84
    :cond_4
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v2, Lo/zziq;->onLoadChildren:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p3, [Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 86
    check-cast p3, [Landroid/os/Bundle;

    invoke-static {p3}, Lo/setErrorTextColor;->extraCallback([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage(Ljava/lang/Iterable;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    :cond_5
    :goto_2
    if-ltz v1, :cond_6

    .line 88
    invoke-virtual {p1, v1, p2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady(ILo/cH$onNavigationEvent$ICustomTabsCallback;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    return-void

    .line 89
    :cond_6
    invoke-virtual {p1, p2}, Lo/cH$ICustomTabsCallback$onNavigationEvent;->extraCallback(Lo/cH$onNavigationEvent$ICustomTabsCallback;)Lo/cH$ICustomTabsCallback$onNavigationEvent;

    return-void
.end method

.method final onPostMessage(Lo/cH$onNavigationEvent$ICustomTabsCallback;Ljava/lang/Object;)V
    .locals 2

    .line 14
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onNavigationEvent()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->extraCallback()Lo/cH$onNavigationEvent$ICustomTabsCallback;

    .line 16
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    return-void

    .line 18
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 19
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback(J)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    return-void

    .line 20
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 21
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage(D)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    return-void

    .line 22
    :cond_2
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->onLoadChildren:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 24
    check-cast p2, [Landroid/os/Bundle;

    invoke-static {p2}, Lo/setErrorTextColor;->extraCallback([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/cH$onNavigationEvent$ICustomTabsCallback;->onPostMessage(Ljava/lang/Iterable;)Lo/cH$onNavigationEvent$ICustomTabsCallback;

    return-void

    .line 25
    :cond_3
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 587
    invoke-super {p0}, Lo/setHintTextColor;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 590
    invoke-super {p0}, Lo/setHintTextColor;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 591
    invoke-super {p0}, Lo/setHintTextColor;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 584
    invoke-super {p0}, Lo/setHintTextColor;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
