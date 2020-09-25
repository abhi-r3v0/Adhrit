.class final Lo/stopInterceptRequestLayout$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
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
        "Lo/fling;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "headerUiModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemHeaderUiModel;",
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
.field private synthetic onMessageChannelReady:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$8;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 36
    check-cast p1, Lo/fling;

    .line 1306
    iget-object v0, p0, Lo/stopInterceptRequestLayout$8;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 2036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->getInterfaceDescriptor:Landroid/widget/TextView;

    .line 3029
    iget-object v1, p1, Lo/fling;->extraCallback:Ljava/lang/CharSequence;

    .line 1306
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v0, p0, Lo/stopInterceptRequestLayout$8;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 4030
    iget-object p1, p1, Lo/fling;->onPostMessage:Ljava/lang/CharSequence;

    .line 1307
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
