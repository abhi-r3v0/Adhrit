.class public final Lo/ActiveLoanData;
.super Ljava/lang/Object;


# direct methods
.method public static onPostMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/LoanStatusResponse$CaptchaInput;
    .locals 1

    new-instance v0, Lo/CarouselCardViewHolder$layoutManager$1;

    invoke-direct {v0, p0, p1, p2}, Lo/CarouselCardViewHolder$layoutManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x1388

    invoke-virtual {v0, p0}, Lo/CarouselCardViewHolder$layoutManager$1;->ICustomTabsCallback(I)Lo/LoanStatusResponse$CaptchaInput;

    move-result-object p0

    return-object p0
.end method
