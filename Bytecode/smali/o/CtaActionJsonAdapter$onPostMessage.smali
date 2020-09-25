.class final Lo/CtaActionJsonAdapter$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CtaActionJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/CtaActionJsonAdapter$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final onMessageChannelReady:Lo/CheckoutSessionResponse;


# direct methods
.method public constructor <init>(ILo/CheckoutSessionResponse;)V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput p1, p0, Lo/CtaActionJsonAdapter$onPostMessage;->ICustomTabsCallback:I

    .line 483
    iput-object p2, p0, Lo/CtaActionJsonAdapter$onPostMessage;->onMessageChannelReady:Lo/CheckoutSessionResponse;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 476
    check-cast p1, Lo/CtaActionJsonAdapter$onPostMessage;

    invoke-virtual {p0, p1}, Lo/CtaActionJsonAdapter$onPostMessage;->onNavigationEvent(Lo/CtaActionJsonAdapter$onPostMessage;)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/CtaActionJsonAdapter$onPostMessage;)I
    .locals 1

    .line 488
    iget v0, p0, Lo/CtaActionJsonAdapter$onPostMessage;->ICustomTabsCallback:I

    iget p1, p1, Lo/CtaActionJsonAdapter$onPostMessage;->ICustomTabsCallback:I

    sub-int/2addr v0, p1

    return v0
.end method
