.class public final Lo/setAppSearchData$extraCallback;
.super Landroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setAppSearchData;->extraCallback(J)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/cred/pay/ui/utils/PaymentLoadingUtil$setTimer$1",
        "Landroid/os/CountDownTimer;",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
        "",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setAppSearchData;


# direct methods
.method constructor <init>(Lo/setAppSearchData;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lo/setAppSearchData$extraCallback;->extraCallback:Lo/setAppSearchData;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 86
    iget-object v0, p0, Lo/setAppSearchData$extraCallback;->extraCallback:Lo/setAppSearchData;

    .line 2017
    iget-object v0, v0, Lo/setAppSearchData;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 86
    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 3017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lo/setAppSearchData$extraCallback;->extraCallback:Lo/setAppSearchData;

    .line 4017
    iget-object v0, v0, Lo/setAppSearchData;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 87
    iget-object v1, p0, Lo/setAppSearchData$extraCallback;->extraCallback:Lo/setAppSearchData;

    .line 5017
    iget-object v1, v1, Lo/setAppSearchData;->onNavigationEvent:Lo/setAppSearchData$onMessageChannelReady;

    if-eqz v1, :cond_0

    .line 5103
    iget-object v1, v1, Lo/setAppSearchData$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 87
    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 3

    const-wide/32 v0, 0xea60

    .line 78
    div-long v0, p1, v0

    invoke-static {v0, v1}, Lo/setAppSearchData;->onNavigationEvent(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 79
    div-long/2addr p1, v1

    const-wide/16 v1, 0x3c

    rem-long/2addr p1, v1

    invoke-static {p1, p2}, Lo/setAppSearchData;->onNavigationEvent(J)Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object p2, p0, Lo/setAppSearchData$extraCallback;->extraCallback:Lo/setAppSearchData;

    .line 1017
    iget-object p2, p2, Lo/setAppSearchData;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
