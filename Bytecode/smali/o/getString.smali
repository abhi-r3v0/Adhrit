.class public final Lo/getString;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onPostMessage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lo/getString;->onPostMessage:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static ICustomTabsCallback(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 612
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 613
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    .line 614
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 615
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 616
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static extraCallback(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 366
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onMessageChannelReady(II)I
    .locals 8

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 54
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int v2, v0, 0xff

    rsub-int v3, v1, 0xff

    mul-int v2, v2, v3

    .line 1131
    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    .line 57
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    const/4 v6, 0x0

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    mul-int/lit16 v4, v4, 0xff

    mul-int v4, v4, v1

    mul-int v5, v5, v0

    mul-int v5, v5, v3

    add-int/2addr v4, v5

    mul-int/lit16 v5, v2, 0xff

    .line 1136
    div-int/2addr v4, v5

    .line 59
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 60
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    if-nez v2, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    mul-int/lit16 v5, v5, 0xff

    mul-int v5, v5, v1

    mul-int v7, v7, v0

    mul-int v7, v7, v3

    add-int/2addr v5, v7

    mul-int/lit16 v7, v2, 0xff

    .line 2136
    div-int/2addr v5, v7

    .line 61
    :goto_1
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 62
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit16 p0, p0, 0xff

    mul-int p0, p0, v1

    mul-int p1, p1, v0

    mul-int p1, p1, v3

    add-int/2addr p0, p1

    mul-int/lit16 p1, v2, 0xff

    .line 3136
    div-int v6, p0, p1

    .line 64
    :goto_2
    invoke-static {v2, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static onNavigationEvent(I)D
    .locals 18

    .line 3678
    sget-object v0, Lo/getString;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x3

    if-nez v0, :cond_0

    new-array v0, v1, [D

    .line 3681
    sget-object v2, Lo/getString;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4421
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 4444
    array-length v5, v0

    if-ne v5, v1, :cond_4

    int-to-double v1, v2

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v5

    const-wide v7, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v9, 0x4003333333333333L    # 2.4

    const-wide v11, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v13, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v15, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v17, v1, v15

    if-gez v17, :cond_1

    div-double/2addr v1, v7

    goto :goto_0

    :cond_1
    add-double/2addr v1, v13

    div-double/2addr v1, v11

    .line 4449
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    :goto_0
    int-to-double v9, v3

    div-double/2addr v9, v5

    cmpg-double v3, v9, v15

    if-gez v3, :cond_2

    div-double/2addr v9, v7

    const-wide v11, 0x4003333333333333L    # 2.4

    goto :goto_1

    :cond_2
    add-double/2addr v9, v13

    div-double/2addr v9, v11

    const-wide v11, 0x4003333333333333L    # 2.4

    .line 4451
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    :goto_1
    int-to-double v3, v4

    div-double/2addr v3, v5

    cmpg-double v5, v3, v15

    if-gez v5, :cond_3

    div-double/2addr v3, v7

    goto :goto_2

    :cond_3
    add-double/2addr v3, v13

    const-wide v5, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v3, v5

    .line 4453
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    :goto_2
    const/4 v5, 0x0

    const-wide v6, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double v6, v6, v1

    const-wide v11, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v11, v11, v9

    add-double/2addr v6, v11

    const-wide v11, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double v11, v11, v3

    add-double/2addr v6, v11

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v11

    .line 4455
    aput-wide v6, v0, v5

    const-wide v5, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v5, v5, v1

    const-wide v7, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    const-wide v7, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v7, v7, v3

    add-double/2addr v5, v7

    mul-double v5, v5, v11

    const/4 v7, 0x1

    .line 4456
    aput-wide v5, v0, v7

    const/4 v5, 0x2

    const-wide v13, 0x3f93c36113404ea5L    # 0.0193

    mul-double v1, v1, v13

    const-wide v13, 0x3fbe83e425aee632L    # 0.1192

    mul-double v9, v9, v13

    add-double/2addr v1, v9

    const-wide v8, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double v3, v3, v8

    add-double/2addr v1, v3

    mul-double v1, v1, v11

    .line 4457
    aput-wide v1, v0, v5

    .line 148
    aget-wide v1, v0, v7

    div-double/2addr v1, v11

    return-wide v1

    .line 4445
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static onPostMessage(II)D
    .locals 4

    .line 159
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 163
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 165
    invoke-static {p0, p1}, Lo/getString;->onMessageChannelReady(II)I

    move-result p0

    .line 168
    :cond_0
    invoke-static {p0}, Lo/getString;->onNavigationEvent(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 169
    invoke-static {p1}, Lo/getString;->onNavigationEvent(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    .line 172
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    .line 160
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "background can not be translucent: #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
