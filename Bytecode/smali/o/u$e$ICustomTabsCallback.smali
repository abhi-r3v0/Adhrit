.class public final Lo/u$e$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lo/u$e$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 46
    iput p2, p0, Lo/u$e$ICustomTabsCallback;->onPostMessage:I

    .line 47
    iput p3, p0, Lo/u$e$ICustomTabsCallback;->extraCallback:I

    .line 48
    iput p4, p0, Lo/u$e$ICustomTabsCallback;->onNavigationEvent:I

    .line 49
    iput p5, p0, Lo/u$e$ICustomTabsCallback;->onMessageChannelReady:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILo/u$e$3;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lo/u$e$ICustomTabsCallback;-><init>(IIIII)V

    return-void
.end method
