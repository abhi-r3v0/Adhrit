.class public final Lo/setSelectedTextColor;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent([I)V
    .locals 3

    const/4 v0, 0x0

    .line 35
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 36
    aget v1, p0, v0

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    const/16 v1, 0x64

    .line 37
    aput v1, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
