.class Lo/fromMediaDescription$ICustomTabsCallback$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromMediaDescription$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/fromMediaDescription$ICustomTabsCallback;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 8

    .line 353
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget p1, p1, Lo/fromMediaDescription$ICustomTabsCallback;->onMessageChannelReady:I

    const/4 p3, 0x1

    and-int/2addr p1, p3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget-object v2, p1, Lo/fromMediaDescription$ICustomTabsCallback;->extraCallback:[Landroid/util/SparseIntArray;

    aget-object v2, v2, v0

    .line 355
    invoke-virtual {p2, v1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v3

    .line 354
    invoke-virtual {p1, v2, v3, v4}, Lo/fromMediaDescription$ICustomTabsCallback;->onPostMessage(Landroid/util/SparseIntArray;J)V

    .line 357
    :cond_0
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget p1, p1, Lo/fromMediaDescription$ICustomTabsCallback;->onMessageChannelReady:I

    const/4 v2, 0x2

    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    .line 358
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget-object v3, p1, Lo/fromMediaDescription$ICustomTabsCallback;->extraCallback:[Landroid/util/SparseIntArray;

    aget-object v3, v3, p3

    .line 359
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 358
    invoke-virtual {p1, v3, v4, v5}, Lo/fromMediaDescription$ICustomTabsCallback;->onPostMessage(Landroid/util/SparseIntArray;J)V

    .line 362
    :cond_1
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget p1, p1, Lo/fromMediaDescription$ICustomTabsCallback;->onMessageChannelReady:I

    const/4 p3, 0x4

    and-int/2addr p1, p3

    const/4 v3, 0x3

    if-eqz p1, :cond_2

    .line 363
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget-object v4, p1, Lo/fromMediaDescription$ICustomTabsCallback;->extraCallback:[Landroid/util/SparseIntArray;

    aget-object v4, v4, v2

    .line 364
    invoke-virtual {p2, v3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v5

    .line 363
    invoke-virtual {p1, v4, v5, v6}, Lo/fromMediaDescription$ICustomTabsCallback;->onPostMessage(Landroid/util/SparseIntArray;J)V

    .line 367
    :cond_2
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget p1, p1, Lo/fromMediaDescription$ICustomTabsCallback;->onMessageChannelReady:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 368
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget-object v4, p1, Lo/fromMediaDescription$ICustomTabsCallback;->extraCallback:[Landroid/util/SparseIntArray;

    aget-object v3, v4, v3

    .line 369
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 368
    invoke-virtual {p1, v3, v4, v5}, Lo/fromMediaDescription$ICustomTabsCallback;->onPostMessage(Landroid/util/SparseIntArray;J)V

    .line 371
    :cond_3
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget p1, p1, Lo/fromMediaDescription$ICustomTabsCallback;->onMessageChannelReady:I

    and-int/lit8 p1, p1, 0x10

    const/4 v3, 0x5

    if-eqz p1, :cond_4

    .line 372
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget-object v4, p1, Lo/fromMediaDescription$ICustomTabsCallback;->extraCallback:[Landroid/util/SparseIntArray;

    aget-object p3, v4, p3

    .line 373
    invoke-virtual {p2, v3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 372
    invoke-virtual {p1, p3, v4, v5}, Lo/fromMediaDescription$ICustomTabsCallback;->onPostMessage(Landroid/util/SparseIntArray;J)V

    .line 375
    :cond_4
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget p1, p1, Lo/fromMediaDescription$ICustomTabsCallback;->onMessageChannelReady:I

    and-int/lit8 p1, p1, 0x40

    const/4 p3, 0x7

    const/4 v4, 0x6

    if-eqz p1, :cond_5

    .line 376
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget-object v5, p1, Lo/fromMediaDescription$ICustomTabsCallback;->extraCallback:[Landroid/util/SparseIntArray;

    aget-object v5, v5, v4

    .line 377
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 376
    invoke-virtual {p1, v5, v6, v7}, Lo/fromMediaDescription$ICustomTabsCallback;->onPostMessage(Landroid/util/SparseIntArray;J)V

    .line 380
    :cond_5
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget p1, p1, Lo/fromMediaDescription$ICustomTabsCallback;->onMessageChannelReady:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_6

    .line 381
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget-object v5, p1, Lo/fromMediaDescription$ICustomTabsCallback;->extraCallback:[Landroid/util/SparseIntArray;

    aget-object v3, v5, v3

    .line 382
    invoke-virtual {p2, v4}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 381
    invoke-virtual {p1, v3, v4, v5}, Lo/fromMediaDescription$ICustomTabsCallback;->onPostMessage(Landroid/util/SparseIntArray;J)V

    .line 385
    :cond_6
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget p1, p1, Lo/fromMediaDescription$ICustomTabsCallback;->onMessageChannelReady:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_7

    .line 386
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget-object v3, p1, Lo/fromMediaDescription$ICustomTabsCallback;->extraCallback:[Landroid/util/SparseIntArray;

    aget-object p3, v3, p3

    .line 387
    invoke-virtual {p2, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v3

    .line 386
    invoke-virtual {p1, p3, v3, v4}, Lo/fromMediaDescription$ICustomTabsCallback;->onPostMessage(Landroid/util/SparseIntArray;J)V

    .line 390
    :cond_7
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget p1, p1, Lo/fromMediaDescription$ICustomTabsCallback;->onMessageChannelReady:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_8

    .line 391
    iget-object p1, p0, Lo/fromMediaDescription$ICustomTabsCallback$4;->onPostMessage:Lo/fromMediaDescription$ICustomTabsCallback;

    iget-object p3, p1, Lo/fromMediaDescription$ICustomTabsCallback;->extraCallback:[Landroid/util/SparseIntArray;

    aget-object p3, p3, v1

    .line 392
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v0

    .line 391
    invoke-virtual {p1, p3, v0, v1}, Lo/fromMediaDescription$ICustomTabsCallback;->onPostMessage(Landroid/util/SparseIntArray;J)V

    :cond_8
    return-void
.end method
