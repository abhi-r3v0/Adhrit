.class public final Lo/setLayoutResource$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLayoutResource;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/dreamplug/androidapp/ui/rating/RatingDialogFragment$onViewCreated$12",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setLayoutResource;


# direct methods
.method constructor <init>(Lo/setLayoutResource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lo/setLayoutResource$asBinder;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 276
    iget-object p1, p0, Lo/setLayoutResource$asBinder;->ICustomTabsCallback:Lo/setLayoutResource;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->sheetScrollView:I

    invoke-virtual {p1, p2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/prepareFromUri;

    iget-object p2, p0, Lo/setLayoutResource$asBinder;->ICustomTabsCallback:Lo/setLayoutResource;

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->ctaPlaceholder:I

    invoke-virtual {p2, p3}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Space;

    const-string p3, "ctaPlaceholder"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/Space;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 2506
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p3

    const/4 p4, 0x0

    rsub-int/lit8 p3, p3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    const/16 v0, 0xfa

    invoke-virtual {p1, p3, p2, v0, p4}, Lo/prepareFromUri;->onMessageChannelReady(IIIZ)V

    return-void
.end method
