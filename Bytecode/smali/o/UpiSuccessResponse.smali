.class final Lo/UpiSuccessResponse;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Z

.field public final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/UpiSuccessResponse;",
            ">;"
        }
    .end annotation
.end field

.field public final asBinder:Ljava/lang/String;

.field public final asInterface:Lo/VpaAccountsJsonAdapter;

.field public final extraCallback:Ljava/lang/String;

.field private final getInterfaceDescriptor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:J

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:J

.field private final onRelationshipValidationResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLo/VpaAccountsJsonAdapter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lo/UpiSuccessResponse;->extraCallback:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lo/UpiSuccessResponse;->onNavigationEvent:Ljava/lang/String;

    .line 133
    iput-object p10, p0, Lo/UpiSuccessResponse;->asBinder:Ljava/lang/String;

    .line 134
    iput-object p7, p0, Lo/UpiSuccessResponse;->asInterface:Lo/VpaAccountsJsonAdapter;

    .line 135
    iput-object p8, p0, Lo/UpiSuccessResponse;->onTransact:[Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 136
    :goto_0
    iput-boolean p1, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback:Z

    .line 137
    iput-wide p3, p0, Lo/UpiSuccessResponse;->onMessageChannelReady:J

    .line 138
    iput-wide p5, p0, Lo/UpiSuccessResponse;->onPostMessage:J

    .line 139
    invoke-static {p9}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 140
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/UpiSuccessResponse;->onRelationshipValidationResult:Ljava/util/HashMap;

    .line 141
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/UpiSuccessResponse;->getInterfaceDescriptor:Ljava/util/HashMap;

    return-void
.end method

.method private ICustomTabsCallback(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 355
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_2

    .line 357
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    .line 359
    :goto_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    sub-int/2addr v5, v4

    if-lez v5, :cond_1

    add-int v3, v2, v5

    .line 364
    invoke-virtual {p1, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    sub-int/2addr v0, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    .line 370
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    .line 371
    invoke-virtual {p1, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0xa

    if-ge v2, v4, :cond_5

    .line 375
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_4

    add-int/lit8 v5, v2, 0x2

    .line 376
    invoke-virtual {p1, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    if-lez v0, :cond_6

    .line 381
    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_6

    .line 382
    invoke-virtual {p1, v4, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_6
    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8

    .line 386
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_7

    .line 387
    invoke-virtual {p1, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    if-lez v0, :cond_9

    .line 392
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_9

    .line 393
    invoke-virtual {p1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    return-object p1
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;JJLo/VpaAccountsJsonAdapter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/UpiSuccessResponse;
    .locals 12

    .line 118
    new-instance v11, Lo/UpiSuccessResponse;

    const/4 v2, 0x0

    move-object v0, v11

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lo/UpiSuccessResponse;-><init>(Ljava/lang/String;Ljava/lang/String;JJLo/VpaAccountsJsonAdapter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method private ICustomTabsCallback(Ljava/util/Map;Landroid/text/SpannableStringBuilder;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/VpaAccountsJsonAdapter;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "II)V"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lo/UpiSuccessResponse;->asInterface:Lo/VpaAccountsJsonAdapter;

    iget-object v1, p0, Lo/UpiSuccessResponse;->onTransact:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lo/AuthenticationJsonAdapter;->onPostMessage(Lo/VpaAccountsJsonAdapter;[Ljava/lang/String;Ljava/util/Map;)Lo/VpaAccountsJsonAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    invoke-static {p2, p3, p4, p1}, Lo/AuthenticationJsonAdapter;->ICustomTabsCallback(Landroid/text/SpannableStringBuilder;IILo/VpaAccountsJsonAdapter;)V

    :cond_0
    return-void
.end method

.method private extraCallback(JLjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 264
    :goto_0
    invoke-virtual {p0, p1, p2}, Lo/UpiSuccessResponse;->onMessageChannelReady(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/UpiSuccessResponse;->extraCallback:Ljava/lang/String;

    const-string v1, "div"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/UpiSuccessResponse;->asBinder:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 265
    new-instance p1, Landroid/util/Pair;

    iget-object p2, p0, Lo/UpiSuccessResponse;->asBinder:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 268
    :goto_1
    invoke-virtual {p0}, Lo/UpiSuccessResponse;->onMessageChannelReady()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 269
    invoke-virtual {p0, v0}, Lo/UpiSuccessResponse;->onPostMessage(I)Lo/UpiSuccessResponse;

    move-result-object v1

    invoke-direct {v1, p1, p2, p3, p4}, Lo/UpiSuccessResponse;->extraCallback(JLjava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private extraCallback(Ljava/util/TreeSet;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lo/UpiSuccessResponse;->extraCallback:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 182
    iget-object v1, p0, Lo/UpiSuccessResponse;->extraCallback:Ljava/lang/String;

    const-string v2, "div"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lo/UpiSuccessResponse;->asBinder:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 184
    :cond_0
    iget-wide v1, p0, Lo/UpiSuccessResponse;->onMessageChannelReady:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 185
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    iget-wide v1, p0, Lo/UpiSuccessResponse;->onPostMessage:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 188
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_2
    iget-object v1, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 194
    :goto_0
    iget-object v3, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 195
    iget-object v3, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/UpiSuccessResponse;

    if-nez p2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-direct {v3, p1, v4}, Lo/UpiSuccessResponse;->extraCallback(Ljava/util/TreeSet;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private onNavigationEvent(JLjava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/VpaAccountsJsonAdapter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .line 324
    invoke-virtual {p0, p1, p2}, Lo/UpiSuccessResponse;->onMessageChannelReady(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lo/UpiSuccessResponse;->getInterfaceDescriptor:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 328
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 329
    iget-object v4, p0, Lo/UpiSuccessResponse;->onRelationshipValidationResult:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lo/UpiSuccessResponse;->onRelationshipValidationResult:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 330
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v2, v1, :cond_1

    .line 332
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableStringBuilder;

    .line 333
    invoke-direct {p0, p3, v3, v2, v1}, Lo/UpiSuccessResponse;->ICustomTabsCallback(Ljava/util/Map;Landroid/text/SpannableStringBuilder;II)V

    goto :goto_0

    .line 336
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lo/UpiSuccessResponse;->onMessageChannelReady()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 337
    invoke-virtual {p0, v2}, Lo/UpiSuccessResponse;->onPostMessage(I)Lo/UpiSuccessResponse;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3, p4}, Lo/UpiSuccessResponse;->onNavigationEvent(JLjava/util/Map;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static onPostMessage(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 314
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public static onPostMessage(Ljava/lang/String;)Lo/UpiSuccessResponse;
    .locals 12

    .line 99
    new-instance v11, Lo/UpiSuccessResponse;

    .line 101
    invoke-static {p0}, Lo/AuthenticationJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lo/UpiSuccessResponse;-><init>(Ljava/lang/String;Ljava/lang/String;JJLo/VpaAccountsJsonAdapter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method private onPostMessage(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lo/UpiSuccessResponse;->onRelationshipValidationResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 279
    iget-object v0, p0, Lo/UpiSuccessResponse;->getInterfaceDescriptor:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 280
    iget-object v0, p0, Lo/UpiSuccessResponse;->extraCallback:Ljava/lang/String;

    const-string v1, "metadata"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 287
    :goto_0
    iget-boolean v0, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback:Z

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 288
    invoke-static {p4, p5}, Lo/UpiSuccessResponse;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lo/UpiSuccessResponse;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void

    .line 289
    :cond_2
    iget-object v0, p0, Lo/UpiSuccessResponse;->extraCallback:Ljava/lang/String;

    const-string v1, "br"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 290
    invoke-static {p4, p5}, Lo/UpiSuccessResponse;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    .line 291
    :cond_3
    invoke-virtual {p0, p1, p2}, Lo/UpiSuccessResponse;->onMessageChannelReady(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 293
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 294
    iget-object v2, p0, Lo/UpiSuccessResponse;->onRelationshipValidationResult:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 297
    :cond_4
    iget-object v0, p0, Lo/UpiSuccessResponse;->extraCallback:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 298
    :goto_2
    invoke-virtual {p0}, Lo/UpiSuccessResponse;->onMessageChannelReady()I

    move-result v0

    if-ge v8, v0, :cond_7

    .line 299
    invoke-virtual {p0, v8}, Lo/UpiSuccessResponse;->onPostMessage(I)Lo/UpiSuccessResponse;

    move-result-object v0

    if-nez p3, :cond_6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_4
    move-wide v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/UpiSuccessResponse;->onPostMessage(JZLjava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    .line 303
    invoke-static {p4, p5}, Lo/UpiSuccessResponse;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p1}, Lo/AuthenticationJsonAdapter;->ICustomTabsCallback(Landroid/text/SpannableStringBuilder;)V

    .line 306
    :cond_8
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 307
    iget-object p3, p0, Lo/UpiSuccessResponse;->getInterfaceDescriptor:Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()[J
    .locals 6

    .line 170
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, v0, v1}, Lo/UpiSuccessResponse;->extraCallback(Ljava/util/TreeSet;Z)V

    .line 172
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 174
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    add-int/lit8 v5, v1, 0x1

    .line 175
    aput-wide v3, v2, v1

    move v1, v5

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final extraCallback(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/VpaAccountsJsonAdapter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/UpiLinkAccountResponseJsonAdapter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p4

    .line 209
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v0, v6, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v0, v10}, Lo/UpiSuccessResponse;->extraCallback(JLjava/lang/String;Ljava/util/List;)V

    .line 212
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 213
    iget-object v4, v6, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lo/UpiSuccessResponse;->onPostMessage(JZLjava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p3

    .line 214
    invoke-direct {v6, v7, v8, v0, v11}, Lo/UpiSuccessResponse;->onNavigationEvent(JLjava/util/Map;Ljava/util/Map;)V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 220
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v4, p5

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    .line 226
    invoke-static {v3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 227
    array-length v7, v3

    invoke-static {v3, v5, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 228
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/UpiLinkAccountResponseJsonAdapter;

    .line 230
    new-instance v3, Lo/SimResponseJsonAdapter;

    iget v14, v2, Lo/UpiLinkAccountResponseJsonAdapter;->extraCallback:F

    const/4 v15, 0x0

    iget v5, v2, Lo/UpiLinkAccountResponseJsonAdapter;->onPostMessage:F

    iget v7, v2, Lo/UpiLinkAccountResponseJsonAdapter;->onMessageChannelReady:I

    iget v8, v2, Lo/UpiLinkAccountResponseJsonAdapter;->asBinder:F

    iget v2, v2, Lo/UpiLinkAccountResponseJsonAdapter;->ICustomTabsCallback$Stub:F

    move-object v12, v3

    move/from16 v16, v5

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v2

    invoke-direct/range {v12 .. v19}, Lo/SimResponseJsonAdapter;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {v11}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/UpiLinkAccountResponseJsonAdapter;

    .line 244
    new-instance v4, Lo/SimResponseJsonAdapter;

    .line 246
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v2}, Lo/UpiSuccessResponse;->ICustomTabsCallback(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    iget v13, v3, Lo/UpiLinkAccountResponseJsonAdapter;->onPostMessage:F

    iget v14, v3, Lo/UpiLinkAccountResponseJsonAdapter;->onNavigationEvent:I

    iget v15, v3, Lo/UpiLinkAccountResponseJsonAdapter;->onMessageChannelReady:I

    iget v2, v3, Lo/UpiLinkAccountResponseJsonAdapter;->extraCallback:F

    const/high16 v17, -0x80000000

    iget v5, v3, Lo/UpiLinkAccountResponseJsonAdapter;->asBinder:F

    iget v7, v3, Lo/UpiLinkAccountResponseJsonAdapter;->asInterface:I

    iget v3, v3, Lo/UpiLinkAccountResponseJsonAdapter;->onTransact:F

    move-object v10, v4

    move/from16 v16, v2

    move/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v3

    invoke-direct/range {v10 .. v20}, Lo/SimResponseJsonAdapter;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFIF)V

    .line 244
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 166
    iget-object v0, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(J)Z
    .locals 5

    .line 145
    iget-wide v0, p0, Lo/UpiSuccessResponse;->onMessageChannelReady:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lo/UpiSuccessResponse;->onPostMessage:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    :cond_0
    iget-wide v0, p0, Lo/UpiSuccessResponse;->onMessageChannelReady:J

    cmp-long v4, v0, p1

    if-gtz v4, :cond_1

    iget-wide v0, p0, Lo/UpiSuccessResponse;->onPostMessage:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    :cond_1
    iget-wide v0, p0, Lo/UpiSuccessResponse;->onMessageChannelReady:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-wide v0, p0, Lo/UpiSuccessResponse;->onPostMessage:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    :cond_2
    iget-wide v0, p0, Lo/UpiSuccessResponse;->onMessageChannelReady:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_4

    iget-wide v0, p0, Lo/UpiSuccessResponse;->onPostMessage:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(I)Lo/UpiSuccessResponse;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UpiSuccessResponse;

    return-object p1

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final onPostMessage(Lo/UpiSuccessResponse;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    .line 155
    :cond_0
    iget-object v0, p0, Lo/UpiSuccessResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
