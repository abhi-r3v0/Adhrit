.class public Lo/MediaSessionCompat$ResultReceiverWrapper$1;
.super Lo/fromQueueItem;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;
    }
.end annotation


# instance fields
.field asBinder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/fromQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field asInterface:I

.field private newSession:I

.field onRelationshipValidationResult:Z

.field private warmup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lo/fromQueueItem;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->warmup:Z

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onRelationshipValidationResult:Z

    .line 88
    iput v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 116
    invoke-direct {p0, p1, p2}, Lo/fromQueueItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->warmup:Z

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onRelationshipValidationResult:Z

    .line 88
    iput v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    .line 117
    sget-object v1, Lo/getQueueItem;->asBinder:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 118
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v1, "transitionOrdering"

    invoke-static {p1, p2, v1, v0, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 121
    invoke-virtual {p0, p2}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onMessageChannelReady(I)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 640
    invoke-super {p0, p1}, Lo/fromQueueItem;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 641
    :goto_0
    iget-object v2, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fromQueueItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/fromQueueItem;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;
    .locals 0

    .line 307
    invoke-super {p0, p1}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;
    .locals 5

    .line 2199
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2200
    iput-object p0, p1, Lo/fromQueueItem;->extraCallback:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 180
    iget-wide v0, p0, Lo/fromQueueItem;->onNavigationEvent:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 181
    iget-wide v0, p0, Lo/fromQueueItem;->onNavigationEvent:J

    invoke-virtual {p1, v0, v1}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 183
    :cond_0
    iget v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lo/fromQueueItem;->onPostMessage()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/animation/TimeInterpolator;)Lo/fromQueueItem;

    .line 186
    :cond_1
    iget v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 3181
    iget-object v0, p0, Lo/fromQueueItem;->onTransact:Lo/getQueueId;

    .line 187
    invoke-virtual {p1, v0}, Lo/fromQueueItem;->onNavigationEvent(Lo/getQueueId;)V

    .line 189
    :cond_2
    iget v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {p0}, Lo/fromQueueItem;->asInterface()Lo/sendCaptioningEnabled;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/fromQueueItem;->ICustomTabsCallback(Lo/sendCaptioningEnabled;)V

    .line 192
    :cond_3
    iget v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 4133
    iget-object v0, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub:Lo/fromQueueItem$extraCallback;

    .line 193
    invoke-virtual {p1, v0}, Lo/fromQueueItem;->onNavigationEvent(Lo/fromQueueItem$extraCallback;)V

    :cond_4
    return-object p0
.end method

.method public final synthetic ICustomTabsCallback(Landroid/view/View;)Lo/fromQueueItem;
    .locals 2

    const/4 v0, 0x0

    .line 6322
    :goto_0
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6323
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fromQueueItem;

    invoke-virtual {v1, p1}, Lo/fromQueueItem;->ICustomTabsCallback(Landroid/view/View;)Lo/fromQueueItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6325
    :cond_0
    invoke-super {p0, p1}, Lo/fromQueueItem;->ICustomTabsCallback(Landroid/view/View;)Lo/fromQueueItem;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 3

    .line 536
    iget-object v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onPostMessage(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fromQueueItem;

    .line 538
    iget-object v2, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v1, v2}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {v1, p1}, Lo/fromQueueItem;->ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 540
    iget-object v2, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback(Lo/sendCaptioningEnabled;)V
    .locals 2

    .line 390
    invoke-super {p0, p1}, Lo/fromQueueItem;->ICustomTabsCallback(Lo/sendCaptioningEnabled;)V

    .line 391
    iget v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    .line 392
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 393
    :goto_0
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 394
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fromQueueItem;

    invoke-virtual {v1, p1}, Lo/fromQueueItem;->ICustomTabsCallback(Lo/sendCaptioningEnabled;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final ICustomTabsCallback$Stub()V
    .locals 3

    .line 581
    invoke-super {p0}, Lo/fromQueueItem;->ICustomTabsCallback$Stub()V

    .line 582
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 584
    iget-object v2, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fromQueueItem;

    invoke-virtual {v2}, Lo/fromQueueItem;->ICustomTabsCallback$Stub()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final asBinder()Lo/fromQueueItem;
    .locals 5

    .line 649
    invoke-super {p0}, Lo/fromQueueItem;->asBinder()Lo/fromQueueItem;

    move-result-object v0

    check-cast v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    .line 651
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 653
    iget-object v3, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/fromQueueItem;

    invoke-virtual {v3}, Lo/fromQueueItem;->asBinder()Lo/fromQueueItem;

    move-result-object v3

    .line 5199
    iget-object v4, v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 5200
    iput-object v0, v3, Lo/fromQueueItem;->extraCallback:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lo/fromQueueItem;->asBinder()Lo/fromQueueItem;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Landroid/animation/TimeInterpolator;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;
    .locals 3

    .line 258
    iget v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    .line 259
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    iget-object v2, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fromQueueItem;

    invoke-virtual {v2, p1}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/animation/TimeInterpolator;)Lo/fromQueueItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-super {p0, p1}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/animation/TimeInterpolator;)Lo/fromQueueItem;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    return-object p1
