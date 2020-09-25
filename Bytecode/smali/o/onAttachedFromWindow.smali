.class public final Lo/onAttachedFromWindow;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDecorPadding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onAttachedFromWindow$ICustomTabsCallback;,
        Lo/onAttachedFromWindow$extraCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:[Landroid/graphics/Bitmap$Config;

.field private static final extraCallback:[Landroid/graphics/Bitmap$Config;

.field private static final onMessageChannelReady:[Landroid/graphics/Bitmap$Config;

.field private static final onNavigationEvent:[Landroid/graphics/Bitmap$Config;

.field private static final onPostMessage:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final asBinder:Lo/onAttachedFromWindow$extraCallback;

.field private final asInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Lo/setStacked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setStacked<",
            "Lo/onAttachedFromWindow$ICustomTabsCallback;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    .line 34
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_0

    const/4 v1, 0x3

    .line 41
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$Config;

    .line 42
    array-length v1, v0

    sub-int/2addr v1, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    aput-object v4, v0, v1

    .line 47
    :cond_0
    sput-object v0, Lo/onAttachedFromWindow;->onPostMessage:[Landroid/graphics/Bitmap$Config;

    sput-object v0, Lo/onAttachedFromWindow;->extraCallback:[Landroid/graphics/Bitmap$Config;

    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    .line 51
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lo/onAttachedFromWindow;->ICustomTabsCallback:[Landroid/graphics/Bitmap$Config;

    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    .line 53
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lo/onAttachedFromWindow;->onNavigationEvent:[Landroid/graphics/Bitmap$Config;

    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    .line 55
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lo/onAttachedFromWindow;->onMessageChannelReady:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lo/onAttachedFromWindow$extraCallback;

    invoke-direct {v0}, Lo/onAttachedFromWindow$extraCallback;-><init>()V

    iput-object v0, p0, Lo/onAttachedFromWindow;->asBinder:Lo/onAttachedFromWindow$extraCallback;

    .line 59
    new-instance v0, Lo/setStacked;

    invoke-direct {v0}, Lo/setStacked;-><init>()V

    iput-object v0, p0, Lo/onAttachedFromWindow;->onRelationshipValidationResult:Lo/setStacked;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/onAttachedFromWindow;->asInterface:Ljava/util/Map;

    return-void
.end method

.method static ICustomTabsCallback(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onMessageChannelReady(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lo/onAttachedFromWindow;->asInterface:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 143
    iget-object v1, p0, Lo/onAttachedFromWindow;->asInterface:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private onPostMessage(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 118
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lo/onAttachedFromWindow;->onMessageChannelReady(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v0

    .line 120
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 133
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 135
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried to decrement empty size, size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", removed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7150
    invoke-static {p2}, Lo/getHorizontalOffset;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 7151
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    .line 7247
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/graphics/Bitmap;
    .locals 2

    .line 109
    iget-object v0, p0, Lo/onAttachedFromWindow;->onRelationshipValidationResult:Lo/setStacked;

    invoke-virtual {v0}, Lo/setStacked;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 111
    invoke-static {v0}, Lo/getHorizontalOffset;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lo/onAttachedFromWindow;->onPostMessage(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method

.method public final ICustomTabsCallback(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 9

    .line 77
    invoke-static {p1, p2, p3}, Lo/getHorizontalOffset;->extraCallback(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 3090
    iget-object v1, p0, Lo/onAttachedFromWindow;->asBinder:Lo/onAttachedFromWindow$extraCallback;

    .line 4011
    iget-object v2, v1, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMinWidthMinor;

    if-nez v2, :cond_0

    .line 4013
    invoke-virtual {v1}, Lo/ContentFrameLayout;->onMessageChannelReady()Lo/getMinWidthMinor;

    move-result-object v2

    .line 3185
    :cond_0
    check-cast v2, Lo/onAttachedFromWindow$ICustomTabsCallback;

    .line 4214
    iput v0, v2, Lo/onAttachedFromWindow$ICustomTabsCallback;->onMessageChannelReady:I

    .line 4215
    iput-object p3, v2, Lo/onAttachedFromWindow$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap$Config;

    .line 4251
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x0

    if-lt v1, v3, :cond_1

    .line 4252
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4253
    sget-object v1, Lo/onAttachedFromWindow;->extraCallback:[Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 4257
    :cond_1
    sget-object v1, Lo/onAttachedFromWindow$1;->ICustomTabsCallback:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    new-array v1, v3, [Landroid/graphics/Bitmap$Config;

    aput-object p3, v1, v4

    goto :goto_0

    .line 4265
    :cond_2
    sget-object v1, Lo/onAttachedFromWindow;->onMessageChannelReady:[Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 4263
    :cond_3
    sget-object v1, Lo/onAttachedFromWindow;->onNavigationEvent:[Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 4261
    :cond_4
    sget-object v1, Lo/onAttachedFromWindow;->ICustomTabsCallback:[Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 4259
    :cond_5
    sget-object v1, Lo/onAttachedFromWindow;->onPostMessage:[Landroid/graphics/Bitmap$Config;

    .line 3091
    :goto_0
    array-length v3, v1

    :goto_1
    if-ge v4, v3, :cond_b

    aget-object v5, v1, v4

    .line 3092
    invoke-direct {p0, v5}, Lo/onAttachedFromWindow;->onMessageChannelReady(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v6

    .line 3093
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_a

    .line 3094
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v7

    shl-int/lit8 v8, v0, 0x3

    if-gt v7, v8, :cond_a

    .line 3095
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_7

    if-nez v5, :cond_6

    if-eqz p3, :cond_b

    goto :goto_2

    .line 3096
    :cond_6
    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3097
    :cond_7
    :goto_2
    iget-object v0, p0, Lo/onAttachedFromWindow;->asBinder:Lo/onAttachedFromWindow$extraCallback;

    .line 5019
    iget-object v1, v0, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v3, 0x14

    if-ge v1, v3, :cond_8

    .line 5020
    iget-object v0, v0, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 3098
    :cond_8
    iget-object v0, p0, Lo/onAttachedFromWindow;->asBinder:Lo/onAttachedFromWindow$extraCallback;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 6011
    iget-object v2, v0, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMinWidthMinor;

    if-nez v2, :cond_9

    .line 6013
    invoke-virtual {v0}, Lo/ContentFrameLayout;->onMessageChannelReady()Lo/getMinWidthMinor;

    move-result-object v2

    .line 5185
    :cond_9
    check-cast v2, Lo/onAttachedFromWindow$ICustomTabsCallback;

    .line 6214
    iput v1, v2, Lo/onAttachedFromWindow$ICustomTabsCallback;->onMessageChannelReady:I

    .line 6215
    iput-object v5, v2, Lo/onAttachedFromWindow$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_b
    :goto_3
    iget-object v0, p0, Lo/onAttachedFromWindow;->onRelationshipValidationResult:Lo/setStacked;

    invoke-virtual {v0, v2}, Lo/setStacked;->ICustomTabsCallback(Lo/getMinWidthMinor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 83
    iget v1, v2, Lo/onAttachedFromWindow$ICustomTabsCallback;->onMessageChannelReady:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lo/onAttachedFromWindow;->onPostMessage(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    .line 84
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_c
    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 162
    invoke-static {p1}, Lo/getHorizontalOffset;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1

    .line 156
    invoke-static {p1, p2, p3}, Lo/getHorizontalOffset;->extraCallback(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    .line 9247
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 64
    invoke-static {p1}, Lo/getHorizontalOffset;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 65
    iget-object v1, p0, Lo/onAttachedFromWindow;->asBinder:Lo/onAttachedFromWindow$extraCallback;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 2011
    iget-object v3, v1, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMinWidthMinor;

    if-nez v3, :cond_0

    .line 2013
    invoke-virtual {v1}, Lo/ContentFrameLayout;->onMessageChannelReady()Lo/getMinWidthMinor;

    move-result-object v3

    .line 1185
    :cond_0
    check-cast v3, Lo/onAttachedFromWindow$ICustomTabsCallback;

    .line 2214
    iput v0, v3, Lo/onAttachedFromWindow$ICustomTabsCallback;->onMessageChannelReady:I

    .line 2215
    iput-object v2, v3, Lo/onAttachedFromWindow$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap$Config;

    .line 67
    iget-object v0, p0, Lo/onAttachedFromWindow;->onRelationshipValidationResult:Lo/setStacked;

    invoke-virtual {v0, v3, p1}, Lo/setStacked;->onNavigationEvent(Lo/getMinWidthMinor;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/onAttachedFromWindow;->onMessageChannelReady(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object p1

    .line 70
    iget v0, v3, Lo/onAttachedFromWindow$ICustomTabsCallback;->onMessageChannelReady:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 71
    iget v1, v3, Lo/onAttachedFromWindow$ICustomTabsCallback;->onMessageChannelReady:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onPostMessage(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 150
    invoke-static {p1}, Lo/getHorizontalOffset;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    .line 8247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SizeConfigStrategy{groupedMap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lo/onAttachedFromWindow;->onRelationshipValidationResult:Lo/setStacked;

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortedSizes=("

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lo/onAttachedFromWindow;->asInterface:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lo/onAttachedFromWindow;->asInterface:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")}"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
