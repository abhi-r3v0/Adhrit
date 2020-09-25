.class final Lo/getSpanGroupIndex$IPostMessageService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/addWrite<",
        "+",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
        "+",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a*\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004 \u0005*\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lkotlin/Pair;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$IPostMessageService;->onPostMessage:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 79
    check-cast p1, Lo/addWrite;

    if-eqz p1, :cond_0

    .line 2028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1272
    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Lo/getSpanGroupIndex$IPostMessageService;->onPostMessage:Lo/getSpanGroupIndex;

    .line 3028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1273
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    invoke-static {v0, p1}, Lo/getSpanGroupIndex;->onNavigationEvent(Lo/getSpanGroupIndex;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;)V

    return-void

    .line 1275
    :cond_1
    iget-object v0, p0, Lo/getSpanGroupIndex$IPostMessageService;->onPostMessage:Lo/getSpanGroupIndex;

    .line 4027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1275
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    invoke-static {v0, p1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;)V

    return-void
.end method
