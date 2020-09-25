.class public final Lo/createEditText;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:I = 0x0

.field public static onNavigationEvent:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()F
    .locals 2

    .line 45
    sget v0, Lo/createEditText;->ICustomTabsCallback:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 46
    sput v0, Lo/createEditText;->ICustomTabsCallback:I

    :cond_0
    return v1
.end method

.method public static onPostMessage()V
    .locals 0

    return-void
.end method
