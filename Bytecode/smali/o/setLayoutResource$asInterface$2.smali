.class final Lo/setLayoutResource$asInterface$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLayoutResource$asInterface;->onRatingChanged(Landroid/widget/RatingBar;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setLayoutResource$asInterface;


# direct methods
.method constructor <init>(Lo/setLayoutResource$asInterface;)V
    .locals 0

    iput-object p1, p0, Lo/setLayoutResource$asInterface$2;->onMessageChannelReady:Lo/setLayoutResource$asInterface;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 2184
    iget-object v0, p0, Lo/setLayoutResource$asInterface$2;->onMessageChannelReady:Lo/setLayoutResource$asInterface;

    iget-object v0, v0, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->sheetScrollView:I

    invoke-virtual {v0, v1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/prepareFromUri;

    iget-object v1, p0, Lo/setLayoutResource$asInterface$2;->onMessageChannelReady:Lo/setLayoutResource$asInterface;

    iget-object v1, v1, Lo/setLayoutResource$asInterface;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->ctaPlaceholder:I

    invoke-virtual {v1, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    invoke-virtual {v1}, Landroid/widget/Space;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2506
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    rsub-int/lit8 v2, v2, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v1, v4

    const/16 v4, 0xfa

    invoke-virtual {v0, v2, v1, v4, v3}, Lo/prepareFromUri;->onMessageChannelReady(IIIZ)V

    .line 49
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
