.class public abstract Lo/getPromptPosition;
.super Lo/setGravity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPromptPosition$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setGravity<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static extraCallback:I


# instance fields
.field protected final onNavigationEvent:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/getPromptPosition$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget v0, Lo/AppCompatEditText$onMessageChannelReady;->glide_custom_view_target_tag:I

    sput v0, Lo/getPromptPosition;->extraCallback:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lo/setGravity;-><init>()V

    if-eqz p1, :cond_0

    .line 62
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lo/getPromptPosition;->onNavigationEvent:Landroid/view/View;

    .line 63
    new-instance v0, Lo/getPromptPosition$extraCallback;

    invoke-direct {v0, p1}, Lo/getPromptPosition$extraCallback;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lo/getPromptPosition;->onPostMessage:Lo/getPromptPosition$extraCallback;

    return-void

    .line 1029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Lo/setGravity;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object p1, p0, Lo/getPromptPosition;->onPostMessage:Lo/getPromptPosition$extraCallback;

    invoke-virtual {p1}, Lo/getPromptPosition$extraCallback;->onNavigationEvent()V

    return-void
.end method

.method public onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lo/setGravity;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/LinearLayoutCompat$OrientationMode;)V
    .locals 7

    .line 218
    iget-object v0, p0, Lo/getPromptPosition;->onPostMessage:Lo/getPromptPosition$extraCallback;

    .line 1373
    invoke-virtual {v0}, Lo/getPromptPosition$extraCallback;->onMessageChannelReady()I

    move-result v1

    .line 1374
    invoke-virtual {v0}, Lo/getPromptPosition$extraCallback;->onPostMessage()I

    move-result v2

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gtz v1, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_4

    if-gtz v2, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_5

    .line 1376
    invoke-interface {p1, v1, v2}, Lo/LinearLayoutCompat$OrientationMode;->extraCallback(II)V

    return-void

    .line 1382
    :cond_5
    iget-object v1, v0, Lo/getPromptPosition$extraCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1383
    iget-object v1, v0, Lo/getPromptPosition$extraCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1385
    :cond_6
    iget-object p1, v0, Lo/getPromptPosition$extraCallback;->onPostMessage:Lo/getPromptPosition$extraCallback$ICustomTabsCallback;

    if-nez p1, :cond_7

    .line 1386
    iget-object p1, v0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1387
    new-instance v1, Lo/getPromptPosition$extraCallback$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/getPromptPosition$extraCallback$ICustomTabsCallback;-><init>(Lo/getPromptPosition$extraCallback;)V

    iput-object v1, v0, Lo/getPromptPosition$extraCallback;->onPostMessage:Lo/getPromptPosition$extraCallback$ICustomTabsCallback;

    .line 1388
    iget-object v0, v0, Lo/getPromptPosition$extraCallback;->onPostMessage:Lo/getPromptPosition$extraCallback$ICustomTabsCallback;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_7
    return-void
.end method

.method public final onNavigationEvent(Lo/LinearLayoutCompat$OrientationMode;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lo/getPromptPosition;->onPostMessage:Lo/getPromptPosition$extraCallback;

    .line 3399
    iget-object v0, v0, Lo/getPromptPosition$extraCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostMessage()Lo/getNextLocationOffset;
    .locals 2

    .line 4287
    iget-object v0, p0, Lo/getPromptPosition;->onNavigationEvent:Landroid/view/View;

    sget v1, Lo/getPromptPosition;->extraCallback:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    instance-of v1, v0, Lo/getNextLocationOffset;

    if-eqz v1, :cond_0

    .line 266
    check-cast v0, Lo/getNextLocationOffset;

    goto :goto_0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final onPostMessage(Lo/getNextLocationOffset;)V
    .locals 2

    .line 4282
    iget-object v0, p0, Lo/getPromptPosition;->onNavigationEvent:Landroid/view/View;

    sget v1, Lo/getPromptPosition;->extraCallback:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getPromptPosition;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
