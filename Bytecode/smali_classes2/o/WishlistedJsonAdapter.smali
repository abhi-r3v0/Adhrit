.class public final Lo/WishlistedJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private final asInterface:I

.field private extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/StoreSlab;

.field private onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:I

.field private final onRelationshipValidationResult:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/WishlistedJsonAdapter;->onPostMessage:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/WishlistedJsonAdapter;->ICustomTabsCallback:Z

    const/16 p1, 0x40

    if-gt p2, p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lo/WishlistedJsonAdapter;->onRelationshipValidationResult:I

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, p0, Lo/WishlistedJsonAdapter;->onRelationshipValidationResult:I

    :goto_1
    if-gtz p3, :cond_2

    const/4 p1, 0x1

    iput p1, p0, Lo/WishlistedJsonAdapter;->asInterface:I

    goto :goto_2

    :cond_2
    iput p3, p0, Lo/WishlistedJsonAdapter;->asInterface:I

    :goto_2
    new-instance p1, Lo/TimerData;

    iget p2, p0, Lo/WishlistedJsonAdapter;->onRelationshipValidationResult:I

    invoke-direct {p1, p2}, Lo/TimerData;-><init>(I)V

    iput-object p1, p0, Lo/WishlistedJsonAdapter;->onMessageChannelReady:Lo/StoreSlab;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lo/ReferralBottomSheetResponseJsonAdapter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    new-instance v2, Lo/Wishlisted;

    invoke-direct {v2, v1}, Lo/Wishlisted;-><init>(Lo/WishlistedJsonAdapter;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v6, ""

    if-ge v4, v5, :cond_f

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/ReferralBottomSheetResponseJsonAdapter;

    invoke-virtual {v5}, Lo/ReferralBottomSheetResponseJsonAdapter;->onMessageChannelReady()I

    move-result v5

    move-object/from16 v7, p1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    sget-object v8, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v5, v8}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    :goto_1
    array-length v10, v5

    if-ge v8, v10, :cond_e

    aget-object v10, v5, v8

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    :goto_2
    add-int/lit8 v14, v12, 0x2

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-gt v14, v15, :cond_4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v3, 0x27

    if-ne v15, v3, :cond_3

    add-int/lit8 v3, v12, -0x1

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v13, 0x20

    if-eq v3, v13, :cond_2

    add-int/lit8 v3, v12, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v9, 0x73

    if-eq v15, v9, :cond_0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v9, 0x53

    if-ne v3, v9, :cond_2

    :cond_0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v14, v3, :cond_1

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v13, :cond_2

    :cond_1
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v12, v14

    goto :goto_3

    :cond_2
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_3
    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x1

    :goto_4
    add-int/2addr v12, v3

    goto :goto_2

    :cond_4
    if-eqz v13, :cond_5

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_6

    iput-object v3, v1, Lo/WishlistedJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    move-object v10, v3

    :cond_6
    const/4 v3, 0x1

    invoke-static {v10, v3}, Lo/StoreSlabsResponse;->ICustomTabsCallback(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    iget v11, v1, Lo/WishlistedJsonAdapter;->asInterface:I

    if-lt v10, v11, :cond_d

    const/4 v10, 0x0

    :goto_6
    array-length v11, v9

    if-ge v10, v11, :cond_c

    move-object v12, v6

    const/4 v11, 0x0

    :goto_7
    iget v13, v1, Lo/WishlistedJsonAdapter;->asInterface:I

    if-ge v11, v13, :cond_a

    add-int v13, v10, v11

    array-length v14, v9

    if-lt v13, v14, :cond_7

    const/4 v11, 0x0

    goto :goto_9

    :cond_7
    if-lez v11, :cond_8

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_8
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_9
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_a
    const/4 v11, 0x1

    :goto_9
    if-eqz v11, :cond_c

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v11

    iget v12, v1, Lo/WishlistedJsonAdapter;->onPostMessage:I

    if-lt v11, v12, :cond_b

    goto :goto_a

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v9

    iget v10, v1, Lo/WishlistedJsonAdapter;->onPostMessage:I

    if-lt v9, v10, :cond_d

    :goto_a
    const/4 v9, 0x0

    goto :goto_b

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v3, 0x1

    const/4 v9, 0x1

    :goto_b
    if-eqz v9, :cond_f

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_f
    new-instance v3, Lo/StoreSlabsResponseJsonAdapter;

    invoke-direct {v3}, Lo/StoreSlabsResponseJsonAdapter;-><init>()V

    iput-object v6, v1, Lo/WishlistedJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v4, v1, Lo/WishlistedJsonAdapter;->onMessageChannelReady:Lo/StoreSlab;

    invoke-virtual {v4, v2}, Lo/StoreSlab;->onMessageChannelReady(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lo/StoreSlabsResponseJsonAdapter;->ICustomTabsCallback([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    const-string v2, "Error while writing hash to byteStream"

    invoke-static {v2, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    invoke-virtual {v3}, Lo/StoreSlabsResponseJsonAdapter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
