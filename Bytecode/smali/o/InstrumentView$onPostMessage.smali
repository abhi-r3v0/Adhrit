.class public final Lo/InstrumentView$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstrumentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/getJuspayUpi;

.field public final extraCallback:Ljava/lang/Object;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:[I


# direct methods
.method public varargs constructor <init>(Lo/getJuspayUpi;[I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0, v1}, Lo/InstrumentView$onPostMessage;-><init>(Lo/getJuspayUpi;[IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lo/getJuspayUpi;[IILjava/lang/Object;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lo/InstrumentView$onPostMessage;->ICustomTabsCallback:Lo/getJuspayUpi;

    .line 68
    iput-object p2, p0, Lo/InstrumentView$onPostMessage;->onNavigationEvent:[I

    .line 69
    iput p3, p0, Lo/InstrumentView$onPostMessage;->onMessageChannelReady:I

    .line 70
    iput-object p4, p0, Lo/InstrumentView$onPostMessage;->extraCallback:Ljava/lang/Object;

    return-void
.end method
