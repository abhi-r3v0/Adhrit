.class public final Lo/onFastForward;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onFastForward$ICustomTabsCallback;,
        Lo/onFastForward$extraCallback;,
        Lo/onFastForward$onPostMessage;,
        Lo/onFastForward$onNavigationEvent;,
        Lo/onFastForward$onMessageChannelReady;,
        Lo/onFastForward$onRelationshipValidationResult;,
        Lo/onFastForward$asBinder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 1009
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1011
    iget p3, p2, Landroid/graphics/Rect;->left:I

    if-le p3, p1, :cond_0

    .line 1012
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    sub-int/2addr p3, v0

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 1013
    iput p1, p2, Landroid/graphics/Rect;->left:I

    :cond_0
    return-object p2
.end method
