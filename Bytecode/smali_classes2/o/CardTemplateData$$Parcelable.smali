.class public final Lo/CardTemplateData$$Parcelable;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:[I

.field private final extraCallback:[Ljava/lang/String;

.field private onMessageChannelReady:I

.field private final onNavigationEvent:[D

.field private final onPostMessage:[D


# direct methods
.method private constructor <init>(Lo/CardValidationResponse$$Parcelable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/CardValidationResponse$$Parcelable;->ICustomTabsCallback(Lo/CardValidationResponse$$Parcelable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1}, Lo/CardValidationResponse$$Parcelable;->onNavigationEvent(Lo/CardValidationResponse$$Parcelable;)Ljava/util/List;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lo/CardTemplateData$$Parcelable;->extraCallback:[Ljava/lang/String;

    invoke-static {p1}, Lo/CardValidationResponse$$Parcelable;->ICustomTabsCallback(Lo/CardValidationResponse$$Parcelable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lo/CardTemplateData$$Parcelable;->onMessageChannelReady(Ljava/util/List;)[D

    move-result-object v1

    iput-object v1, p0, Lo/CardTemplateData$$Parcelable;->onPostMessage:[D

    invoke-static {p1}, Lo/CardValidationResponse$$Parcelable;->onPostMessage(Lo/CardValidationResponse$$Parcelable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lo/CardTemplateData$$Parcelable;->onMessageChannelReady(Ljava/util/List;)[D

    move-result-object p1

    iput-object p1, p0, Lo/CardTemplateData$$Parcelable;->onNavigationEvent:[D

    new-array p1, v0, [I

    iput-object p1, p0, Lo/CardTemplateData$$Parcelable;->ICustomTabsCallback:[I

    const/4 p1, 0x0

    iput p1, p0, Lo/CardTemplateData$$Parcelable;->onMessageChannelReady:I

    return-void
.end method

.method synthetic constructor <init>(Lo/CardValidationResponse$$Parcelable;Lo/CardTemplateDataJsonAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/CardTemplateData$$Parcelable;-><init>(Lo/CardValidationResponse$$Parcelable;)V

    return-void
.end method

.method private static onMessageChannelReady(Ljava/util/List;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final onMessageChannelReady()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getInvalidPaymentAmount;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/CardTemplateData$$Parcelable;->extraCallback:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo/CardTemplateData$$Parcelable;->extraCallback:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lo/getInvalidPaymentAmount;

    aget-object v5, v2, v1

    iget-object v2, p0, Lo/CardTemplateData$$Parcelable;->onNavigationEvent:[D

    aget-wide v6, v2, v1

    iget-object v2, p0, Lo/CardTemplateData$$Parcelable;->onPostMessage:[D

    aget-wide v8, v2, v1

    iget-object v2, p0, Lo/CardTemplateData$$Parcelable;->ICustomTabsCallback:[I

    aget v4, v2, v1

    int-to-double v10, v4

    iget v4, p0, Lo/CardTemplateData$$Parcelable;->onMessageChannelReady:I

    int-to-double v12, v4

    div-double/2addr v10, v12

    aget v12, v2, v1

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lo/getInvalidPaymentAmount;-><init>(Ljava/lang/String;DDDI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final onNavigationEvent(D)V
    .locals 4

    iget v0, p0, Lo/CardTemplateData$$Parcelable;->onMessageChannelReady:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/CardTemplateData$$Parcelable;->onMessageChannelReady:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/CardTemplateData$$Parcelable;->onNavigationEvent:[D

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-wide v2, v1, v0

    cmpg-double v1, v2, p1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lo/CardTemplateData$$Parcelable;->onPostMessage:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lo/CardTemplateData$$Parcelable;->ICustomTabsCallback:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    iget-object v1, p0, Lo/CardTemplateData$$Parcelable;->onNavigationEvent:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
