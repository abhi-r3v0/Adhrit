.class public final Lo/getPosition;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPosition$onMessageChannelReady;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:I

.field private final asBinder:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private asInterface:I

.field extraCallback:Lo/getPosition$onMessageChannelReady;

.field private getInterfaceDescriptor:Z

.field onMessageChannelReady:Lo/getCustomActions$onNavigationEvent;

.field public onNavigationEvent:Z

.field public onPostMessage:I

.field private onRelationshipValidationResult:I

.field private final onTransact:Lo/getCustomActions;


# direct methods
.method constructor <init>(Lo/getCustomActions;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 78
    iput-object p1, p0, Lo/getPosition;->onTransact:Lo/getCustomActions;

    .line 79
    iget-object p1, p1, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lo/getPosition;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lo/getPosition;->asBinder:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 82
    new-instance p1, Lo/getPosition$onMessageChannelReady;

    invoke-direct {p1}, Lo/getPosition$onMessageChannelReady;-><init>()V

    iput-object p1, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    .line 83
    invoke-direct {p0}, Lo/getPosition;->onPostMessage()V

    return-void
.end method

.method private onNavigationEvent(I)V
    .locals 2

    .line 416
    iget v0, p0, Lo/getPosition;->asInterface:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/getPosition;->onPostMessage:I

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    iget v0, p0, Lo/getPosition;->onPostMessage:I

    if-ne v0, p1, :cond_1

    return-void

    .line 424
    :cond_1
    iput p1, p0, Lo/getPosition;->onPostMessage:I

    .line 425
    iget-object v0, p0, Lo/getPosition;->onMessageChannelReady:Lo/getCustomActions$onNavigationEvent;

    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {v0, p1}, Lo/getCustomActions$onNavigationEvent;->onPostMessage(I)V

    :cond_2
    return-void
.end method

.method private onPostMessage()V
    .locals 4

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lo/getPosition;->asInterface:I

    .line 88
    iput v0, p0, Lo/getPosition;->onPostMessage:I

    .line 89
    iget-object v1, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    const/4 v2, -0x1

    .line 1456
    iput v2, v1, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    const/4 v3, 0x0

    .line 1457
    iput v3, v1, Lo/getPosition$onMessageChannelReady;->onNavigationEvent:F

    .line 1458
    iput v0, v1, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    .line 90
    iput v2, p0, Lo/getPosition;->onRelationshipValidationResult:I

    .line 91
    iput v2, p0, Lo/getPosition;->ICustomTabsService:I

    .line 92
    iput-boolean v0, p0, Lo/getPosition;->getInterfaceDescriptor:Z

    .line 93
    iput-boolean v0, p0, Lo/getPosition;->ICustomTabsCallback$Stub$Proxy:Z

    .line 94
    iput-boolean v0, p0, Lo/getPosition;->onNavigationEvent:Z

    .line 95
    iput-boolean v0, p0, Lo/getPosition;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 10

    .line 224
    iget-object v0, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    .line 226
    iget-object v1, p0, Lo/getPosition;->asBinder:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, v0, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    .line 227
    iget v1, v0, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 8456
    iput v3, v0, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    .line 8457
    iput v2, v0, Lo/getPosition$onMessageChannelReady;->onNavigationEvent:F

    .line 8458
    iput v4, v0, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lo/getPosition;->asBinder:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v5, v0, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9456
    iput v3, v0, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    .line 9457
    iput v2, v0, Lo/getPosition$onMessageChannelReady;->onNavigationEvent:F

    .line 9458
    iput v4, v0, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    return-void

    .line 237
    :cond_1
    iget-object v3, p0, Lo/getPosition;->asBinder:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v3

    .line 238
    iget-object v5, p0, Lo/getPosition;->asBinder:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v5

    .line 239
    iget-object v6, p0, Lo/getPosition;->asBinder:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v6

    .line 240
    iget-object v7, p0, Lo/getPosition;->asBinder:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v7

    .line 242
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 243
    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_2

    .line 244
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 245
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v9

    .line 246
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v9

    .line 247
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v9

    .line 248
    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    .line 251
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v8, v7

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v7, v5

    .line 254
    iget-object v5, p0, Lo/getPosition;->asBinder:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v5

    const/4 v9, 0x1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_6

    .line 258
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v3

    iget-object v3, p0, Lo/getPosition;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    .line 259
    iget-object v3, p0, Lo/getPosition;->onTransact:Lo/getCustomActions;

    .line 9577
    iget-object v3, v3, Lo/getCustomActions;->onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    if-ne v3, v9, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    neg-int v1, v1

    :cond_5
    move v8, v7

    goto :goto_2

    .line 264
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v6

    iget-object v3, p0, Lo/getPosition;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    :goto_2
    neg-int v1, v1

    .line 267
    iput v1, v0, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    .line 268
    iget v1, v0, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    if-gez v1, :cond_8

    .line 271
    new-instance v1, Lo/getCurrentPosition;

    iget-object v2, p0, Lo/getPosition;->asBinder:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v2}, Lo/getCurrentPosition;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1}, Lo/getCurrentPosition;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v9, [Ljava/lang/Object;

    iget v0, v0, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "Page can only be offset by a positive amount, not by %d"

    .line 280
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    if-nez v8, :cond_9

    goto :goto_3

    .line 283
    :cond_9
    iget v1, v0, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    int-to-float v1, v1

    int-to-float v2, v8

    div-float v2, v1, v2

    :goto_3
    iput v2, v0, Lo/getPosition$onMessageChannelReady;->onNavigationEvent:F

    return-void
.end method

.method final ICustomTabsCallback(IZ)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 310
    :goto_0
    iput p2, p0, Lo/getPosition;->asInterface:I

    const/4 p2, 0x0

    .line 315
    iput-boolean p2, p0, Lo/getPosition;->onNavigationEvent:Z

    .line 316
    iget v1, p0, Lo/getPosition;->ICustomTabsService:I

    if-eq v1, p1, :cond_1

    const/4 p2, 0x1

    .line 317
    :cond_1
    iput p1, p0, Lo/getPosition;->ICustomTabsService:I

    .line 318
    invoke-direct {p0, v0}, Lo/getPosition;->onNavigationEvent(I)V

    if-eqz p2, :cond_2

    .line 10431
    iget-object p2, p0, Lo/getPosition;->onMessageChannelReady:Lo/getCustomActions$onNavigationEvent;

    if-eqz p2, :cond_2

    .line 10432
    invoke-virtual {p2, p1}, Lo/getCustomActions$onNavigationEvent;->onMessageChannelReady(I)V

    :cond_2
    return-void
.end method

.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    .line 105
    iget p1, p0, Lo/getPosition;->asInterface:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget p1, p0, Lo/getPosition;->onPostMessage:I

    if-eq p1, v2, :cond_3

    :cond_0
    if-ne p2, v2, :cond_3

    .line 2287
    iput-boolean v1, p0, Lo/getPosition;->onNavigationEvent:Z

    .line 2288
    iput v2, p0, Lo/getPosition;->asInterface:I

    .line 2289
    iget p1, p0, Lo/getPosition;->ICustomTabsService:I

    if-eq p1, v0, :cond_1

    .line 2292
    iput p1, p0, Lo/getPosition;->onRelationshipValidationResult:I

    .line 2294
    iput v0, p0, Lo/getPosition;->ICustomTabsService:I

    goto :goto_0

    .line 2295
    :cond_1
    iget p1, p0, Lo/getPosition;->onRelationshipValidationResult:I

    if-ne p1, v0, :cond_2

    .line 2443
    iget-object p1, p0, Lo/getPosition;->asBinder:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 2297
    iput p1, p0, Lo/getPosition;->onRelationshipValidationResult:I

    .line 2299
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lo/getPosition;->onNavigationEvent(I)V

    return-void

    .line 3392
    :cond_3
    iget p1, p0, Lo/getPosition;->asInterface:I

    const/4 v3, 0x4

    if-eq p1, v2, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x1

    :goto_2
    const/4 v4, 0x2

    if-eqz p1, :cond_7

    if-ne p2, v4, :cond_7

    .line 116
    iget-boolean p1, p0, Lo/getPosition;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz p1, :cond_6

    .line 117
    invoke-direct {p0, v4}, Lo/getPosition;->onNavigationEvent(I)V

    .line 119
    iput-boolean v2, p0, Lo/getPosition;->getInterfaceDescriptor:Z

    :cond_6
    return-void

    .line 4392
    :cond_7
    iget p1, p0, Lo/getPosition;->asInterface:I

    if-eq p1, v2, :cond_9

    if-ne p1, v3, :cond_8

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_d

    if-nez p2, :cond_d

    .line 127
    invoke-virtual {p0}, Lo/getPosition;->ICustomTabsCallback()V

    .line 128
    iget-boolean p1, p0, Lo/getPosition;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez p1, :cond_a

    .line 133
    iget-object p1, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p1, p1, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    if-eq p1, v0, :cond_c

    .line 134
    iget-object p1, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p1, p1, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    .line 4437
    iget-object v3, p0, Lo/getPosition;->onMessageChannelReady:Lo/getCustomActions$onNavigationEvent;

    if-eqz v3, :cond_c

    const/4 v5, 0x0

    .line 4438
    invoke-virtual {v3, p1, v5, v1}, Lo/getCustomActions$onNavigationEvent;->onPostMessage(IFI)V

    goto :goto_5

    .line 137
    :cond_a
    iget-object p1, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p1, p1, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    if-nez p1, :cond_b

    .line 145
    iget p1, p0, Lo/getPosition;->onRelationshipValidationResult:I

    iget-object v3, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget v3, v3, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    if-eq p1, v3, :cond_c

    .line 146
    iget-object p1, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p1, p1, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    .line 5431
    iget-object v3, p0, Lo/getPosition;->onMessageChannelReady:Lo/getCustomActions$onNavigationEvent;

    if-eqz v3, :cond_c

    .line 5432
    invoke-virtual {v3, p1}, Lo/getCustomActions$onNavigationEvent;->onMessageChannelReady(I)V

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_5
    if-eqz v2, :cond_d

    .line 152
    invoke-direct {p0, v1}, Lo/getPosition;->onNavigationEvent(I)V

    .line 153
    invoke-direct {p0}, Lo/getPosition;->onPostMessage()V

    .line 157
    :cond_d
    iget p1, p0, Lo/getPosition;->asInterface:I

    if-ne p1, v4, :cond_10

    if-nez p2, :cond_10

    iget-boolean p1, p0, Lo/getPosition;->ICustomTabsCallback:Z

    if-eqz p1, :cond_10

    .line 159
    invoke-virtual {p0}, Lo/getPosition;->ICustomTabsCallback()V

    .line 160
    iget-object p1, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p1, p1, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    if-nez p1, :cond_10

    .line 161
    iget p1, p0, Lo/getPosition;->ICustomTabsService:I

    iget-object p2, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p2, p2, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    if-eq p1, p2, :cond_f

    .line 162
    iget-object p1, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p1, p1, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    if-ne p1, v0, :cond_e

    const/4 p1, 0x0

    goto :goto_6

    :cond_e
    iget-object p1, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p1, p1, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    .line 6431
    :goto_6
    iget-object p2, p0, Lo/getPosition;->onMessageChannelReady:Lo/getCustomActions$onNavigationEvent;

    if-eqz p2, :cond_f

    .line 6432
    invoke-virtual {p2, p1}, Lo/getCustomActions$onNavigationEvent;->onMessageChannelReady(I)V

    .line 165
    :cond_f
    invoke-direct {p0, v1}, Lo/getPosition;->onNavigationEvent(I)V

    .line 166
    invoke-direct {p0}, Lo/getPosition;->onPostMessage()V

    :cond_10
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lo/getPosition;->ICustomTabsCallback$Stub$Proxy:Z

    .line 178
    invoke-virtual {p0}, Lo/getPosition;->ICustomTabsCallback()V

    .line 180
    iget-boolean v0, p0, Lo/getPosition;->getInterfaceDescriptor:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 182
    iput-boolean v2, p0, Lo/getPosition;->getInterfaceDescriptor:Z

    if-gtz p3, :cond_3

    if-nez p3, :cond_2

    if-gez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 183
    :goto_0
    iget-object p3, p0, Lo/getPosition;->onTransact:Lo/getCustomActions;

    .line 6577
    iget-object p3, p3, Lo/getCustomActions;->onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p3

    if-ne p3, p1, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-ne p2, p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-eqz p2, :cond_4

    .line 187
    iget-object p2, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p2, p2, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    if-eqz p2, :cond_4

    iget-object p2, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p2, p2, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    add-int/2addr p2, p1

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p2, p2, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    :goto_4
    iput p2, p0, Lo/getPosition;->ICustomTabsService:I

    .line 189
    iget p3, p0, Lo/getPosition;->onRelationshipValidationResult:I

    if-eq p3, p2, :cond_7

    .line 7431
    iget-object p3, p0, Lo/getPosition;->onMessageChannelReady:Lo/getCustomActions$onNavigationEvent;

    if-eqz p3, :cond_7

    .line 7432
    invoke-virtual {p3, p2}, Lo/getCustomActions$onNavigationEvent;->onMessageChannelReady(I)V

    goto :goto_5

    .line 192
    :cond_5
    iget p2, p0, Lo/getPosition;->asInterface:I

    if-nez p2, :cond_7

    .line 195
    iget-object p2, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p2, p2, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    if-ne p2, v1, :cond_6

    const/4 p2, 0x0

    .line 8431
    :cond_6
    iget-object p3, p0, Lo/getPosition;->onMessageChannelReady:Lo/getCustomActions$onNavigationEvent;

    if-eqz p3, :cond_7

    .line 8432
    invoke-virtual {p3, p2}, Lo/getCustomActions$onNavigationEvent;->onMessageChannelReady(I)V

    .line 201
    :cond_7
    :goto_5
    iget-object p2, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p2, p2, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    if-ne p2, v1, :cond_8

    const/4 p2, 0x0

    goto :goto_6

    :cond_8
    iget-object p2, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p2, p2, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    :goto_6
    iget-object p3, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p3, p3, Lo/getPosition$onMessageChannelReady;->onNavigationEvent:F

    iget-object v0, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget v0, v0, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    .line 8437
    iget-object v3, p0, Lo/getPosition;->onMessageChannelReady:Lo/getCustomActions$onNavigationEvent;

    if-eqz v3, :cond_9

    .line 8438
    invoke-virtual {v3, p2, p3, v0}, Lo/getCustomActions$onNavigationEvent;->onPostMessage(IFI)V

    .line 206
    :cond_9
    iget-object p2, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p2, p2, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    iget p3, p0, Lo/getPosition;->ICustomTabsService:I

    if-eq p2, p3, :cond_a

    if-ne p3, v1, :cond_b

    :cond_a
    iget-object p2, p0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p2, p2, Lo/getPosition$onMessageChannelReady;->onMessageChannelReady:I

    if-nez p2, :cond_b

    iget p2, p0, Lo/getPosition;->onPostMessage:I

    if-eq p2, p1, :cond_b

    .line 214
    invoke-direct {p0, v2}, Lo/getPosition;->onNavigationEvent(I)V

    .line 215
    invoke-direct {p0}, Lo/getPosition;->onPostMessage()V

    :cond_b
    return-void
.end method
