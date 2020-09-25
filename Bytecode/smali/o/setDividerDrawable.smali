.class public final Lo/setDividerDrawable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/drawDividersHorizontal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/drawDividersHorizontal<",
        "Landroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/Bitmap$CompressFormat;

.field private final extraCallback:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, v0}, Lo/setDividerDrawable;-><init>(Landroid/graphics/Bitmap$CompressFormat;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lo/setDividerDrawable;->ICustomTabsCallback:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p1, 0x64

    .line 28
    iput p1, p0, Lo/setDividerDrawable;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "[B>;"
        }
    .end annotation

    .line 35
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lo/setDividerDrawable;->ICustomTabsCallback:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 37
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onMessageChannelReady()V

    .line 38
    new-instance p1, Lo/onForwardingStarted;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lo/onForwardingStarted;-><init>([B)V

    return-object p1
.end method
