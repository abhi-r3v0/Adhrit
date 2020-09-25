.class public Lo/OfferRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/OrderStatusViewJsonAdapter;


# instance fields
.field private final onPostMessage:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    return-void
.end method

.method private ICustomTabsCallback(Lo/p$a;)Ljava/lang/String;
    .locals 1

    .line 73
    iget p1, p1, Lo/p$a;->ICustomTabsService$Stub:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 88
    iget-object p1, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v0, Lo/OrderDetails$asInterface;->exo_track_surround:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 86
    :cond_1
    iget-object p1, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v0, Lo/OrderDetails$asInterface;->exo_track_surround_7_point_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 84
    :cond_2
    iget-object p1, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v0, Lo/OrderDetails$asInterface;->exo_track_surround_5_point_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :cond_3
    iget-object p1, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v0, Lo/OrderDetails$asInterface;->exo_track_stereo:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :cond_4
    iget-object p1, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v0, Lo/OrderDetails$asInterface;->exo_track_mono:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private ICustomTabsCallback$Stub(Lo/p$a;)Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p1, Lo/p$a;->onPostMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object p1, p1, Lo/p$a;->onPostMessage:Ljava/lang/String;

    return-object p1
.end method

.method private asBinder(Lo/p$a;)Ljava/lang/String;
    .locals 2

    .line 103
    iget-object p1, p1, Lo/p$a;->cancel:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "und"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 108
    :goto_0
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method private onMessageChannelReady(Lo/p$a;)Ljava/lang/String;
    .locals 5

    .line 58
    iget v0, p1, Lo/p$a;->getInterfaceDescriptor:I

    .line 59
    iget p1, p1, Lo/p$a;->newSession:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v2, Lo/OrderDetails$asInterface;->exo_track_resolution:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private varargs onMessageChannelReady([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 132
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    goto :goto_1

    .line 136
    :cond_0
    iget-object v5, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v6, Lo/OrderDetails$asInterface;->exo_item_list:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    const/4 v2, 0x1

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private onNavigationEvent(Lo/p$a;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lo/OfferRequest;->asBinder(Lo/p$a;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1}, Lo/OfferRequest;->onRelationshipValidationResult(Lo/p$a;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lo/OfferRequest;->onMessageChannelReady([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lo/OfferRequest;->ICustomTabsCallback$Stub(Lo/p$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private onPostMessage(Lo/p$a;)Ljava/lang/String;
    .locals 5

    .line 66
    iget p1, p1, Lo/p$a;->extraCallback:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 67
    :cond_0
    iget-object v0, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v1, Lo/OrderDetails$asInterface;->exo_track_bitrate:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float p1, p1

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr p1, v4

    .line 69
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onRelationshipValidationResult(Lo/p$a;)Ljava/lang/String;
    .locals 6

    .line 113
    iget v0, p1, Lo/p$a;->ICustomTabsCallback:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v2, Lo/OrderDetails$asInterface;->exo_track_role_alternate:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 116
    :goto_0
    iget v2, p1, Lo/p$a;->ICustomTabsCallback:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, v4

    .line 117
    iget-object v0, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v5, Lo/OrderDetails$asInterface;->exo_track_role_supplementary:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v2}, Lo/OfferRequest;->onMessageChannelReady([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_1
    iget v2, p1, Lo/p$a;->ICustomTabsCallback:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, v4

    .line 120
    iget-object v0, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v5, Lo/OrderDetails$asInterface;->exo_track_role_commentary:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v2}, Lo/OfferRequest;->onMessageChannelReady([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_2
    iget p1, p1, Lo/p$a;->ICustomTabsCallback:I

    and-int/lit16 p1, p1, 0x440

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/String;

    aput-object v0, p1, v4

    .line 123
    iget-object v0, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v1, Lo/OrderDetails$asInterface;->exo_track_role_closed_captions:I

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-direct {p0, p1}, Lo/OfferRequest;->onMessageChannelReady([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static onTransact(Lo/p$a;)I
    .locals 4

    .line 144
    iget-object v0, p0, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-static {v0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onRelationshipValidationResult(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lo/p$a;->asBinder:Ljava/lang/String;

    invoke-static {v0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    return v2

    .line 151
    :cond_1
    iget-object v0, p0, Lo/p$a;->asBinder:Ljava/lang/String;

    invoke-static {v0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    .line 154
    :cond_2
    iget v0, p0, Lo/p$a;->getInterfaceDescriptor:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lo/p$a;->newSession:I

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 157
    :cond_3
    iget v0, p0, Lo/p$a;->ICustomTabsService$Stub:I

    if-ne v0, v1, :cond_5

    iget p0, p0, Lo/p$a;->validateRelationship:I

    if-eq p0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v3

    :cond_6
    :goto_1
    return v2
.end method


# virtual methods
.method public extraCallback(Lo/p$a;)Ljava/lang/String;
    .locals 5

    .line 40
    invoke-static {p1}, Lo/OfferRequest;->onTransact(Lo/p$a;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lo/OfferRequest;->onRelationshipValidationResult(Lo/p$a;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1}, Lo/OfferRequest;->onMessageChannelReady(Lo/p$a;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-direct {p0, p1}, Lo/OfferRequest;->onPostMessage(Lo/p$a;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    .line 43
    invoke-direct {p0, v0}, Lo/OfferRequest;->onMessageChannelReady([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lo/OfferRequest;->onNavigationEvent(Lo/p$a;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 49
    invoke-direct {p0, p1}, Lo/OfferRequest;->ICustomTabsCallback(Lo/p$a;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 50
    invoke-direct {p0, p1}, Lo/OfferRequest;->onPostMessage(Lo/p$a;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    .line 47
    invoke-direct {p0, v0}, Lo/OfferRequest;->onMessageChannelReady([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 52
    :cond_1
    invoke-direct {p0, p1}, Lo/OfferRequest;->onNavigationEvent(Lo/p$a;)Ljava/lang/String;

    move-result-object p1

    .line 54
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lo/OfferRequest;->onPostMessage:Landroid/content/res/Resources;

    sget v0, Lo/OrderDetails$asInterface;->exo_track_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method
