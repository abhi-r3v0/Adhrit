.class public final Lo/CardInstrument$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CardInstrument;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CardInstrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onPostMessage:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput p1, p0, Lo/CardInstrument$ICustomTabsCallback;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 203
    iget v0, p0, Lo/CardInstrument$ICustomTabsCallback;->onPostMessage:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final extraCallback(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 193
    iget v0, p0, Lo/CardInstrument$ICustomTabsCallback;->onPostMessage:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 208
    iget v0, p0, Lo/CardInstrument$ICustomTabsCallback;->onPostMessage:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 188
    iget v0, p0, Lo/CardInstrument$ICustomTabsCallback;->onPostMessage:I

    return v0
.end method

.method public final onPostMessage(I)I
    .locals 1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    return p1

    :cond_0
    return v0
.end method
