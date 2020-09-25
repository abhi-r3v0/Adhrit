.class final Lo/createConnection$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/createConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final ICustomTabsCallback:I

.field final onMessageChannelReady:I

.field final onNavigationEvent:[Lo/createConnection$onNavigationEvent;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lo/createConnection$onNavigationEvent;

    .line 212
    iput-object v0, p0, Lo/createConnection$onNavigationEvent;->onNavigationEvent:[Lo/createConnection$onNavigationEvent;

    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lo/createConnection$onNavigationEvent;->ICustomTabsCallback:I

    .line 214
    iput v0, p0, Lo/createConnection$onNavigationEvent;->onMessageChannelReady:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lo/createConnection$onNavigationEvent;->onNavigationEvent:[Lo/createConnection$onNavigationEvent;

    .line 225
    iput p1, p0, Lo/createConnection$onNavigationEvent;->ICustomTabsCallback:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 227
    :cond_0
    iput p1, p0, Lo/createConnection$onNavigationEvent;->onMessageChannelReady:I

    return-void
.end method
