.class public final Lo/onPause$ICustomTabsCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onPause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field public static final alpha:I = 0x7f040035

.field public static final fastScrollEnabled:I = 0x7f0401b4

.field public static final fastScrollHorizontalThumbDrawable:I = 0x7f0401b5

.field public static final fastScrollHorizontalTrackDrawable:I = 0x7f0401b6

.field public static final fastScrollVerticalThumbDrawable:I = 0x7f0401b7

.field public static final fastScrollVerticalTrackDrawable:I = 0x7f0401b8

.field public static final font:I = 0x7f0401bc

.field public static final fontProviderAuthority:I = 0x7f0401be

.field public static final fontProviderCerts:I = 0x7f0401bf

.field public static final fontProviderFetchStrategy:I = 0x7f0401c0

.field public static final fontProviderFetchTimeout:I = 0x7f0401c1

.field public static final fontProviderPackage:I = 0x7f0401c2

.field public static final fontProviderQuery:I = 0x7f0401c3

.field public static final fontStyle:I = 0x7f0401c4

.field public static final fontVariationSettings:I = 0x7f0401c5

.field public static final fontWeight:I = 0x7f0401c6

.field public static final layoutManager:I = 0x7f04025d

.field public static final recyclerViewStyle:I = 0x7f040360

.field public static final reverseLayout:I = 0x7f040365

.field public static final spanCount:I = 0x7f0403cd

.field public static final stackFromEnd:I = 0x7f0403d4

.field public static final ttcIndex:I = 0x7f040460


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 1009
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-lt v0, p1, :cond_2

    .line 1012
    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-gt v0, p2, :cond_1

    .line 1016
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1018
    iget p3, p2, Landroid/graphics/Rect;->top:I

    if-le p3, p1, :cond_0

    .line 1019
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    sub-int/2addr p3, v0

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 1020
    iput p1, p2, Landroid/graphics/Rect;->top:I

    :cond_0
    return-object p2

    .line 1013
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bottom point of input rect can\'t be bigger than maxTop"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1010
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "top point of input rect can\'t be lower than minTop"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
