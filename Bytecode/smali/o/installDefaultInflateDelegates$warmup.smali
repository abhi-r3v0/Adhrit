.class final Lo/installDefaultInflateDelegates$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/installDefaultInflateDelegates;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lclub/cred/credcurrency/CredPointCountModel;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lclub/cred/credcurrency/CredPointCountModel;",
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
.field private synthetic extraCallback:Lo/installDefaultInflateDelegates;


# direct methods
.method constructor <init>(Lo/installDefaultInflateDelegates;)V
    .locals 0

    iput-object p1, p0, Lo/installDefaultInflateDelegates$warmup;->extraCallback:Lo/installDefaultInflateDelegates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    .line 1100
    iget-object p1, p0, Lo/installDefaultInflateDelegates$warmup;->extraCallback:Lo/installDefaultInflateDelegates;

    invoke-static {p1}, Lo/installDefaultInflateDelegates;->onPostMessage(Lo/installDefaultInflateDelegates;)V

    .line 1101
    iget-object p1, p0, Lo/installDefaultInflateDelegates$warmup;->extraCallback:Lo/installDefaultInflateDelegates;

    invoke-static {p1}, Lo/installDefaultInflateDelegates;->ICustomTabsCallback(Lo/installDefaultInflateDelegates;)Lcom/cred/pay/repository/models/checkout/OfferSlab;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1102
    iget-object p1, p0, Lo/installDefaultInflateDelegates$warmup;->extraCallback:Lo/installDefaultInflateDelegates;

    invoke-static {p1}, Lo/installDefaultInflateDelegates;->onMessageChannelReady(Lo/installDefaultInflateDelegates;)V

    :cond_0
    return-void
.end method
