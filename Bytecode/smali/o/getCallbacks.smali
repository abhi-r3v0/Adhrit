.class public abstract Lo/getCallbacks;
.super Landroid/view/View;
.source ""


# instance fields
.field private ICustomTabsCallback:Landroid/content/Context;

.field protected extraCallback:[I

.field protected onMessageChannelReady:Lo/MediaBrowserCompat$Subscription;

.field protected onNavigationEvent:I

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 40
    iput-object v0, p0, Lo/getCallbacks;->extraCallback:[I

    .line 65
    iput-object p1, p0, Lo/getCallbacks;->ICustomTabsCallback:Landroid/content/Context;

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lo/getCallbacks;->ICustomTabsCallback(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 40
    iput-object v0, p0, Lo/getCallbacks;->extraCallback:[I

    .line 71
    iput-object p1, p0, Lo/getCallbacks;->ICustomTabsCallback:Landroid/content/Context;

    .line 72
    invoke-virtual {p0, p2}, Lo/getCallbacks;->ICustomTabsCallback(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x20

    new-array p3, p3, [I

    .line 40
    iput-object p3, p0, Lo/getCallbacks;->extraCallback:[I

    .line 77
    iput-object p1, p0, Lo/getCallbacks;->ICustomTabsCallback:Landroid/content/Context;

    .line 78
    invoke-virtual {p0, p2}, Lo/getCallbacks;->ICustomTabsCallback(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lo/getCallbacks;->ICustomTabsCallback:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 177
    :try_start_0
    const-class v2, Lo/MediaDescriptionCompat$extraCallback;

    .line 178
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lo/getCallbacks;->ICustomTabsCallback:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lo/getCallbacks;->ICustomTabsCallback:Landroid/content/Context;

    .line 186
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 185
    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lo/onChildrenLoaded;

    if-eqz v2, :cond_3

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    .line 190
    invoke-virtual {v2, p1}, Lo/onChildrenLoaded;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 191
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 192
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    .line 197
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    .line 199
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find id of \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConstraintHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onPostMessage(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x2c

    .line 212
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/getCallbacks;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void

    .line 217
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getCallbacks;->ICustomTabsCallback(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected ICustomTabsCallback(Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 89
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 90
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v2, v3, :cond_0

    .line 91
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/getCallbacks;->onPostMessage:Ljava/lang/String;

    .line 92
    invoke-direct {p0, v2}, Lo/getCallbacks;->onPostMessage(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback()[I
    .locals 2

    .line 103
    iget-object v0, p0, Lo/getCallbacks;->extraCallback:[I

    iget v1, p0, Lo/getCallbacks;->onNavigationEvent:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1, p1}, Lo/getCallbacks;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 154
    iget-object v0, p0, Lo/getCallbacks;->onMessageChannelReady:Lo/MediaBrowserCompat$Subscription;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 158
    instance-of v1, v0, Lo/onChildrenLoaded$onPostMessage;

    if-eqz v1, :cond_1

    .line 159
    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    .line 160
    iget-object v1, p0, Lo/getCallbacks;->onMessageChannelReady:Lo/MediaBrowserCompat$Subscription;

    iput-object v1, v0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    :cond_1
    return-void
.end method

.method public onMessageChannelReady(Lo/onChildrenLoaded;)V
    .locals 3

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lo/getCallbacks;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/getCallbacks;->onPostMessage(Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lo/getCallbacks;->onMessageChannelReady:Lo/MediaBrowserCompat$Subscription;

    if-nez v0, :cond_1

    return-void

    .line 235
    :cond_1
    invoke-virtual {v0}, Lo/MediaBrowserCompat$Subscription;->IPostMessageService$Stub()V

    const/4 v0, 0x0

    .line 236
    :goto_0
    iget v1, p0, Lo/getCallbacks;->onNavigationEvent:I

    if-ge v0, v1, :cond_5

    .line 237
    iget-object v1, p0, Lo/getCallbacks;->extraCallback:[I

    aget v1, v1, v0

    .line 3015
    iget-object v2, p1, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 240
    iget-object v2, p0, Lo/getCallbacks;->onMessageChannelReady:Lo/MediaBrowserCompat$Subscription;

    if-ne v1, p1, :cond_2

    .line 3155
    iget-object v1, p1, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 3157
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded$onPostMessage;

    iget-object v1, v1, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 240
    :goto_1
    invoke-virtual {v2, v1}, Lo/MediaBrowserCompat$Subscription;->extraCallback(Lo/removeSubscription;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onNavigationEvent()V
    .locals 0

    return-void
.end method

.method public setReferencedIds([I)V
    .locals 3

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lo/getCallbacks;->onNavigationEvent:I

    .line 112
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 113
    aget v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2

    .line 122
    iget p2, p0, Lo/getCallbacks;->onNavigationEvent:I

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lo/getCallbacks;->extraCallback:[I

    array-length v1, v0

    if-le p2, v1, :cond_0

    .line 123
    array-length p2, v0

    shl-int/lit8 p2, p2, 0x1

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    iput-object p2, p0, Lo/getCallbacks;->extraCallback:[I

    .line 125
    :cond_0
    iget-object p2, p0, Lo/getCallbacks;->extraCallback:[I

    iget v0, p0, Lo/getCallbacks;->onNavigationEvent:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 126
    iput v0, p0, Lo/getCallbacks;->onNavigationEvent:I

    return-void
.end method
