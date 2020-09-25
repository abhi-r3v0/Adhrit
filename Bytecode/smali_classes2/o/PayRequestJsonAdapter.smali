.class public Lo/PayRequestJsonAdapter;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PayRequestJsonAdapter$ICustomTabsCallback;,
        Lo/PayRequestJsonAdapter$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/PayRequestJsonAdapter$ICustomTabsCallback;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Lo/PayRequestJsonAdapter$onPostMessage;

.field private ICustomTabsService:Lo/JuspaySessionToken;

.field private asBinder:Z

.field private asInterface:[[Landroid/widget/CheckedTextView;

.field private final extraCallback:Landroid/view/LayoutInflater;

.field private getInterfaceDescriptor:I

.field private newSession:Z

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:Landroid/widget/CheckedTextView;

.field private final onPostMessage:Landroid/widget/CheckedTextView;

.field private onRelationshipValidationResult:Lo/OrderStatusViewJsonAdapter;

.field private final onTransact:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/Header$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private warmup:Lo/HeaderDataJsonAdapter$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lo/PayRequestJsonAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lo/PayRequestJsonAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 91
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    const/4 p3, 0x0

    .line 96
    invoke-virtual {p0, p3}, Lo/PayRequestJsonAdapter;->setSaveFromParentEnabled(Z)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, p2, [I

    const v2, 0x101030e

    aput v2, v1, p3

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lo/PayRequestJsonAdapter;->onMessageChannelReady:I

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lo/PayRequestJsonAdapter;->extraCallback:Landroid/view/LayoutInflater;

    .line 106
    new-instance p1, Lo/PayRequestJsonAdapter$ICustomTabsCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lo/PayRequestJsonAdapter$ICustomTabsCallback;-><init>(Lo/PayRequestJsonAdapter;Lo/PayRequestJsonAdapter$4;)V

    iput-object p1, p0, Lo/PayRequestJsonAdapter;->ICustomTabsCallback:Lo/PayRequestJsonAdapter$ICustomTabsCallback;

    .line 107
    new-instance p1, Lo/OfferRequest;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/OfferRequest;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lo/PayRequestJsonAdapter;->onRelationshipValidationResult:Lo/OrderStatusViewJsonAdapter;

    .line 108
    sget-object p1, Lo/JuspaySessionToken;->onPostMessage:Lo/JuspaySessionToken;

    iput-object p1, p0, Lo/PayRequestJsonAdapter;->ICustomTabsService:Lo/JuspaySessionToken;

    .line 111
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->extraCallback:Landroid/view/LayoutInflater;

    const v0, 0x109000f

    .line 113
    invoke-virtual {p1, v0, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    .line 114
    iget v1, p0, Lo/PayRequestJsonAdapter;->onMessageChannelReady:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    sget v1, Lo/OrderDetails$asInterface;->exo_track_selection_none:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 117
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 118
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lo/PayRequestJsonAdapter;->ICustomTabsCallback:Lo/PayRequestJsonAdapter$ICustomTabsCallback;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->extraCallback:Landroid/view/LayoutInflater;

    sget v1, Lo/OrderDetails$onMessageChannelReady;->exo_list_divider:I

    invoke-virtual {p1, v1, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->extraCallback:Landroid/view/LayoutInflater;

    .line 126
    invoke-virtual {p1, v0, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lo/PayRequestJsonAdapter;->onPostMessage:Landroid/widget/CheckedTextView;

    .line 127
    iget v0, p0, Lo/PayRequestJsonAdapter;->onMessageChannelReady:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onPostMessage:Landroid/widget/CheckedTextView;

    sget v0, Lo/OrderDetails$asInterface;->exo_track_selection_auto:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onPostMessage:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 130
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onPostMessage:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 131
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onPostMessage:Landroid/widget/CheckedTextView;

    iget-object p2, p0, Lo/PayRequestJsonAdapter;->ICustomTabsCallback:Lo/PayRequestJsonAdapter$ICustomTabsCallback;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onPostMessage:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/PayRequestJsonAdapter;Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lo/PayRequestJsonAdapter;->onMessageChannelReady(Landroid/view/View;)V

    return-void
.end method

.method private ICustomTabsCallback(I)Z
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "mappedTrackInfo"
        }
    .end annotation

    .line 372
    iget-boolean v0, p0, Lo/PayRequestJsonAdapter;->asBinder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PayRequestJsonAdapter;->ICustomTabsService:Lo/JuspaySessionToken;

    .line 373
    invoke-virtual {v0, p1}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v0

    iget v0, v0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lo/PayRequestJsonAdapter;->warmup:Lo/HeaderDataJsonAdapter$ICustomTabsCallback;

    iget v3, p0, Lo/PayRequestJsonAdapter;->getInterfaceDescriptor:I

    .line 374
    invoke-virtual {v0, v3, p1, v1}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage(IIZ)I

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private extraCallback()V
    .locals 7

    .line 292
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lo/PayRequestJsonAdapter;->newSession:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 293
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onPostMessage:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lo/PayRequestJsonAdapter;->newSession:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const/4 v0, 0x0

    .line 294
    :goto_1
    iget-object v1, p0, Lo/PayRequestJsonAdapter;->asInterface:[[Landroid/widget/CheckedTextView;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 295
    iget-object v1, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Header$onPostMessage;

    const/4 v4, 0x0

    .line 296
    :goto_2
    iget-object v5, p0, Lo/PayRequestJsonAdapter;->asInterface:[[Landroid/widget/CheckedTextView;

    aget-object v6, v5, v0

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 297
    aget-object v5, v5, v0

    aget-object v5, v5, v4

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lo/Header$onPostMessage;->extraCallback(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lo/PayRequestJsonAdapter;->newSession:Z

    .line 318
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private onMessageChannelReady(Landroid/view/View;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_0

    .line 304
    invoke-direct {p0}, Lo/PayRequestJsonAdapter;->onMessageChannelReady()V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onPostMessage:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_1

    .line 306
    invoke-direct {p0}, Lo/PayRequestJsonAdapter;->onTransact()V

    goto :goto_0

    .line 308
    :cond_1
    invoke-direct {p0, p1}, Lo/PayRequestJsonAdapter;->onNavigationEvent(Landroid/view/View;)V

    .line 310
    :goto_0
    invoke-direct {p0}, Lo/PayRequestJsonAdapter;->extraCallback()V

    .line 311
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PayRequestJsonAdapter$onPostMessage;

    if-eqz p1, :cond_2

    .line 312
    invoke-virtual {p0}, Lo/PayRequestJsonAdapter;->ICustomTabsCallback()Z

    move-result v0

    invoke-virtual {p0}, Lo/PayRequestJsonAdapter;->onNavigationEvent()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/PayRequestJsonAdapter$onPostMessage;->ICustomTabsCallback(ZLjava/util/List;)V

    :cond_2
    return-void
.end method

.method private static onMessageChannelReady([II)[I
    .locals 6

    .line 389
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    .line 391
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p0, v2

    if-eq v4, p1, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 393
    aput v4, v0, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private onNavigationEvent(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lo/PayRequestJsonAdapter;->newSession:Z

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 330
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 331
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 332
    iget-object v3, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Header$onPostMessage;

    .line 333
    iget-object v4, p0, Lo/PayRequestJsonAdapter;->warmup:Lo/HeaderDataJsonAdapter$ICustomTabsCallback;

    invoke-static {v4}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 336
    iget-boolean p1, p0, Lo/PayRequestJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 338
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 340
    :cond_0
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    new-instance v3, Lo/Header$onPostMessage;

    new-array v4, v4, [I

    aput v1, v4, v0

    invoke-direct {v3, v2, v4}, Lo/Header$onPostMessage;-><init>(I[I)V

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 343
    :cond_1
    iget v5, v3, Lo/Header$onPostMessage;->onNavigationEvent:I

    .line 344
    iget-object v3, v3, Lo/Header$onPostMessage;->onPostMessage:[I

    .line 345
    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    .line 346
    invoke-direct {p0, v2}, Lo/PayRequestJsonAdapter;->ICustomTabsCallback(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 347
    invoke-direct {p0}, Lo/PayRequestJsonAdapter;->onRelationshipValidationResult()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eqz v7, :cond_5

    if-ne v5, v4, :cond_4

    .line 352
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 354
    :cond_4
    invoke-static {v3, v1}, Lo/PayRequestJsonAdapter;->onMessageChannelReady([II)[I

    move-result-object p1

    .line 355
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    new-instance v1, Lo/Header$onPostMessage;

    invoke-direct {v1, v2, p1}, Lo/Header$onPostMessage;-><init>(I[I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_5
    if-nez p1, :cond_7

    if-eqz v6, :cond_6

    .line 360
    invoke-static {v3, v1}, Lo/PayRequestJsonAdapter;->onNavigationEvent([II)[I

    move-result-object p1

    .line 361
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    new-instance v1, Lo/Header$onPostMessage;

    invoke-direct {v1, v2, p1}, Lo/Header$onPostMessage;-><init>(I[I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 364
    :cond_6
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    new-instance v3, Lo/Header$onPostMessage;

    new-array v4, v4, [I

    aput v1, v4, v0

    invoke-direct {v3, v2, v4}, Lo/Header$onPostMessage;-><init>(I[I)V

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private static onNavigationEvent([II)[I
    .locals 1

    .line 383
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 384
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput p1, p0, v0

    return-object p0
.end method

.method private onPostMessage()V
    .locals 10

    .line 240
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 241
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->warmup:Lo/HeaderDataJsonAdapter$ICustomTabsCallback;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onPostMessage:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onPostMessage:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->warmup:Lo/HeaderDataJsonAdapter$ICustomTabsCallback;

    iget v3, p0, Lo/PayRequestJsonAdapter;->getInterfaceDescriptor:I

    invoke-virtual {v0, v3}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage(I)Lo/JuspaySessionToken;

    move-result-object v0

    iput-object v0, p0, Lo/PayRequestJsonAdapter;->ICustomTabsService:Lo/JuspaySessionToken;

    .line 256
    iget v0, v0, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    new-array v0, v0, [[Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lo/PayRequestJsonAdapter;->asInterface:[[Landroid/widget/CheckedTextView;

    .line 257
    invoke-direct {p0}, Lo/PayRequestJsonAdapter;->onRelationshipValidationResult()Z

    move-result v0

    const/4 v3, 0x0

    .line 258
    :goto_1
    iget-object v4, p0, Lo/PayRequestJsonAdapter;->ICustomTabsService:Lo/JuspaySessionToken;

    iget v4, v4, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    if-ge v3, v4, :cond_7

    .line 259
    iget-object v4, p0, Lo/PayRequestJsonAdapter;->ICustomTabsService:Lo/JuspaySessionToken;

    invoke-virtual {v4, v3}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v4

    .line 260
    invoke-direct {p0, v3}, Lo/PayRequestJsonAdapter;->ICustomTabsCallback(I)Z

    move-result v5

    .line 261
    iget-object v6, p0, Lo/PayRequestJsonAdapter;->asInterface:[[Landroid/widget/CheckedTextView;

    iget v7, v4, Lo/getJuspayUpi;->ICustomTabsCallback:I

    new-array v7, v7, [Landroid/widget/CheckedTextView;

    aput-object v7, v6, v3

    const/4 v6, 0x0

    .line 262
    :goto_2
    iget v7, v4, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v6, v7, :cond_6

    if-nez v6, :cond_2

    .line 264
    iget-object v7, p0, Lo/PayRequestJsonAdapter;->extraCallback:Landroid/view/LayoutInflater;

    sget v8, Lo/OrderDetails$onMessageChannelReady;->exo_list_divider:I

    invoke-virtual {v7, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    if-nez v5, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const v7, 0x109000f

    goto :goto_4

    :cond_4
    :goto_3
    const v7, 0x1090010

    .line 270
    :goto_4
    iget-object v8, p0, Lo/PayRequestJsonAdapter;->extraCallback:Landroid/view/LayoutInflater;

    .line 271
    invoke-virtual {v8, v7, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckedTextView;

    .line 272
    iget v8, p0, Lo/PayRequestJsonAdapter;->onMessageChannelReady:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 273
    iget-object v8, p0, Lo/PayRequestJsonAdapter;->onRelationshipValidationResult:Lo/OrderStatusViewJsonAdapter;

    invoke-virtual {v4, v6}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v9

    invoke-interface {v8, v9}, Lo/OrderStatusViewJsonAdapter;->extraCallback(Lo/p$a;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v8, p0, Lo/PayRequestJsonAdapter;->warmup:Lo/HeaderDataJsonAdapter$ICustomTabsCallback;

    iget v9, p0, Lo/PayRequestJsonAdapter;->getInterfaceDescriptor:I

    invoke-virtual {v8, v9, v3, v6}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent(III)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 276
    invoke-virtual {v7, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 278
    iget-object v8, p0, Lo/PayRequestJsonAdapter;->ICustomTabsCallback:Lo/PayRequestJsonAdapter$ICustomTabsCallback;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 280
    :cond_5
    invoke-virtual {v7, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 281
    invoke-virtual {v7, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 283
    :goto_5
    iget-object v8, p0, Lo/PayRequestJsonAdapter;->asInterface:[[Landroid/widget/CheckedTextView;

    aget-object v8, v8, v3

    aput-object v7, v8, v6

    .line 284
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 288
    :cond_7
    invoke-direct {p0}, Lo/PayRequestJsonAdapter;->extraCallback()V

    return-void
.end method

.method private onRelationshipValidationResult()Z
    .locals 2

    .line 379
    iget-boolean v0, p0, Lo/PayRequestJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PayRequestJsonAdapter;->ICustomTabsService:Lo/JuspaySessionToken;

    iget v0, v0, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onTransact()V
    .locals 1

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lo/PayRequestJsonAdapter;->newSession:Z

    .line 323
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lo/PayRequestJsonAdapter;->newSession:Z

    return v0
.end method

.method public onNavigationEvent()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Header$onPostMessage;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 230
    :goto_0
    iget-object v2, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 231
    iget-object v2, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setAllowAdaptiveSelections(Z)V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lo/PayRequestJsonAdapter;->asBinder:Z

    if-eq v0, p1, :cond_0

    .line 146
    iput-boolean p1, p0, Lo/PayRequestJsonAdapter;->asBinder:Z

    .line 147
    invoke-direct {p0}, Lo/PayRequestJsonAdapter;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public setAllowMultipleOverrides(Z)V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lo/PayRequestJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eq v0, p1, :cond_1

    .line 159
    iput-boolean p1, p0, Lo/PayRequestJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-nez p1, :cond_0

    .line 160
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 161
    iget-object p1, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    if-lez p1, :cond_0

    .line 162
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onTransact:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lo/PayRequestJsonAdapter;->onPostMessage()V

    :cond_1
    return-void
.end method

.method public setShowDisableOption(Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Lo/PayRequestJsonAdapter;->onNavigationEvent:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public setTrackNameProvider(Lo/OrderStatusViewJsonAdapter;)V
    .locals 0

    .line 185
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/OrderStatusViewJsonAdapter;

    iput-object p1, p0, Lo/PayRequestJsonAdapter;->onRelationshipValidationResult:Lo/OrderStatusViewJsonAdapter;

    .line 186
    invoke-direct {p0}, Lo/PayRequestJsonAdapter;->onPostMessage()V

    return-void
.end method
