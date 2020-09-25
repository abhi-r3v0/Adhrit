.class public final Lo/getDropDownViewTheme;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field public final extraCallback:Lo/onDestroyView;

.field public final onPostMessage:Lo/safeSizeOf;


# direct methods
.method private constructor <init>(Lo/onDestroyView;Lo/safeSizeOf;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/getDropDownViewTheme;->extraCallback:Lo/onDestroyView;

    .line 42
    iput-object p2, p0, Lo/getDropDownViewTheme;->onPostMessage:Lo/safeSizeOf;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/view/View;)Lo/getDropDownViewTheme;
    .locals 2

    const v0, 0x7f0b047b

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onLowMemory;

    if-eqz v0, :cond_3

    const v0, 0x7f0b047c

    .line 77
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onLowMemory;

    if-eqz v0, :cond_2

    const v0, 0x7f0b050a

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    if-eqz v0, :cond_1

    const v1, 0x7f0b09a7

    .line 87
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lo/safeSizeOf;

    if-eqz p0, :cond_0

    .line 92
    new-instance v1, Lo/getDropDownViewTheme;

    invoke-direct {v1, v0, p0}, Lo/getDropDownViewTheme;-><init>(Lo/onDestroyView;Lo/safeSizeOf;)V

    return-object v1

    :cond_0
    const-string/jumbo p0, "webView"

    goto :goto_0

    :cond_1
    const-string p0, "loaderView"

    goto :goto_0

    :cond_2
    const-string p0, "insetTop"

    goto :goto_0

    :cond_3
    const-string p0, "insetBottom"

    .line 95
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
