.class public Lo/onCaptioningEnabledChanged;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Z

.field private extraCallback:[I

.field public final onMessageChannelReady:Landroid/view/View;

.field private onNavigationEvent:Landroid/view/ViewParent;

.field private onPostMessage:Landroid/view/ViewParent;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(FFZ)Z
    .locals 2

    .line 5086
    iget-boolean v0, p0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0, v1}, Lo/onCaptioningEnabledChanged;->onNavigationEvent(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Lo/sendMediaButton;->onNavigationEvent(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public final ICustomTabsCallback(II[I[II)Z
    .locals 10

    .line 4086
    iget-boolean v0, p0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 303
    invoke-virtual {p0, p5}, Lo/onCaptioningEnabledChanged;->onNavigationEvent(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_9

    .line 331
    aput v1, p4, v1

    .line 332
    aput v1, p4, v0

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 312
    iget-object v3, p0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 313
    aget v3, p4, v1

    .line 314
    aget v4, p4, v0

    move v8, v3

    move v9, v4

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-nez p3, :cond_5

    .line 4425
    iget-object p3, p0, Lo/onCaptioningEnabledChanged;->extraCallback:[I

    if-nez p3, :cond_4

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 4426
    iput-object p3, p0, Lo/onCaptioningEnabledChanged;->extraCallback:[I

    .line 4428
    :cond_4
    iget-object p3, p0, Lo/onCaptioningEnabledChanged;->extraCallback:[I

    .line 320
    :cond_5
    aput v1, p3, v1

    .line 321
    aput v1, p3, v0

    .line 322
    iget-object v3, p0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    invoke-static/range {v2 .. v7}, Lo/sendMediaButton;->onNavigationEvent(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz p4, :cond_6

    .line 325
    iget-object p1, p0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 326
    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    .line 327
    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    .line 329
    :cond_6
    aget p1, p3, v1

    if-nez p1, :cond_8

    aget p1, p3, v0

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public final extraCallback(II)Z
    .locals 5

    .line 1114
    invoke-virtual {p0, p2}, Lo/onCaptioningEnabledChanged;->onNavigationEvent(I)Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 2086
    :cond_1
    iget-boolean v0, p0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 151
    iget-object v3, p0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    :goto_1
    if-eqz v0, :cond_4

    .line 153
    iget-object v4, p0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v0, v3, v4, p1, p2}, Lo/sendMediaButton;->onNavigationEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    invoke-virtual {p0, p2, v0}, Lo/onCaptioningEnabledChanged;->onPostMessage(ILandroid/view/ViewParent;)V

    .line 155
    iget-object v1, p0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-static {v0, v3, v1, p1, p2}, Lo/sendMediaButton;->onMessageChannelReady(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return v2

    .line 158
    :cond_2
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_3

    .line 159
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 161
    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_4
    return v1
.end method

.method public final onMessageChannelReady(IIII[II[I)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p5

    .line 3086
    iget-boolean v2, v0, Lo/onCaptioningEnabledChanged;->ICustomTabsCallback:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    move/from16 v2, p6

    .line 239
    invoke-virtual {p0, v2}, Lo/onCaptioningEnabledChanged;->onNavigationEvent(I)Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    const/4 v12, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_7

    .line 270
    aput v3, v1, v3

    .line 271
    aput v3, v1, v12

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 248
    iget-object v5, v0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 249
    aget v5, v1, v3

    .line 250
    aget v6, v1, v12

    move v13, v5

    move v14, v6

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-nez p7, :cond_5

    .line 3425
    iget-object v5, v0, Lo/onCaptioningEnabledChanged;->extraCallback:[I

    if-nez v5, :cond_4

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 3426
    iput-object v5, v0, Lo/onCaptioningEnabledChanged;->extraCallback:[I

    .line 3428
    :cond_4
    iget-object v5, v0, Lo/onCaptioningEnabledChanged;->extraCallback:[I

    .line 255
    aput v3, v5, v3

    .line 256
    aput v3, v5, v12

    move-object v11, v5

    goto :goto_2

    :cond_5
    move-object/from16 v11, p7

    .line 259
    :goto_2
    iget-object v5, v0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v4 .. v11}, Lo/sendMediaButton;->extraCallback(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    if-eqz v1, :cond_6

    .line 263
    iget-object v2, v0, Lo/onCaptioningEnabledChanged;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 264
    aget v2, v1, v3

    sub-int/2addr v2, v13

    aput v2, v1, v3

    .line 265
    aget v2, v1, v12

    sub-int/2addr v2, v14

    aput v2, v1, v12

    :cond_6
    return v12

    :cond_7
    :goto_3
    return v3
.end method

.method public final onNavigationEvent(I)Landroid/view/ViewParent;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 408
    :cond_0
    iget-object p1, p0, Lo/onCaptioningEnabledChanged;->onNavigationEvent:Landroid/view/ViewParent;

    return-object p1

    .line 406
    :cond_1
    iget-object p1, p0, Lo/onCaptioningEnabledChanged;->onPostMessage:Landroid/view/ViewParent;

    return-object p1
.end method

.method public final onPostMessage(ILandroid/view/ViewParent;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    iput-object p2, p0, Lo/onCaptioningEnabledChanged;->onNavigationEvent:Landroid/view/ViewParent;

    :goto_0
    return-void

    .line 416
    :cond_1
    iput-object p2, p0, Lo/onCaptioningEnabledChanged;->onPostMessage:Landroid/view/ViewParent;

    return-void
.end method