.end method

.method public final bridge synthetic extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;
    .locals 0

    .line 6307
    invoke-super {p0, p1}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    return-object p1
.end method

.method protected final extraCallback()V
    .locals 4

    .line 491
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onMessageChannelReady()V

    .line 493
    invoke-virtual {p0}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onRelationshipValidationResult()V

    return-void

    .line 4418
    :cond_0
    new-instance v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;

    invoke-direct {v0, p0}, Lo/MediaSessionCompat$ResultReceiverWrapper$1$extraCallback;-><init>(Lo/MediaSessionCompat$ResultReceiverWrapper$1;)V

    .line 4419
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fromQueueItem;

    .line 4420
    invoke-virtual {v2, v0}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    goto :goto_0

    .line 4422
    :cond_1
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iput v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asInterface:I

    .line 497
    iget-boolean v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->warmup:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 500
    :goto_1
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 501
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fromQueueItem;

    .line 502
    iget-object v2, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fromQueueItem;

    .line 503
    new-instance v3, Lo/MediaSessionCompat$ResultReceiverWrapper$1$5;

    invoke-direct {v3, p0, v2}, Lo/MediaSessionCompat$ResultReceiverWrapper$1$5;-><init>(Lo/MediaSessionCompat$ResultReceiverWrapper$1;Lo/fromQueueItem;)V

    invoke-virtual {v1, v3}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 511
    :cond_2
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fromQueueItem;

    if-eqz v0, :cond_3

    .line 513
    invoke-virtual {v0}, Lo/fromQueueItem;->extraCallback()V

    :cond_3
    return-void

    .line 516
    :cond_4
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fromQueueItem;

    .line 517
    invoke-virtual {v1}, Lo/fromQueueItem;->extraCallback()V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final extraCallback(Landroid/view/View;)V
    .locals 3

    .line 559
    invoke-super {p0, p1}, Lo/fromQueueItem;->extraCallback(Landroid/view/View;)V

    .line 560
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 562
    iget-object v2, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fromQueueItem;

    invoke-virtual {v2, p1}, Lo/fromQueueItem;->extraCallback(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 3

    .line 524
    iget-object v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onPostMessage(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fromQueueItem;

    .line 526
    iget-object v2, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v1, v2}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {v1, p1}, Lo/fromQueueItem;->extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 528
    iget-object v2, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(I)Lo/MediaSessionCompat$ResultReceiverWrapper$1;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->warmup:Z

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    iput-boolean v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->warmup:Z

    :goto_0
    return-object p0
.end method

.method public final onMessageChannelReady(J)Lo/MediaSessionCompat$ResultReceiverWrapper$1;
    .locals 5

    .line 239
    invoke-super {p0, p1, p2}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 240
    iget-wide v0, p0, Lo/fromQueueItem;->onNavigationEvent:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v2, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fromQueueItem;

    invoke-virtual {v2, p1, p2}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final synthetic onMessageChannelReady(Landroid/animation/TimeInterpolator;)Lo/fromQueueItem;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->extraCallback(Landroid/animation/TimeInterpolator;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;
    .locals 0

    .line 5385
    invoke-super {p0, p1}, Lo/fromQueueItem;->onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    return-object p1
.end method

.method public final onMessageChannelReady(Landroid/view/View;)V
    .locals 3

    .line 570
    invoke-super {p0, p1}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/view/View;)V

    .line 571
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 573
    iget-object v2, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fromQueueItem;

    invoke-virtual {v2, p1}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final onMessageChannelReady(Landroid/view/ViewGroup;Lo/MediaBrowserCompat$MediaBrowserImplApi23;Lo/MediaBrowserCompat$MediaBrowserImplApi23;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi23;",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi23;",
            "Ljava/util/ArrayList<",
            "Lo/MediaSessionCompat$ResultReceiverWrapper;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lo/MediaSessionCompat$ResultReceiverWrapper;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 466
    invoke-virtual {p0}, Lo/fromQueueItem;->ICustomTabsCallback()J

    move-result-wide v1

    .line 467
    iget-object v3, v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 469
    iget-object v5, v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lo/fromQueueItem;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 472
    iget-boolean v5, v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->warmup:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 473
    :cond_0
    invoke-virtual {v6}, Lo/fromQueueItem;->ICustomTabsCallback()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 475
    invoke-virtual {v6, v9, v10}, Lo/fromQueueItem;->onNavigationEvent(J)Lo/fromQueueItem;

    goto :goto_1

    .line 477
    :cond_1
    invoke-virtual {v6, v1, v2}, Lo/fromQueueItem;->onNavigationEvent(J)Lo/fromQueueItem;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 480
    invoke-virtual/range {v6 .. v11}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/view/ViewGroup;Lo/MediaBrowserCompat$MediaBrowserImplApi23;Lo/MediaBrowserCompat$MediaBrowserImplApi23;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method final onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 3

    .line 548
    invoke-super {p0, p1}, Lo/fromQueueItem;->onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 549
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 551
    iget-object v2, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fromQueueItem;

    invoke-virtual {v2, p1}, Lo/fromQueueItem;->onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic onNavigationEvent(J)Lo/fromQueueItem;
    .locals 0

    .line 8252
    invoke-super {p0, p1, p2}, Lo/fromQueueItem;->onNavigationEvent(J)Lo/fromQueueItem;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Landroid/view/View;)Lo/fromQueueItem;
    .locals 2

    const/4 v0, 0x0

    .line 7271
    :goto_0
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7272
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fromQueueItem;

    invoke-virtual {v1, p1}, Lo/fromQueueItem;->onNavigationEvent(Landroid/view/View;)Lo/fromQueueItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7274
    :cond_0
    invoke-super {p0, p1}, Lo/fromQueueItem;->onNavigationEvent(Landroid/view/View;)Lo/fromQueueItem;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    return-object p1
.end method

.method public final onNavigationEvent(Lo/fromQueueItem$extraCallback;)V
    .locals 3

    .line 630
    invoke-super {p0, p1}, Lo/fromQueueItem;->onNavigationEvent(Lo/fromQueueItem$extraCallback;)V

    .line 631
    iget v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    .line 632
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 634
    iget-object v2, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fromQueueItem;

    invoke-virtual {v2, p1}, Lo/fromQueueItem;->onNavigationEvent(Lo/fromQueueItem$extraCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/getQueueId;)V
    .locals 3

    .line 620
    invoke-super {p0, p1}, Lo/fromQueueItem;->onNavigationEvent(Lo/getQueueId;)V

    .line 621
    iget v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->newSession:I

    .line 622
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 624
    iget-object v2, p0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/fromQueueItem;

    invoke-virtual {v2, p1}, Lo/fromQueueItem;->onNavigationEvent(Lo/getQueueId;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic onPostMessage(J)Lo/fromQueueItem;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onMessageChannelReady(J)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    move-result-object p1

    return-object p1
.end method
