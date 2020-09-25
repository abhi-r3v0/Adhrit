.class public Lo/setSpeed;
.super Lo/getSpeed;
.source ""


# static fields
.field private static ICustomTabsCallback:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "+",
            "Lo/Campaign;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private onPostMessage:Lo/Campaign;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lo/getSpeed;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lo/setSpeed;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lo/getSpeed;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0, p1, p2}, Lo/setSpeed;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lo/getSpeed;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0, p1, p2}, Lo/setSpeed;->onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static onNavigationEvent(Lo/setPivotX;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPivotX<",
            "+",
            "Lo/Campaign;",
            ">;)V"
        }
    .end annotation

    .line 42
    sput-object p0, Lo/setSpeed;->ICustomTabsCallback:Lo/setPivotX;

    return-void
.end method

.method private onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 80
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1127
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1226
    iget-object v2, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    invoke-interface {v0}, Lo/setMaxFrame;->onMessageChannelReady()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2127
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 2226
    iget-object v2, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    invoke-interface {v0}, Lo/setMaxFrame;->onMessageChannelReady()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_2

    .line 87
    :cond_2
    sget-object v0, Lo/setSpeed;->ICustomTabsCallback:Lo/setPivotX;

    const-string v2, "SimpleDraweeView was not initialized!"

    if-eqz v0, :cond_7

    .line 89
    sget-object v0, Lo/setSpeed;->ICustomTabsCallback:Lo/setPivotX;

    invoke-interface {v0}, Lo/setPivotX;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Campaign;

    iput-object v0, p0, Lo/setSpeed;->onPostMessage:Lo/Campaign;

    :goto_2
    if-eqz p2, :cond_6

    .line 93
    sget-object v0, Lo/WorkDatabase_Impl$onNavigationEvent;->SimpleDraweeView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    sget p2, Lo/WorkDatabase_Impl$onNavigationEvent;->SimpleDraweeView_actualImageUri:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 96
    sget p2, Lo/WorkDatabase_Impl$onNavigationEvent;->SimpleDraweeView_actualImageUri:I

    .line 97
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 96
    invoke-virtual {p0, p2, v1}, Lo/setSpeed;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    goto :goto_3

    .line 98
    :cond_3
    sget p2, Lo/WorkDatabase_Impl$onNavigationEvent;->SimpleDraweeView_actualImageResource:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 99
    sget p2, Lo/WorkDatabase_Impl$onNavigationEvent;->SimpleDraweeView_actualImageResource:I

    const/4 v0, -0x1

    .line 100
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_5

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 105
    :cond_4
    invoke-virtual {p0, p2}, Lo/setSpeed;->setActualImageResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_5
    :goto_3
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    :cond_6
    :goto_4
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 2231
    :cond_7
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 114
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 115
    throw p1
.end method


# virtual methods
.method public setActualImageResource(I)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, v0}, Lo/setSpeed;->setActualImageResource(ILjava/lang/Object;)V

    return-void
.end method

.method public setActualImageResource(ILjava/lang/Object;)V
    .locals 0

    .line 209
    invoke-static {p1}, Lo/setLayoutDirection;->extraCallback(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/setSpeed;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageRequest(Lo/getHostPrefix;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lo/setSpeed;->onPostMessage:Lo/Campaign;

    .line 3124
    iput-object p1, v0, Lo/Campaign;->ICustomTabsCallback:Ljava/lang/Object;

    .line 4139
    iget-object p1, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 4195
    iget-object p1, p1, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    .line 4291
    iput-object p1, v0, Lo/Campaign;->asInterface:Lo/getMinFrame;

    .line 132
    invoke-virtual {v0}, Lo/Campaign;->extraCallback()Lo/DataCampaign;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lo/setMinAndMaxProgress;->setController(Lo/getMinFrame;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 221
    invoke-super {p0, p1}, Lo/getSpeed;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v0}, Lo/setSpeed;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lo/setSpeed;->onPostMessage:Lo/Campaign;

    .line 5112
    iput-object p2, v0, Lo/Campaign;->onNavigationEvent:Ljava/lang/Object;

    .line 166
    invoke-virtual {v0, p1}, Lo/Campaign;->onPostMessage(Landroid/net/Uri;)Lo/setMaxProgress;

    move-result-object p1

    .line 6139
    iget-object p2, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 6195
    iget-object p2, p2, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    .line 167
    invoke-interface {p1, p2}, Lo/setMaxProgress;->ICustomTabsCallback(Lo/getMinFrame;)Lo/setMaxProgress;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Lo/setMaxProgress;->ICustomTabsCallback$Stub()Lo/getMinFrame;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lo/setMinAndMaxProgress;->setController(Lo/getMinFrame;)V

    return-void
.end method

.method public setImageURI(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, v0}, Lo/setSpeed;->setImageURI(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageURI(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 179
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 180
    :goto_0
    invoke-virtual {p0, p1, p2}, Lo/setSpeed;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method
