.class final Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaDescriptionCompatApi21$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final extraCallback:[F

.field final onPostMessage:[I


# direct methods
.method constructor <init>(II)V
    .locals 3

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 228
    iput-object v1, p0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->onPostMessage:[I

    new-array p1, v0, [F

    .line 229
    fill-array-data p1, :array_0

    iput-object p1, p0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->extraCallback:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(III)V
    .locals 3

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    .line 233
    iput-object v1, p0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->onPostMessage:[I

    new-array p1, v0, [F

    .line 234
    fill-array-data p1, :array_0

    iput-object p1, p0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->extraCallback:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    new-array v1, v0, [I

    iput-object v1, p0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->onPostMessage:[I

    .line 220
    new-array v1, v0, [F

    iput-object v1, p0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->extraCallback:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 222
    iget-object v2, p0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->onPostMessage:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 223
    iget-object v2, p0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->extraCallback:[F

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
